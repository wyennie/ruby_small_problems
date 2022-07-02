=begin
given an integer and a boolean
if the boolean is true
  divide the integer by half and return the value
if the boolean is false
  return 0
=end

def calculate_bonus(salary, bonus)
  bonus == true ? salary / 2 : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000