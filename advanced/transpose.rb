require 'pry-byebug'
=begin
Write a method that takes a 3x3 matrix in Array format and returns the
transpose of the original matrix. Note that there is a Array#transpose method
that does this -- you may not use it for this exercise. You also are not
allowed to use the Matrix class from the standard library. Your task is to do
this yourself.

Take care not to modify the original matrix: you must produce a new matrix and
leave the original matrix unchanged.

PROBLEM
Input: nested array
Output: new nested array (transposition of argument array)

- method takes an array with 3 other arrays nested inside
  - each of the nested arrays have three indecies

- the method should return a new nested array, that is the transpostion of
  the original nested array

- no using Array#transpose or Matrix (use your ingenuity)

EXAMPLES
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

DATA STRUCTURES
- Array

ALGORITHM
define a method (transpose) that takes a nested array as an argument (matrix)
  - create a new array (transposed_matrix) with 3 empty array nested inside
    [[],[],[]]
  - iterate throught the argument array (matrix)
    - iterate throught the idecies of (matrix)'s nested arrays
      - push the current value to the current index 
        trasposed[index] << current_value
  - return the (transposed_matrix) nested array
=end
def transpose(matrix)
  transposed_matrix = [[],[],[]]
  matrix.each_with_index do |array, ar_index|
    array.each_with_index do |value, val_index|
      transposed_matrix[val_index][ar_index] = value
    end
  end
  transposed_matrix
end

def transpose!(matrix)
  0.upto(2) do |row|
    2.downto(0) do |column|
     value = matrix[row][column]
     matrix[column] << value
    end
  end
  matrix.each do |arr|
    3.times{arr.shift}
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix# == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix# == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
p transpose!(matrix)