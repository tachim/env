#!/usr/bin/env python

import os

HOME = os.environ['HOME']
assert os.getcwd() == os.path.join(HOME, 'w', 'env')

for f in os.listdir('.'):
    if f == '.git': continue
    if not f.startswith('.'): continue
    if os.path.exists(os.path.join(HOME, f)):
        try:
            os.remove(os.path.join(HOME, f))
        except PermissionError as e:
            print('Failed to remove', f)
    print('linking', f)
    os.system('ln -s ~/w/env/%s ~/%s' % (f, f))

with open(os.path.join(HOME, '.bashrc'), 'a') as f:
    print('source ~/.bashrc_env', file=f)

with open(os.path.join(HOME, '.bash_profile'), 'w') as f:
    print('source ~/.bashrc', file=f)
