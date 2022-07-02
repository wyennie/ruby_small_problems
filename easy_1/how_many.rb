=begin
define a method that takes an array of strings as an argument
iterate through the array
  -count how many times each element appears
  -print the element along with how many times it appears
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_cars(array)
  array.tally.each { |key, element| puts "#{key} => #{element}" }
end

count_cars(vehicles)
=begin
I tried to use the count method, but I was getting a "no explicit conversion of string to 
integer error" so i used the tally method from the enumerable mixin, which 
turned out to be much smoother
=end

puts ''
#this is their solution which I should have thought of:

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)