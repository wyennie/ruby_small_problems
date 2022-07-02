=begin
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an
array of the correct number of each fruit.

PROBLEM
-the method takes a nested array as an argument
- each sub-array contains the name of a fruit, and an integer that represents the amount of 
  said fruit
-return a single array with the name of fruit inserted into the array a number of times equal to the
  integer

EXAMPLES
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

DATA STRUCTURES
-string
-integer

ALGORITHM
-def method (buy_fruit) with a single nested array as an argumetn (basket)
  -iterate through the array with map
    - return the fruit n times
=end
def buy_fruit(list)
  basket = []

  list.each do |arr|
    arr[1].times {basket << arr[0]}
  end

  basket
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  # ["apples", "apples", "apples", "orange", "bananas","bananas"]
