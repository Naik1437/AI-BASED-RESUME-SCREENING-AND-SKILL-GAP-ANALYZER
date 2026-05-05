from fastapi import FastAPI
from pydantic import BaseModel
import spacy
from sentence_transformers import SentenceTransformer, util

app = FastAPI()

# load trained model
skill_model = spacy.load("skill_model")

# BERT similarity model
bert_model = SentenceTransformer("all-MiniLM-L6-v2")


class ResumeRequest(BaseModel):
    resume: str
    job: str


# MASTER SKILL LIST
TECH_SKILLS = [
    "java",
    "python",
    "sql",
    "mysql",
    "postgresql",
    "spring",
    "spring boot",
    "hibernate",
    "aws",
    "docker",
    "kubernetes",
    "react",
    "node",
    "nodejs",
    "javascript",
    "html",
    "css",
    "django",
    "flask",
    "tensorflow",
    "pytorch",
    "mongodb",
    "git",
    "rest api",
    "oop",
    "multithreading",
    "dbms"
]


def extract_skills(text: str):

    text = text.lower()

    skills = []

    # dictionary detection
    for skill in TECH_SKILLS:
        if skill in text:
            skills.append(skill)

    # AI NER detection
    doc = skill_model(text)

    for ent in doc.ents:
        value = ent.text.lower().strip()

        if any(char.isdigit() for char in value):
            continue

        if "%" in value:
            continue

        if value in TECH_SKILLS:
            skills.append(value)

    return list(set(skills))


def extract_project_skills(text: str):

    project_keywords = [
        "developed",
        "built",
        "implemented",
        "created",
        "designed"
    ]

    project_skills = []

    sentences = text.split(".")

    for sentence in sentences:

        for keyword in project_keywords:

            if keyword in sentence.lower():

                skills = extract_skills(text)

                project_skills.extend(skills)

    return list(set(project_skills))


@app.post("/analyze")
def analyze(data: ResumeRequest):

    resume = data.resume
    job = data.job

    # Extract skills
    resume_skills = extract_skills(resume)
    job_skills = extract_skills(job)

    # Matching
    matched_skills = list(set(resume_skills) & set(job_skills))
    missing_skills = list(set(job_skills) - set(resume_skills))

    # BERT similarity
    emb1 = bert_model.encode(resume)
    emb2 = bert_model.encode(job)

    similarity = util.cos_sim(emb1, emb2).item()

    skill_match = int(similarity * 100)

    return {
        "skills": resume_skills,
        "matched_skills": matched_skills,
        "missing_skills": missing_skills,
        "similarity": similarity,
        "skill_match": skill_match
    }