=begin
Write a method that determines the mean (average) of the three scores passed to it, and returns the
letter value associated with that grade.

Numerical Score Letter 	Grade
90 <= score <= 100 	'A'
80 <= score < 90 	'B'
70 <= score < 80 	'C'
60 <= score < 70 	'D'
0 <= score < 60 	'F'

Tested values are all between 0 and 100. There is no need to check for negative values or values 
greater than 100.

PROBLEM
-method has three parameters
  -each argument passed into the method is an integer
-calculate the mean of the three integers
- every number between 0 and 100 is associated with a letter grade
-the arguments will always be >= to 0 and <= 100

EXAMPLES
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

DATA STRUCTURES
-hash
-integer
-string

ALGORITHM
-create a hash (grades)
  -the keys will be the letter grades and the values will be ranges of integers
-define a method (get_grade) with three parameters (num1, num2, num3)
  -set a variable (mean) to equal the arguments added together and divided by three
  -iterate through the hash to match mean with a value\
    -when the value is found return the key, which should be our letter grade
=end

def get_grade(num1, num2, num3)
  mean = (num1 + num2 + num3) / 3

  case mean
  when 90..100 then 'A'
  when 80..89   then 'B'
  when 70..79   then 'C'
  when 60..69   then 'D'
  when 0..59     then 'F'
  else                        'A+'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(101, 103, 111)
