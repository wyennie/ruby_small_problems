require 'pry'
NUMBERS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3'=> 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

def string_to_integer(number)
number_array = number.chars.map { |num| NUMBERS[num] }

previous_num = 0
number_array.each { |num| previous_num = 10 * previous_num + num }
previous_num
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100