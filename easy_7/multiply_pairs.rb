=begin
Write a method that takes two array arguments in which each array cnotains a list
of numbers andd returns a new array that contains the product of every pair of 
numbers that can be formed between the elements of the two arrays. The results
should be sorted by increasing value.
You may assulme that neither aguments is an empty array

- two arrays of numbers
- mut return new array
- must get product of each combination of arr1 and arr2

EXAMPLES
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

DATA STRUCTURES / ALGORITHM
- create empty array
[] <= products
- iterate through arr1
    -multiply element by
      -iterate through each element of arr2
push it all into products
=end
def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |ele|
    arr2.each { |ele2| products.push(ele * ele2) }
  end
  products.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
