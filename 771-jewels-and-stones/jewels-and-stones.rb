j = "aA"
s = "aAAbbbb"

# j = "z"
# s = "ZZ"

count = 0
i = 0

while i < s.length do
  if j.chars.include?(s[i])
    count += 1
  end
  i += 1
end

puts "You have #{count} jewels"
