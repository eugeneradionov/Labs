# -*- coding: utf-8 -*-
import os, sys, re
pattern = re.compile(r'W.I.N.N.E.R')


#pattern = r'W.I.N.N.E.R'

def walk(arg, dir, files):
    # print dir
    for file in files:
        name = os.path.join(dir, file)
        if os.path.isfile(name):
            # print name
            data = open(name, 'rb').read()
            if pattern.findall(data):
                print name
        #else:
        #    raise

os.path.walk('/home/eugene/Projects/FLP/WINNER',walk,[])
