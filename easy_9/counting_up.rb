=begin
Write a method that takes an integer argument, and
returns an array of all integers, in sequence, between
1 and the argument.

You may assume that the argument will always be a
valid integer greater than 0.

PROBLEM
-method has one parameter
  -can assume that argument is a valid integer greater than 0
- should return an array of every integer between 1 and the argument
  -including 1 and argument

EXAMPLES
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

DATA STRUCTURES
-array
-integer

ALGORITHM
-define the method (sequence) and give it a single paramater (num)
  -create an empty array (results)
  -create a variable (counter) and set it equal to the integer 1
  -start a LOOP until counter is greater than num
    -push counter into the (results)array
    -increment the value of counter by 1
  -return the value of results
=end
# def sequence(num)
#   results = []
#   counter = 0
#   if num > 0
#     until counter == num
#       counter += 1
#       results << counter
#     end
#   elsif num < 0
#     until counter == num
#       counter -= 1
#       results << counter
#     end
#   else
#     results << 0
#   end
#   results
# end

def sequence(num)
  num > 0 ? (1..num).to_a : (num..-1).to_a
end

p sequence(-5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
