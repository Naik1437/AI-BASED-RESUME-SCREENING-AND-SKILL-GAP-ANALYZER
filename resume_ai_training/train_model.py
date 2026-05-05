import spacy
import json
import random
from spacy.training.example import Example

nlp = spacy.load("en_core_web_sm")

if "ner" not in nlp.pipe_names:
    ner = nlp.add_pipe("ner")
else:
    ner = nlp.get_pipe("ner")

ner.add_label("SKILL")

with open("training_data.json") as f:
    data = json.load(f)

TRAIN_DATA = []

for item in data:
    text = item["text"]
    skills = item["skills"]

    entities = []

    for skill in skills:
        start = text.find(skill)

        # ── FIX 1: skip if skill not found in text ──────────────────────────
        if start == -1:
            continue

        end = start + len(skill)

        # ── FIX 2: check for overlapping entities before adding ─────────────
        # This is what was causing your [E103] error
        overlapping = False
        for existing_start, existing_end, _ in entities:
            if start < existing_end and end > existing_start:
                overlapping = True
                break

        if not overlapping:
            entities.append((start, end, "SKILL"))

    TRAIN_DATA.append((text, {"entities": entities}))

print("Training data prepared:", len(TRAIN_DATA), "examples")

optimizer = nlp.resume_training()

for i in range(20):
    random.shuffle(TRAIN_DATA)
    losses = {}

    for text, annotations in TRAIN_DATA:
        doc = nlp.make_doc(text)

        # ── FIX 3: wrap in try/except so one bad example doesn't crash all ──
        try:
            example = Example.from_dict(doc, annotations)
            nlp.update([example], losses=losses)
        except Exception as e:
            continue   # skip that one bad example, keep training

    print("Iteration", i, "Loss", losses)

nlp.to_disk("skill_model")
print("Training completed successfully")