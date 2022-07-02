require 'pry-byebug'
=begin
PROBLEM
- method should work with any amount of nested arrays

EXAMPLES
transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]

ALGORITHM
- redifine (transpose_matrix) to an empty array
  transpose_matrix = []
- push an empty array into (transspose_matrix) an amount of times equal to the size of the 
  argument array (matrix)
=end



def transpose(matrix)
  transposed_matrix = []
  matrix.first.size.times{ transposed_matrix << Array.new }

  matrix.with_index do |array, ar_index|
    array.with_index do |value, val_index|
      transposed_matrix[val_index][ar_index] = value
    end
  end

  transposed_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
