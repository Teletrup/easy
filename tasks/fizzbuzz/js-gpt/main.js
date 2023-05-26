const fs = require('fs');

// FizzBuzz function
function fizzBuzz(n) {
  let output = '';
  for (let i = 1; i <= n; i++) {
    if (i % 3 === 0 && i % 5 === 0) {
      output += "FizzBuzz\n";
    } else if (i % 3 === 0) {
      output += "Fizz\n";
    } else if (i % 5 === 0) {
      output += "Buzz\n";
    } else {
      output += i + "\n";
    }
  }
  fs.writeFile('out.txt', output, (err) => {
    if (err) throw err;
    console.log('Output written to out.txt');
  });
}

// Test the FizzBuzz function
fizzBuzz(100);
