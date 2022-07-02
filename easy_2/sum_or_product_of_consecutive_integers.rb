number = ''
input = ''

loop do
  puts "Please enter an integer greater than 0:"
  number = gets.chomp
  
  (number.to_i < 1) ? (puts "INVALID") : break
end

sum = (1..number.to_i).inject(:+)
product = (1..number.to_i).inject(:*)

loop do
puts "Enter 's' to compute the sum of integers between 1 and #{number},
or  'p' compute the product of the integers between 1 and #{number}."
input = gets.chomp

  if input == 's'
    puts "The sum of the integers between 1 and #{number} is #{sum}"
    break
  elsif input == 'p'
    puts "The product of the integers between 1 and #{number} is #{product}"
    break
  else
    puts "Please enter either 's' or 'p'."
  end
end