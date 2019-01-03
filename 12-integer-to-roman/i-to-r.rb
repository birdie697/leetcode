require 'pry'

def int_to_roman(num)

  i_to_r = {
    1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M"
  }

  roman_string = ''

  puts "Input number:  #{num}"

  while num > 0 do
    case num
    when 1000..3999
      roman_string += i_to_r[1000]
      num -= 1000
    when 900..999
      roman_string += i_to_r[900]
      num -= 900
    when 500..899
      roman_string += i_to_r[500]
      num -= 500
    when 400..499
      roman_string += i_to_r[400]
      num -= 400
    when 100..399
      roman_string += i_to_r[100]
      num -= 100
    when 90..99
      roman_string += i_to_r[90]
      num -= 90
    when 50..89
      roman_string += i_to_r[50]
      num -= 50
    when 40..49
      roman_string += i_to_r[40]
      num -= 40
  when 10..39
      roman_string += i_to_r[10]
      num -= 10
    when 9
      roman_string += i_to_r[9]
      num -= 9
    when 5..8
      roman_string += i_to_r[5]
      num -= 5
    when 4
      roman_string += i_to_r[4]
      num -= 4
    when 1..3
      roman_string += i_to_r[1]
      num -= 1
    else
      num = 0
    end
  end
  return roman_string
end

int_to_roman(1994)
