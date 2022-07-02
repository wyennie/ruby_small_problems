require 'pry-byebug'
=begin
PROBLEM
- rotate the argument matrix 90 degrees and return

ALGORITHM
- set variable (rotating_matrix) to an empty array
- set variable (index) to 0
- set variable (iterations) to the matrix[0][0].size
- loop until iterations == index
  - push an empty array into (rotating_matrix)
  - iterate through the arrays in reverse order
    - shift the value off of the array and push it into the last array in (rotating_matrix)
  -index += 1
=end

# # This is my original solution
# def rotate90(matrix)
#   rotating_matrix = []
#   iterations = matrix.first.size - 1

#   0.upto(iterations) do |index|
#     rotating_matrix << Array.new
#     matrix.reverse_each do |arr|
#       rotating_matrix.last.push(arr[index])
#     end
#   end

#   rotating_matrix  
# end

=begin
FURTHER EXPLORATION
Rotate the matrix 90, 180, 270, and 360 degrees, based on an argument

IDEA: use recursion
=end
def rotate(matrix, degrees=90)
  case degrees
  when 90   then rotate90(matrix)
  when 180 then rotate90(rotate90(matrix))
  when 270 then rotate90(rotate90(rotate90(matrix)))
  when 360 then matrix
  end
end

def rotate90(matrix)
  rotating_matrix = []
  iterations = matrix.first.size - 1

  0.upto(iterations) do |index|
    rotating_matrix << Array.new
    matrix.reverse_each do |arr|
      rotating_matrix.last.push(arr[index])
    end
  end

  rotating_matrix  
end





matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1# == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 #== [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 #== matrix2

p rotate(matrix1, degrees=180)