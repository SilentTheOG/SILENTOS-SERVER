import sys
import os
import requests
from datetime import datetime
from subprocess import run
argv = sys.argv
argc = len(argv)

name = argv[0]

if argc < 2:
    print(name, "(update | compare)")
    exit(1)

sub = argv[1]
req = requests.get('https://api.github.com/repos/SilentTheOG/SILENTOS-SERVER/commits/main')
if not req.ok:
    print(req.status_code, req.reason)
    exit(1)
req = req.json()
head_i = open('.git/HEAD', 'r')
where_to_go = head_i.read().split(' ')[1].strip()
head_i.close()
head_f = open('.git/' + where_to_go, 'r')
head = head_f.read().strip()
head_f.close()
if sub == "compare":
    if req['sha'] != head:
        print("An update is out!")
        exit(1)
    else:
        print("Up to date.")
        exit(0)
elif sub == "update":
    if req['sha'] == head:
        print("Already up to date.")
        exit(0)
    run(['git', 'pull', 'origin', 'main'])
    os.rename('SERVER.TMP', 'silent-os')
    origMsg = req['commit']['message']
    toks = origMsg.split('\n\n')
    print('\x1b[2J\x1b[H',end='')
    print(f"\x1b[1mChanges: {toks[0]}\x1b[0m")
    print(toks[1])
else:
    print(name, "(update | compare)")
    exit(1)
