import os
import yaml

# Global Variables

build_dir = "_build"


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

                name = ""
                with open(os.path.join(root,file)) as fp:
                    data = yaml.safe_load(fp)

                if 'book' in data:
                    #print(data['book']['title'])
                    name = data['book']['title']
                elif 'website' in data:
                    #print(data['website']['title'])
                    name = data['website']['title']

                result.update({name: root})

    return result


##############################
##############################


docDict = getProjectDict()

print(docDict)