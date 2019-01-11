var twoSum = function(nums, target) {
    // console.log(`numbers are ${nums}`);
    // console.log(`target is ${target}`);

    let i = 0;
    let j = 0;
    let resultSet = [];

    while (i < nums.length -1) {
      j = i + 1;
      while (j < nums.length) {
        if (nums[i] + nums[j] == target) {
          resultSet.push(i);
          resultSet.push(j);
          j = nums.lenght;
          i = nums.lenght;
        }
        j++;
      }
      i++;
    }
    // console.log(resultSet)
    return resultSet;
};

nums = [2, 7, 11, 15];
target = 9;

twoSum(nums, target);
