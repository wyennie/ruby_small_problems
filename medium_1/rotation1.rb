=begin
Write a method that rotates an array by moving the first element to the end of the array. The
original array should not be modified. Do not use the method Array#rotate or Array#rotate! for
your implementation.

- do it with strings
- do it with integers

PROBLEM
-method should take a single argument that is an array
-move the first element of an array to the end of the array
  -it shouldn't be the first element of the array anymore
- Do not modify the original array
- Do not use Array#rotate or Array#rotate!

EXAMPLES
rotate_string('string') == 'trings'
rotate_integers(1234) == 4123

DATA STRUCTURE
-string
-array
-join
-integers

ALGORITHM
-def method (rotate_integers) that takes one argument (int) that is an integer
  -convert integer to a string
  -pass the integer into the rotate_string method
  -convert the string back into an integer
=end
def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

def rotate_string(str)
  rotate_array(str.split('')).join
end

def rotate_array(arr)
  results = arr.clone
  results << results.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
p 
p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
p rotate_string('string') == 'trings'
p rotate_integer(1234) == 2341
