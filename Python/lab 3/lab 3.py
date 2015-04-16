f = open('01.txt', 'r')
a = f.read()
f.close()
a = a.strip().split(' ')
#a = ['1', '2', '3', '4', '7', '7', '10', '11', '12', '15', '21', '22', '25']
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
f = open('01~.txt', 'w')
f.write(s)
f.close()
