import os
import re
rootdir = './documentation/'

dirs_dict = dict()


def same_name(file, root):
    filename = re.sub("^[0-9]+_", "", file.replace(".md", ""))
    rootname = re.sub("^[0-9]+_", "", os.path.basename(root))
    print(filename, rootname)
    return filename == rootname


def do_display(files, root):
    for file in files:
        if same_name(file, root):
            return False
    return True


def list_files(startpath):
    output = ""
    for root, dirs, files in os.walk(startpath):
        level = root.replace(startpath, '').count(os.sep)
        indent = ' ' * 4 * (level)
        if root not in [rootdir]:
            if do_display(files, root):
                title = re.sub("^[0-9]+_", "", os.path.basename(root)) \
                    .capitalize() \
                    .replace("-", " ") \
                    .replace("_", " ")
                output += '{}* {}\n'.format(indent, title)
        for f in files:
            if f.endswith(".md") and f not in ["_sidebar.md"]:
                file_level = os.path.join(root,f).replace(startpath, '').count(os.sep)
                if same_name(f, root):
                    file_level -= 1
                subindent = ' ' * 4 * (file_level)
                title = re.sub("^[0-9]+_", "", f)\
                        .capitalize()\
                        .replace(".md", "") \
                        .replace("-", " ") \
                        .replace("_", " ")
                filepath = os.path.join(root, f).replace("\\", "/").replace("./", "")
                output += '{}* [{}]({})\n'.format(subindent, title, filepath)
    return output


with open("sidebar.md", "w") as _sidebar_md:
    _sidebar_md.write(list_files(rootdir))

