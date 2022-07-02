TRANSLATOR = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(number)
  number_string = ''
  exponent = 0

  loop do
    exponent += 1
    divisor = exponent == 1 ? 1 : 10**(exponent - 1)

    digit = ((number % (10**exponent)) / divisor)
    number_string << TRANSLATOR[digit]
    break if (number / (10**exponent)) == 0
  end

  number_string.reverse
end

def add_signs(num, string)
  if num.negative?
    string.insert(0, '-')
  elsif num == 0
    string
  else
    string.insert(0, '+')
  end
end

def signed_integer_to_string(integer)
  number = integer.negative? ? integer * -1 : integer
  string = integer_to_string(number)
  add_signs(integer, string)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0)
