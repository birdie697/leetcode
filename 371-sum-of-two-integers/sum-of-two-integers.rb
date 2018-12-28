def get_sum(a, b)
  collection_basket = []

  if a >= 0 and b >= 0
    a.times { |x| collection_basket.push('x') }
    b.times { |x| collection_basket.push('x') }
    # puts "the sum is #{collection_basket.count}"
    return collection_basket.count
  elsif a < 0 and b < 0
    a *= -1
    b *= -1
    a.times { |x| collection_basket.push('x') }
    b.times { |x| collection_basket.push('x') }
    # puts "the sum is #{collection_basket.count*(-1)}"
    return collection_basket.count*(-1)
  else
    if a > b and a.abs > b.abs
      a.times { |x| collection_basket.push('x') }
      collection_basket.pop(b*-1)
      return_value = collection_basket.count
    elsif a > b and b.abs > a.abs
      b *= -1
      b.times { |x| collection_basket.push('x') }
      collection_basket.pop(a)
      return_value = collection_basket.count*-1
    elsif a > b and a.abs == b.abs
      return_value = 0
    elsif b > a and b.abs > a.abs
      b.times { |x| collection_basket.push('x') }
      collection_basket.pop(a*-1)
      return_value = collection_basket.count
    elsif b > a and b.abs == a.abs
      return_value = 0
    else
      a *= -1
      a.times { |x| collection_basket.push('x') }
      collection_basket.pop(b)
      return_value = collection_basket.count*-1
    end
    # puts return_value
    return return_value
  end
end

# a = 1
# b = 0
# #output is 3

a = -14
b = 16
#output is 1

get_sum(a, b)
