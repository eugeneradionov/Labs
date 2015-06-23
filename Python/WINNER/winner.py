# -*- coding: utf-8 -*-
"""Searching all files, wich include W.I.N.N.E.R"""
import os, sys, re
pattern = re.compile(r'W.I.N.N.E.R')


#pattern = r'W.I.N.N.E.R'

def walk(arg, dir, files):
    for file in files:
        name = os.path.join(dir, file)
        if os.path.isfile(name):
            data = open(name, 'rb').read()
            if pattern.findall(data):
                print name

os.path.walk('/home/eugene/Projects/FLP/WINNER',walk,[])
