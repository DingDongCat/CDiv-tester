import os
os.system('''
pip install gitpython\n
sshpass -p raspi_cg@2021 scp -P 2000 -r /home/coder/CDiv-tester root@127.0.0.1:~\n
sshpass -p raspi_cg@2021 ssh root@127.0.0.1 -p 2000 "python /root/CDiv-tester/backend_tester_arm/pi_run.py"\n
sshpass -p raspi_cg@2021 scp -P 2000 -r root@127.0.0.1:/root/CDiv-tester /home/coder\n
sshpass -p raspi_cg@2021 ssh root@127.0.0.1 -p 2000 "rm -rf /root/CDiv-tester"\n
python3 auto_git.py
''')