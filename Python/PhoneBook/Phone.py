# -*- coding: utf-8 -*-
"""Phone book
Created by Eugene Radionov
26 March 2015"""
import json, Phone_module

if __name__ == "__main__":
    try:
        f = open("Phonebook.txt","r")
        phonebook = json.load(f)
        f.close()
    except IOError:
        print 'I\O Error'
    except:
        phonebook = {}

    while True:
        print"""
......
a - add phone
b - show names
c - clear phone book
g - show phone
i - import from file
r - remove phone
s - save phone book into the file
v - show phonebook
x - exit
......
"""
        ans = raw_input('Your Choise? ')
        if ans == 'v':
            Phone_module.view(phonebook)
        elif ans == 'a':
            Phone_module.add(phonebook)
        elif ans == 'r':
            Phone_module.remove(phonebook)
        elif ans == 'x':
            break
        elif ans == 'c':
            if raw_input('Are you shure? [Y/N] ').lower() in ('y'):
                phonebook.Phone_module.clear()
                print 'Job done!'
        elif ans == 'g':
            Phone_module.show(phonebook)
        elif ans == 's':
            Phone_module.save(phonebook)
        elif ans == 'b':
           Phone_module. bshow(phonebook)
        elif ans == 'i':
            Phone_module.import_file(phonebook)
        raw_input('\nPress <Enter> for continue')
