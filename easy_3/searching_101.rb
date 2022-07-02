number = ''
number_array = []

def enter(count)
  puts "Enter the #{count} number:"
end

def get_number(input, array)
  input = gets.chomp
  array << input
end

enter('1st')
get_number(number, number_array)
enter('2nd')
get_number(number, number_array)
enter('3rd')
get_number(number, number_array)
enter('4th')
get_number(number, number_array)
enter('5th')
get_number(number, number_array)
enter('last')
last_number = gets.chomp

if number_array.include?(last_number)
  puts "The number #{last_number} appears in #{number_array}"
else
  puts "The number #{last_number} does not appear in #{number_array}"
end
=begin
Someone posted this code and I thought it was much cleaner:

numbers = []

['1st', '2nd', '3rd', '4th', '5th', 'last'].each do |n|
  puts "==> Enter the #{n} number:";
  numbers << gets.chomp.to_i    
end

if numbers.first(5).include?(numbers.last)
  puts "The number #{numbers.last} appears in #{numbers.first(5)}."
else
  puts "The number #{numbers.last} does not appear in #{numbers.first(5)}."
end

=end