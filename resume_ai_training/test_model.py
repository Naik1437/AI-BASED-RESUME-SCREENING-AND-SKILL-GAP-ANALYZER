import spacy

nlp = spacy.load("skill_model")

text = "Developed REST APIs using Java Spring Boot deployed on AWS"

doc = nlp(text)

print("Detected Skills:")

for ent in doc.ents:
    print(ent.text, ent.label_)