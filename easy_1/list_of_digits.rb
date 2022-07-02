=begin 
define the method 'digit_list' and give it a single integer argument
split the digits in the integers into an array
return the array
=end

def digit_list(integer)
  integer.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]