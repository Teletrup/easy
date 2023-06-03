const fs = require('fs');

out = ''

let a = BigInt(0);
let b = BigInt(1);
out += a + '\n';
out += b + '\n';
for (let i=2; i<100; i++) {
  let c = a + b;
  [a, b] = [b, c];
  out += c + '\n';
}
fs.writeFileSync('out.txt', out);
