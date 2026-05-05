import spacy

# load trained model
nlp = spacy.load("skill_model")

print("Model loaded successfully\n")

while True:

    text = input("Enter resume sentence: ")

    doc = nlp(text)

    print("\nDetected Skills:")

    for ent in doc.ents:
        if ent.label_ == "SKILL":
            print("-", ent.text)

    print("\n-------------------\n")