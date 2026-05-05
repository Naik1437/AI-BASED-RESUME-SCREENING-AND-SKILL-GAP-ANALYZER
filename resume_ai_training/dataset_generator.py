import random
import json

# ── SKILLS LIST (same as your original) ──────────────────────────────────────

skills = [
    "Java", "Python", "Spring Boot", "Django", "Flask", "React",
    "Angular", "Node.js", "SQL", "MySQL", "MongoDB", "Docker",
    "Kubernetes", "AWS", "REST API", "Machine Learning",
    "TensorFlow", "PyTorch", "Git", "Linux",
    "JavaScript", "TypeScript", "PostgreSQL", "Redis", "Kafka",
    "GraphQL", "Jenkins", "GitHub", "HTML", "CSS"
]

# ── EXPANDED TEMPLATES (30+ patterns, was only 6) ────────────────────────────

templates = [

    # --- your original 6 (kept exactly) ---
    "Developed backend systems using {} and {}",
    "Built scalable microservices using {} deployed on {}",
    "Implemented APIs using {} with database {}",
    "Created machine learning models using {} and {}",
    "Developed web applications using {} framework with {}",
    "Designed cloud applications using {} hosted on {}",

    # --- skills section style (how people write in Skills section) ---
    "Proficient in {} and {}",
    "Strong knowledge of {} and {}",
    "Skilled in {} and {}",
    "Familiar with {} and {}",
    "Expertise in {} and {}",
    "Hands-on experience with {} and {}",
    "Working knowledge of {} and {}",
    "Certified in {} with expertise in {}",
    "{} and {} are my core technical skills",
    "Technical skills include {} and {}",
    "Core competencies: {} and {}",

    # --- experience section style (how people write in Experience section) ---
    "Worked extensively with {} and {} in production environment",
    "Used {} for developing {} based applications",
    "Led a team working on {} and {} projects",
    "Responsible for building {} and {} modules",
    "Maintained and upgraded {} systems using {}",
    "Collaborated with team to deliver {} and {} solutions",
    "Contributed to {} development using {}",
    "Optimized {} performance using {}",
    "Integrated {} with {} for seamless workflow",
    "Migrated legacy systems to {} and {}",

    # --- project section style (how people write in Projects section) ---
    "Project built using {} and {} technologies",
    "Developed a project using {} as backend and {} as database",
    "Final year project implemented with {} and {}",
    "Academic project using {} framework and {}",
    "Personal project demonstrating {} and {} skills",
    "Open source contribution to {} and {} repositories",

    # --- single skill highlight patterns ---
    "{} developer with experience in {}",
    "Strong {} background with {} knowledge",
    "{} expert with hands-on {} experience",
    "Experienced in {} with additional exposure to {}",
]

# ── GENERATE 3000 EXAMPLES (was 1000) ────────────────────────────────────────

dataset = []

for i in range(3000):
    skill1, skill2 = random.sample(skills, 2)
    sentence = random.choice(templates).format(skill1, skill2)
    dataset.append({
        "text": sentence,
        "skills": [skill1, skill2]
    })

with open("training_data.json", "w") as f:
    json.dump(dataset, f)

print("Dataset generated successfully!")
print("Total examples:", len(dataset))
print("Total templates used:", len(templates))
print("Sample sentences generated:")
print()
for i in range(5):
    print(" ", dataset[i]["text"])
    print("  Skills:", dataset[i]["skills"])
    print()