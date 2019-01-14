var isPalindrome = function(x) {
  console.log(`input is ${x}`);

  xString = x.toString();

  if (xString[0] == '-' || (xString[xString.length-1] == '0' && xString.length > 1)) {
    return false;
  }

  palString = '';
  for (i = xString.length-1; i>=0; i--) {
    palString += xString[i];
  }

  console.log(`palString is ${palString}`);

  if (palString == xString) {
    return true;
  } else {
    return false;
  }


};

let x = 123;
console.log(isPalindrome(x));
