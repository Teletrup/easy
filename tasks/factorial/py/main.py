with open('out.txt', 'w') as f: 
  for i in range(0, 10+1):
    s = 1
    for j in range(2, i):
      s *= j
    f.write(str(s) + '\n')

