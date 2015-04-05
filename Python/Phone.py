"""Phone book
Created by Eugene Radionov
26 March 2015"""
import json
#phonebook = {'Eugene':380666291829}

def add(vocabulary):
    """Adding a contact to Phone Book"""
    k = raw_input('Please enter a name: ')
    p = raw_input('Please enter a phone: ')
    vocabulary[k] = p

def remove(vocabulary):
    """Removing a contact from Phone Book"""
    r = raw_input('Please enter a name: ')
    if vocabulary.has_key(r):
        del vocabulary[r]
        print 'Job done!'
    else:
        print 'There is no name in phone book'

def bshow(vocabulary):
    """Shwowing all contacts from Phone Book alphabetically"""
    m = []
    for i in vocabulary.keys():
        m.append(str(i))
    m.sort()
    i = 0
    while i <= len(vocabulary.keys())-1:
        print m[i]
        i = i+1

def show(vocabulary):
    """Finding and showing the contact, you entered"""
    s = raw_input('Please enter a name: ')
    if vocabulary.has_key(s):
        print vocabulary[s]
    else:
        print 'There is no name in Phone Book'
        if raw_input('Do You want to add it? [Y/N] ').lower() in ('y'):
            vocabulary[s] = raw_input('Please enter a phone: ')
    #else:
    #   print 'There is no name in phone book'
    raw_input('Press <Enter> for continue')    

def save(vocabulary):
    """Saving Phone Book into the file"""
    f = open("Phonebook.txt","w")
    json.dump(vocabulary,f)
    f.close()
    print 'Job done!'

def view(vocabulary):
    """Showing Name and Phone"""
    if vocabulary:
        i = 0
        while i <= len(vocabulary.keys())-1:
            print vocabulary.keys()[i],':',vocabulary.values()[i]
            i = i+1
    else:
        print "There are no phones in Your Phone book"

def import_file(vocabulary):
    
    
    a = raw_input('Enter a file name: ')
    #if f == open(raw_input('Enter a file name: '),'r'):
    if a:
        f = open(a,'r')
        x = json.load(f)
        vocabulary.update(x)
        f.close()
    else:
        print 'There is no file with this name'
    

f = open("Phonebook.txt","r")
phonebook = json.load(f)
f.close()

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
        view(phonebook)
        raw_input('Press <Enter> for continue')
    elif ans == 'a':
        add(phonebook)
        raw_input('Press <Enter> for continue')
    elif ans == 'r':
        remove(phonebook)
        raw_input('Press <Enter> for continue')
    elif ans == 'x':
        break
    elif ans == 'c':
        if raw_input('Are you shure? [Y/N] ').lower() in ('y'):
            phonebook = {}
    elif ans == 'g':
        show(phonebook)
    elif ans == 's':
        save(phonebook)
        raw_input('Press <Enter> for continue')
    elif ans == 'b':
        bshow(phonebook)
        raw_input('Press <Enter> for continue')
    elif ans == 'i':
        import_file(phonebook)
        raw_input('Press <Enter> for continue')
