# FLUX:: Immersive Product Documentation

This repository host the documentation of all FLUX:: products. It uses quarto to generate the doc.flux.audio html pages as well as pdf documents.

## Repository structure

`en_US` is where is stored the sources for the documentation. Each product has a dedicated folder which corresponds to a quarto project. See : [https://quarto.org/docs/projects/quarto-projects.html](https://quarto.org/docs/projects/quarto-projects.html). This folder also store at its root the **common files**:

+ `_common.yaml` dictate the two main rendering format (html and pdf)
+ `credits_*.qmd` are credit mentions that are common to several products. They are included in the `Credits.qmd`files of each project using the following syntax : {{< include myfile.qmd >}} . See [https://quarto.org/docs/authoring/includes.html](https://quarto.org/docs/authoring/includes.html)
+ `fluxtemplate.tex` is the common latex style sheet.

Inside `en_US`, the `home` folder/project is a special project to handle the home page of the documentation (doc.flux.audio).

`scripts` is where some utility python scripts are stored.

+ `img-checker.py` allows checking the image links from a file or a whole quarto project. As latex rendering for pdf crash if an image has a dead link, it is a good practice to use this script before rendering (as latex rendering is very time consuming). Simply invoke it with the following command: `python3 img-checker.py file_or_folder_to_test`

## Local render

The documentation can be rendered locally per project by using the command `quarto render my_project` where `my_project` is the folder representing the quarto project. The files are then generated in the `.build/my_project` folder at the root of the directory. The folder `.build` is excluded from git.

The rendering of all the documentation can be done by using the `buildAll.bash` script at the root of the repository.

## Online rendering

The generation of all the web pages and pdf files are handled by a GitHub job. The process happens on a push on the master branch. Beware that the process is very long, so be sure that the local render work first before pushing to master. **Obviously, branches should be used for new content or content improving.**

## Rendering failure

If one rendering has failed (for a missing image for example), the generate files in `.build` as well as the LaTeX intermediary files store in the **project folder** (`en_US/my_project`) should be deleted before attempting a new render.