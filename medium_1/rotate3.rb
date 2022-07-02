require 'pry-byebug'
# def rotate_rightmost_digits(int, n)
#   num_str = int.to_s
#   piece = num_str.slice!(-n, n)
#   num_str.concat(rotate_string(piece)).to_i
# end

# def rotate_string(str)
#   rotate_array(str.split('')).join
# end

# def rotate_array(arr)
#   results = arr.clone
#   results << results.shift
# end

# def max_rotation(num)
#   size = num.to_s.size
#   until size == 0
#     num = rotate_rightmost_digits(num,  size)
#     size -= 1
#   end
#   num
# end

def max_rotation(num)
  digits = num.to_s.chars
  count = 0
  part = num.to_s.size
   
  loop do
    break if count > num.to_s.size
    section = digits.slice!(count, part)
    section << section.shift
    part -= 1
    count += 1
    digits = digits + section
  end
  digits.join.to_i
end


p max_rotation(735291)# == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(12300456) #== 2046...