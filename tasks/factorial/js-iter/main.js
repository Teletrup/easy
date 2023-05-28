const fs = require('fs');

out = '';
for (let i=0; i<=10; i++) {
  let s = 1;
  for (let j=2; j<=i; j++) s *= j;
  out += s + '\n';
}
fs.writeFileSync('out.txt', out);
