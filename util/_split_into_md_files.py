import re
import json
import os

pages = {}


def make_file(name, text):
    name = "documentation/" + name
    name = name.replace("?", "")

    path = "/".join(name.split("/")[:-1])
    if not os.path.exists(path):
        os.makedirs(path)

    with open(name + ".md", "w", encoding="utf-8") as file:
        file.write(text)


def format_name(text):
    text = text.split("\n")[0]
    text = text.replace(" ", "_")
    text = text.replace(".", "_")
    text = text.replace("__", "_")
    return text


with open("temp.md", encoding="utf-8") as f:
    file = "".join(f.readlines())
    chapters = file.split("\n# ")

    i = 0
    for chapter in chapters:
        chapter_name = format_name(chapter)
        make_file(str(i) + "_" + chapter_name, "# " + chapter)
        i += 1

with open("test.json", "w") as output:
    json.dump(pages, output)

