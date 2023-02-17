import os
import yaml

# Global Variables

build_dir = "_build"
mainYaml = "./home/_quarto.yml"

# Get list of doc folder

def getFolderDepth(path):
    steps = path.split(os.sep)
    return len(steps)-1 # -1 to exclude ""./""

def generateBuildPath(projectPath, buildPath):

    n = getFolderDepth(projectPath)
    i = 0

    while i < n:
        buildPath = '../' + buildPath
        i += 1

    return buildPath


def getProjectDict():

# Return a dictionnary containing the name and the folder path of the quarto projects

    result = {}

    for root, dirs, files in os.walk('.'):

        for file in files:
            if file == "_quarto.yml":

                with open(os.path.join(root,file)) as fp:
                    data = yaml.safe_load(fp)

                docSection = None
                docSubsection = None

                if 'docSection' in data: docSection = data['docSection']
                if 'docSubsection' in data : docSubsection = data['docSubsection']
                if 'book' in data:
                    name = data['book']['title']
                elif 'website' in data:
                    name = data['website']['title']

                result.update({name: (root,docSection,docSubsection)})

    return result


##############################
##############################

prjDict = getProjectDict()

#print(prjDict)

with open(mainYaml) as fp:
    data = yaml.safe_load(fp)

dataSidebar = data['website']['sidebar']
dataSidebar.pop('contents', None)

prjList = []
section = []

for elem in prjDict:
    doesExist = False
    if len(section) == 0:
        section.append(prjDict[elem][1])
        dataSidebar.update({'content': {'section': prjDict[elem][1]}})
    else:
        for elem2 in section:
            if prjDict[elem][1] == elem2:
                doesExist = True
                break
        if doesExist == False:
            section.append(prjDict[elem][1])
            dataSidebar['content'].update({'section': prjDict[elem][1]})


print(dataSidebar)

for elem in prjDict:
    prjList.append({'href:': prjDict[elem][0]+'/index.qmd', 'text': elem})
    #print(elem)
    #print(prjDict[elem])

#dataSidebar.update({'content': prjList})
#print(data['website']['sidebar'])
