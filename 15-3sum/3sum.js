var threeSum = function(nums) {

  let resultSet = [];
  let answerSet = [];
  let jsonResultSet = [];

  // for (i = 0; i < nums.length-2; i++) {
  //   for (j = i+1; j < nums.length-1; j++) {
  //     for (k = j+1; k < nums.length-0; k++) {
  //       if (nums[i] + nums[j] + nums[k] == 0) {
  //         answerSet=[nums[i], nums[j], nums[k]];
  //         k = nums.length;
  //         answerSet.sort();
  //         if (!jsonResultSet.includes(JSON.stringify(answerSet))) {
  //           jsonResultSet.push(JSON.stringify(answerSet));
  //           resultSet.push(answerSet);
  //         }
  //       }
  //     }
  //   }
  // }

  nums.sort();

  i = 0;
  j = 0;
  k = 0;

  while (i < nums.length-2) {
    j = i + 1;
    while (j < nums.length-1) {
      k = j + 1;
      while (k < nums.length) {
        if (nums[i] + nums[j] + nums[k] == 0) {
          answerSet=[nums[i], nums[j], nums[k]];
          k = nums.length;
          answerSet.sort();
          if (!jsonResultSet.includes(JSON.stringify(answerSet))) {
            jsonResultSet.push(JSON.stringify(answerSet));
            resultSet.push(answerSet);
          }
        } else {
          k++;
        }
      }
      j++;
    }
    i++;
  }

  return resultSet.sort();
};

let nums = [-1, 0, 1, 2, -1, -4];

console.log(threeSum(nums));
