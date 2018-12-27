# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  first_index = 0
  solution_indexes = []
  while first_index + 1 < nums.count do
    second_index = first_index + 1
    while second_index < nums.count do
      puts "first number #{nums[first_index]} + second number #{nums[second_index]} equals #{nums[first_index] + nums[second_index]}"
      if nums[first_index] + nums[second_index] == target
        solution_indexes.push(first_index, second_index)
        puts solution_indexes
        return solution_indexes
        break
      end
      second_index += 1
    end
    first_index += 1
  end
end

nums = [3, 2, 3]
target = 6

two_sum(nums, target)
