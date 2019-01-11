var intToRoman = function(num) {
    console.log(`Input is ${num}`);

    let intToRoman = {
      1000:"M",
      900:"CM",
      500:"D",
      400:"CD",
      100:"C",
      90:"XC",
      50:"L",
      40:"XL",
      10:"X",
      9:"IX",
      5:"V",
      4:"IV",
      1:"I"
    };

    romanString = '';

    while (num > 0) {
      if (num >= 1000) {
        num -= 1000;
        romanString += intToRoman[1000];
      } else if (num >= 900) {
        num -= 900;
        romanString += intToRoman[900];
      } else if (num >= 500) {
        num -= 500;
        romanString += intToRoman[500];
      } else if (num >= 400) {
        num -= 400;
        romanString += intToRoman[400];
      } else if (num >= 100) {
        num -= 100;
        romanString += intToRoman[100];
      } else if (num >= 90) {
        num -= 90;
        romanString += intToRoman[90];
      } else if (num >= 50) {
        num -= 50;
        romanString += intToRoman[50];
      } else if (num >= 40) {
        num -= 40;
        romanString += intToRoman[40];
      } else if (num >= 10) {
        num -= 10;
        romanString += intToRoman[10];
      } else if (num == 9) {
        num -= 9;
        romanString += intToRoman[9];
      } else if (num >= 5) {
        num -= 5;
        romanString += intToRoman[5];
      } else if (num == 4) {
        num -= 4;
        romanString += intToRoman[4];
      } else if (num >= 1) {
        num -= 1;
        romanString += intToRoman[1];
      }
    }

    return romanString;
};

let num = 1994;

console.log(`${intToRoman(num)}`);
