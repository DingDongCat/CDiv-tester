import subprocess

with open("debug.log", "a+") as debug_file:
    cmd = "python test.py"
    b = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE).stderr
    debug_file.write(b.decode("gbk"))