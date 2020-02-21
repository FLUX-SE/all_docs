import os


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


def create_big_tree():
    """
    Useful for big docs
    Make sidebar with almost all titles (#, ## and ###)
    """
    with open("temp.md", encoding="utf-8") as f:
        file = "".join(f.readlines())
        chapters = file.split("\n# ")

        for chapter in chapters:
            chapter_name = format_name(chapter)
            sections = chapter.split("\n## ")

            for section in sections:
                section_name = format_name(section)
                subsections = section.split("\n### ")

                for subsection in subsections:
                    subsection_name = format_name(subsection)

                    if len(subsections) > 1:
                        make_file(chapter_name + "/" + section_name + "/" + subsection_name, "# " + subsection)
                    elif len(sections) > 1:
                        make_file(chapter_name + "/" + section_name, "# " + subsection)
                    elif len(chapters) > 1:
                        make_file(chapter_name, "# " + subsection)


def create_small_tree():
    """
    Useful for small plugins docs
    Make sidebar with only main titles (#)
    """
    with open("temp.md", encoding="utf-8") as f:
        file = "".join(f.readlines())
        chapters = file.split("\n# ")
        i = 0

        for chapter in chapters:
            chapter_name = format_name(chapter)
            if len(chapters) > 1:
                make_file(str(i) + "_" + chapter_name, "# " + chapter)
                i += 1


create_small_tree()
