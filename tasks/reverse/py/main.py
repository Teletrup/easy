with open('../in.txt') as fi:
  with open('out.txt', 'w') as fo:
    fo.write(fi.read()[::-1])
