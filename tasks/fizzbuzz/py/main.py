with open('out.txt', 'w') as f: 
  for i in range(1, 101):
    s = ''
    if (i % 3 == 0):
      s += 'Fizz'
    if (i % 5 == 0):
      s += 'Buzz'
    if len(s) == 0:
      s += str(i)
    f.write(s + '\n')
