=begin
PROBLEM
Write a method that takes two arguments: the first is the starting number, and the 
second is the ending number. Print out all numbers between the two numbers, 
except if a number is divisible by 3, print "Fizz", if a number is dibisible by 5,
print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".


EXAMPLE
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

DATA STRUCTURE / ALGORITHM
-range of number between two arguments
(arg1..arg2)
- iterate through the range
  -if num % 3 && num % 5 
    "FizzBuzz"
  -elsif ect ect
=end
def fizzbuzz(num1, num2)
  (num1..num2).each do |num|
    if (num % 3 == 0) && (num % 5 == 0)
      print "FizzBuzz"
    elsif num % 3 == 0
      print "Fizz"
    elsif num % 5 == 0
      print "Buzz"
    else
      print num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz