filename = raw_input('Please enter file name: ')
try:
    f = open(filename, 'r')
    a = f.read()
    f.close()
except IOError:
    print 'Sorry, but IOError.'
except:
    print 'Oops :('
a = a.strip().split(' ')
print a

x = []
for n in a:
    x.append(int(n))
y = x[:]
y.sort()

i = 0
s = ''
m = []
if x == y:
    while i < len(a) - 1:
        m.append(a[i])
        if int(a[i]) - int(a[i+1]) != -1:
            if len(m) != 1:
                s = s + m[0] + '-' + m[-1] + ', '
            elif a[i] == a[i+1]:
                pass
            else:
                s = s + m[0] + ', '
            m = []
        i = i + 1
    else:
        if i == len(a) - 1 and m:
            if int(m[-1]) - int(a[i]) == -1:
                   s = s + m[0] + '-' + a[i] + '.'
                
        elif not m:
            s = s + a[i] + '.'
        else:
            print 'Oops :('
else:
    s = '-'
        
print s
output = filename.split('.')[0] + '~.' + filename.split('.')[1]
f = open(output, 'w')
f.write(s)
f.close()
