import json

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
    m = vocabulary.keys()
    m.sort()
    for k in m:
        print k
    """i = 0
    while i <= len(vocabulary.keys())-1:
        print m[i]
        i = i + 1"""

def show(vocabulary):
    """Finding and showing the contact, you entered"""
    s = raw_input('Please enter a name: ')
    if vocabulary.has_key(s):
        print vocabulary[s]
    else:
        print 'There is no name in Phone Book'
        if raw_input('Do You want to add it? [Y/N] ').lower() in ('y'):
            vocabulary[s] = raw_input('Please enter a phone: ')

def save(vocabulary):
    """Saving Phone Book into the file"""
    try:
        f = open("Phonebook.txt","w")
        json.dump(vocabulary,f)
        f.close()
    except IOError:
        print 'I\O Error'
    print 'Job done!'

def view(vocabulary):
    """Showing Name and Phone"""
    if vocabulary:   
        for k in vocabulary.keys():
            print "%s : %s" % (k, vocabulary[k])
    else:
        print 'There are no phones in Your Phone book'

def import_file(vocabulary):
    """Iport from file"""
    import os
    a = raw_input('Enter a file name: ')
    if os.path.isfile(a):
        try:
            f = open(a,'r')
            x = json.load(f)
            vocabulary.update(x)
            f.close()
        except IOError:
            print 'I\O Error'
        except:
            print 'Oops, we can`t import from this file :('
    else:
        print 'There is no file with this name'

def clear(vocabulary):
    """Cleaning the Phone Book """
    return {}
