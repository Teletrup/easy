const fs = require('fs');

let out = ''
for (let i=1; i<=100; i++) {
  let s = '';
  if (i % 3 == 0) s += 'Fizz';
  if (i % 5 == 0) s += 'Buzz';
  if (s.length == 0) s += i;
  out += s + '\n';
}
fs.writeFileSync('out.txt', out);
