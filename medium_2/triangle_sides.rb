=begin
Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a
symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is
equilateral, isosceles, scalene, or invalid.

PROBLEM
- equilateral means all three sides are equal
- isosceles means two sides are equal length while the third is smaller
- scalene mean all three sides are different

EXAMPLES
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

DATA STRUCTURES
- integer
- conditionals

ALGORITHM
if a == b && b==c
  then equilateral
if (a==b && c < a) || (a==c && b < a) || (b==c && a < b)
  then isosceles
if (a != b) && (a != c) && (b != c)
  then scalene
=end
# def triangle(a, b, c)
#   if (a == b && b == c)
#     :equilateral
#   elsif (a==b && c < a) || (a==c && b < a) || (b==c && a < b) && [a, b, c].none? { |n| n < 1 }
#     :isosceles
#   elsif (a != b) && (a != c) && (b != c)
#     :scalene
#   else
#     :invalid
#   end
# end

def triangle(a, b, c)
  triangles = {
                    equilateral: (a == b) &&
                                       (b == c) ,
                       isosceles: (a==b && c < a) ||
                                       (a==c && b < a) ||
                                       (b==c && a < b) &&
                                       [a, b, c].none? { |n| n <= 0 },
                        scalene: (a != b) &&
                                      (a != c) &&
                                      (b != c)
                    }
  if triangles[:equilateral]
    :equilateral
  elsif triangles[:isosceles]
    :isosceles
  elsif triangles[:scalene]
    :scalene
  else
    :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
