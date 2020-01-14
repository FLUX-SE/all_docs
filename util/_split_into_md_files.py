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

    for chapter in chapters:
        chapter_name = format_name(chapter)
        pages[chapter_name] = {}
        sections = chapter.split("\n## ")

        for section in sections:
            section_name = format_name(section)
            pages[chapter_name][section_name] = {}
            subsections = section.split("\n### ")

            for subsection in subsections:
                subsection_name = format_name(subsection)

                if len(subsections) > 1:
                    pages[chapter_name][section_name][subsection_name] = "# " + subsection
                    make_file(chapter_name + "/" + section_name + "/" + subsection_name, "# " + subsection)
                elif len(sections) > 1:
                    pages[chapter_name][section_name] = "# " + subsection
                    make_file(chapter_name + "/" + section_name, "# " + subsection)
                elif len(chapters) > 1:
                    pages[chapter_name] = "# " + subsection
                    make_file(chapter_name, "# " + subsection)
                else:
                    pages = "# " + subsection

with open("test.json", "w") as output:
    json.dump(pages, output)

