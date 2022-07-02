=begin
Problem:
Write a method that searches for all multiples of 3 and 5 between 1 
and the input. Then have the method compute the sum of all those
multiples.
assume the input is a multiple greater than 1

Test:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

Data Structures:
- iterate through a range of 1..input to figure out multiples
- push the multiples into an array

Algorithm:
- iterate through range of 1..input 
  - if current number is a multiple of 3 or 5 push to array
- sum the array

Code:
=end
def multisum(input)
  multiples = []
  (1..input).each do |num|
    if (num % 3 == 0) || (num % 5 == 0)
      multiples << num
    end
  end
  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
