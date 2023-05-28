
with open('out.txt', 'w') as f:
  a = 0
  b = 1
  f.write(f'{a}\n')
  f.write(f'{b}\n')
  for i in range(2, 100):
    c = a + b
    a, b = b, c
    f.write(f'{c}\n')
