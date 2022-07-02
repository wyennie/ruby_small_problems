=begin
define method odd that take an integer
ask if the integer's absolute value is odd
  if yes, return true
  if no, return false


def is_odd?(integer)
  if integer % 2 == 1 #could also just use: integer.odd?
    return true
  else
    return false
  end
end
=end

def is_odd?(integer)
  if integer.remainder(2) == 1 || integer.remainder(2) == -1
    return true
  else
    return false
  end
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)