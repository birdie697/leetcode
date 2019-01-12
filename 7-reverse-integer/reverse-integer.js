var reverse = function(x) {

    // console.log(`Input is ${x}`);

    let xString = x.toString();
    let leadingSign = '';
    let resultString = '';
    let resultInteger;

    if (xString[0] == '-') {
      leadingSign = '-';
      xString = xString.substring(1,xString.length);
    }

    // console.log(`Leading sign is ${leadingSign}`);
    // console.log(`String is ${xString}`);

    resultString += leadingSign;

    for (i = xString.length-1; i >= 0; i--) {
      resultString += xString[i];
    }

    // console.log(`This is the result string ${resultString}`)

    resultInteger = parseInt(resultString);

    if (resultInteger >= Math.pow(2, 31) || resultInteger <= Math.pow(-2, 31)) {
      return 0;
    } else {
      return resultInteger;
    }

};

let x = 1534236469;

console.log(reverse(x));
