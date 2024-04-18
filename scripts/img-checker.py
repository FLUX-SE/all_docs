import markdown as md
import os
import sys
from bs4 import BeautifulSoup
import urllib3

urllib3.disable_warnings()
http = urllib3.PoolManager(cert_reqs='CERT_NONE', ca_certs=None)
extensions = ['.md','.qmd']

def CheckUrl(url,file_path):
    error = False
    if os.path.splitext(url)[1] == '':
        url = url+'.png' # Default case for markdown links with no extensions (supported by quarto)
    if url.startswith('http'):
        try:
            response = http.request("HEAD", url)
            if response.status != 200:
                error = True
        except Exception as e:
            error = True
    elif os.path.isfile(url):
        try:
            with open(os.join(file_path,url), 'r'):
                pass
        except Exception as e:
            error = True
    else:
        error = True
    return error

def ProcessFile(file):

    with open(file, 'r') as f:
        md_content = f.read()

    html_content = md.markdown(md_content)
    soup = BeautifulSoup(html_content, 'html.parser')

    # Find all links
    imgs = [img.get('src') for img in soup.find_all('img')]

    urls = imgs

    for url in urls:
        if CheckUrl(url,os.path.dirname(file)):
            print("Invalid link from file: "+file+"\n"
                +url)

def GetFiles(arg):
    if os.path.isfile(arg):
        return [arg]
    elif os.path.isdir(arg):
        output = []
        for root, dirs, files in os.walk(arg):
            for file in files:
                if file.endswith(tuple(extensions)):
                    output.append(os.path.join(root,file))
        return output

def main():
    arg = sys.argv[1]
    files = GetFiles(arg)
    for file in files:
        ProcessFile(file)

if __name__ == '__main__':
    main()