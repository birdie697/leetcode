def get_sum(a, b)
  collection_basket = ''

  if a >= 0 and b >= 0
    a.times { |x| collection_basket += 'x' }
    b.times { |x| collection_basket += 'x' }
    puts "the sum is #{collection_basket.length}"
    return collection_basket.length
  elsif a < 0 and b < 0
    a *= -1
    b *= -1
    a.times { |x| collection_basket += 'x' }
    b.times { |x| collection_basket += 'x' }
    puts "the sum is #{collection_basket.length*(-1)}"
    return collection_basket.length*(-1)
  else
    if a > b and a.abs > b.abs
      a.times { |x| collection_basket += 'x' }
      collection_basket.slice!(-(b.abs), b.abs)
      return_value = collection_basket.length
    elsif a > b and b.abs > a.abs
      b *= -1
      b.times { |x| collection_basket += 'x' }
      collection_basket.slice!(-a, a)
      return_value = collection_basket.length*-1
    elsif a > b and a.abs == b.abs
      return_value = 0
    elsif b > a and b.abs > a.abs
      b.times { |x| collection_basket += 'x' }
      collection_basket.slice!(-(a.abs), a.abs)
      return_value = collection_basket.length
    elsif b > a and b.abs == a.abs
      return_value = 0
    else
      a *= -1
      a.times { |x| collection_basket += 'x' }
      collection_basket.slice!(-b, b)
      return_value = collection_basket.length*-1
    end
    puts return_value
    return return_value
  end
end

a = 1
b = 2
#output is 3

# a = 2147483647
# b = -2147483648
# #output is -1

get_sum(a, b)
