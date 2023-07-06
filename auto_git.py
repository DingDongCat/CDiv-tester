from git import Repo
import os

# pip install gitpython
dirfile = os.path.abspath('')
repo = Repo(dirfile)
g = repo.git

while True:
    try:
        g.add("--all")
        g.commit("-m auto update")
    except Exception as e:
        print(e)
        break
    else:
        print("Successful commit!")
        break

while True:
    try:
        g.pull()
    except Exception as e:
        print(e)
    else:
        print("Successful pull!")
        break
<<<<<<< HEAD

=======
    
>>>>>>> 1de21ec0383e734a32c6133ab09d41fd8901acec
while True:
    try:
        g.push()
    except Exception as e:
        print(e)
    else:
        print("Successful push!")
        break
