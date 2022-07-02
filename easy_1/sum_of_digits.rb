=begin
given a positive integer
turn the integer into a string
turn the string into an array of characters
iterate through the array converting the strings into integers
combine all the integers together
=end

def sum(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end

p sum(23) #== 5
puts sum(496) == 19
puts sum(123_456_789) == 45