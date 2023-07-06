from git import Repo
import os


dirfile = os.path.abspath('')
repo = Repo(dirfile)
g = repo.git

while True:
    try:
        g.pull()
        g.add("--all")
        g.commit("-m auto update")
        g.push()
    except Exception as e:
        print(e)
    else:
        print("Successful pull!")
        break