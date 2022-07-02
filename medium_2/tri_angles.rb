=begin
Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right,
:acute, :obtuse, or :invalid depending on whether the triangle is aright, acute, obtuse, or invalid
triangle.
Assume integer balued angles, don't worry about floating point errors.
Assume arguments are specifies in degrees

PROBLEM
- the angles of a valid triangle must equal 180 degrees exactly
- if an angle is 90 degrees, then it is a right triangle
- if all angles are less than 90 degrees, it's an acute triangle
- if one angle is greater than 90 degrees, its an obtuse triangle

EXAMPLES
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid 

DATA STRUCTURES
- math
- conditionals
- array

ALGORITHM
define the method (triangle) that takes 3 arguments (a, b, c)
  set a variable (angles) equal to an array of the arguments [a, b, c]
  - if the (angles) array added together(#reduce(:+)) does not equal 180 or if any of the values
     are 0 or less
     - return :invalid
  - if any of (angles) arrays values == 90 
     - return :right
  - if all of (angles) arrays values are less than 90
    - return :acute
    - else 
       - return :obtuse
=end
def triangle(a, b, c)
  angles = [a, b, c]
  case
  when angles.reduce(:+) != 180 || angles.any? { |n| n <= 0 }
    :invalid
  when angles.any? { |n| n == 90 }
    :right
  when angles.all? { |n| n < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid 
