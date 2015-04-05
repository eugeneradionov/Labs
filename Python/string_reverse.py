s = 'Hello World!'
q,a = [], ''
for  i in s:
    q.append(i)
while len(q):
    a = a + q.pop()
  
print s
print q
print a

