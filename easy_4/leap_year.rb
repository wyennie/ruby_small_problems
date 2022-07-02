=begin
Problem:

Write a method that takes any year greater than 0 as input, and returns true if the
year is a leap year, or false if it is not a leap year.
- years that are divisible by 4 are leap years, unless:
  - if the year is divisible by 100 it is not a leap year, except:
    - if the year is divisible by 100 and 400, then it is a leap year

- assue that there be years less than or equal to zero

Examples / Test-Cases:

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

Data Structures:
N/A

Algorithm:
-check if the input is divisible by 4 but not 100, or if the input is divisible by 400
  - if either of those is true then return true
  - return false for everything else

Code:
=end
def leap_year?(input)
  ((input % 4 == 0) && (input % 100 != 0)) || (input % 400 == 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true