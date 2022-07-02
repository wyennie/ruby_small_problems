=begin
given a positive integer
create an empty number array
create a counter that starts at 1
while the counter doesn't equal the positive integer
  -if the counter is odd
    -add 1 to number array
    -add +1 to counter
  -if counter is even
    -add 0 to number array
    -add +1 to counter
combine the number array into a single string
=end

def stringy(num)
  number_array = []
  counter = 1

  while num >= counter
    
    if counter.odd?
      number_array.push(1)
      counter += 1
    else
      number_array.push(0)
      counter += 1
    end
  end
  number_array.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# The code below is the code under solutions, and it's much more streamlined

def stringy1(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts ''
puts stringy1(6) == '101010'
puts stringy1(9) == '101010101'
puts stringy1(4) == '1010'
puts stringy1(7) == '1010101'
