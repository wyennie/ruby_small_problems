=begin
Write a method that takes two array arguments in which each array contains a list of numbers
and returns a new array that contains the product of each pait of numbers from the arguments
that have the same index. You mat assume that the arguments contain the same number of 
elements

-the two array arguments have the same number of elements
-the elements in the array are always numbers
-must return a new array
- each element of the new array must be the product of the two elements at the equivalent index
in the argument arrays

EXAMPLES
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

DATA SRUCTURES / ALGORITHM
-create a new empty array
  [] <= call it products
-create a counter = 0
  counter = 0
-we start a loop that breaks when counter equals the size of array1
  -productts[counter] = (array1[counter] * array2[counter])
  - counter += 1
-return products
=end
# def multiply_list(array1, array2)
#   products = []
#   counter = 0

#   loop do
#     products[counter] = ((array1[counter]) * (array2[counter]))
#     counter += 1
#     break if counter == array1.size
#   end

#   products
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
