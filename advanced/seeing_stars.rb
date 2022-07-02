# This is what I came up with, using an array to store the spaces

def star(n)
  mid = n / 2
  left = 0
  right = n-1

  until left == n
    row_printer(n, mid, left, right)
    left += 1
    right -= 1
  end
  # puts ''
end

def row_printer(n, mid, left, right)
  row = Array.new(n, ' ')

  if right == mid
    puts ''
    n.times{print '*'}
  else
    row[mid] = '*'
    row[left] = '*'
    row[right] = '*'
    puts ''
    print row.join
  end
end

# I really like the method the Launch School solution, I completely forgot how
# I completed the previous similar exercise

# def print_row(grid_size, distance_from_center)
#   number_of_spaces = distance_from_center - 1
#   spaces = ' ' * number_of_spaces
#   output = Array.new(3, '*').join(spaces)
#   puts output.center(grid_size)
# end

# def star(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(1) { |distance| print_row(grid_size, distance) }
#   puts '*' * grid_size
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

star(9)
  