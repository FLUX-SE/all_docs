import yaml
import os


# Get list of doc folder

def getDocFolderList():
    result = []
    i = 0
    for elem in os.listdir("."):
        if os.path.isdir(elem) and elem[0] != "." and elem != "_build":
            result.append(elem)
            i += 1
    return result


##############################
##############################

docList = getDocFolderList()

print(docList)