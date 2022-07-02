=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is
an odd integer that is supplied as an argument to the method. You mat assume that the argument
will always be an odd integer.

PROBLEMS
-"four-pointed" diamond is made of increasind amounts of asterisks

EXAMPLES
diamond(1)

*

diamond(3)

 *
***
 *

 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
These will all be even when printed to the terminal

DATA STRUCTURES
-strings
-integers

ALGORITHM
-def a method (diamond) that takes a single odd integer as an argument (n)
  -define the variable (spaces) equal to (n) divided by two
  -define a variable (odds) eaqual to 1
  -define a variable (count) equal to 1
  -loop until count > n
    -puts print spaces amount of ' ' and odds amount of *
    -spaces == 0 ? spaces += 1 : spaces -= 1
    -count += 1
    -odds += 2
=end
def diamond(n)
  spaces = n / 2
  half_way = (n / 2) + 1
  odds = 1
  count = 1

  until count > n
    "#{spaces.times {print ' '}}#{odds.times { print '*'}}#{print "\n"}"
    if count < half_way
      spaces -= 1
      odds += 2
    else
      spaces += 1
      odds -= 2
    end
    count += 1
  end
end

diamond(9)