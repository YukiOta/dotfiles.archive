python3 << EOF
import os
import sys

path = os.path.expanduser("~/.pyenv/versions/anaconda3-4.2.0/envs/tensorflow/lib/python3.5/site-packages")
path2 = os.path.expanduser("~/.pyenv/versions/anaconda2-4.2.0/envs/chainer/lib/python2.7/site-packages")
if not path in sys.path:
	sys.path.append(path)
if not path2 in sys.path:
	sys.path.append(path2)
EOF
