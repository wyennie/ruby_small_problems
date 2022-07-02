require 'pry-byebug'
=begin
Write a method that takes an Array as an argument, and sorts that Array using the bubble sort
algorithm. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an
argument. You  may assume that the Array contains at least 2 elements.

PROBLEM
input: array
output: sorted array

- the method will mutate the array

EXAMPLES
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

DATA STRUCTURES
- array
- comparison

AGORITHM
define method (bubble_sort!) that takes an array as an argument (array)
  LOOP
    - if (sorted?) == true
      -then return array
    -create a varaible (sorted?) and set it to true
    - set (done) to array.size
    - set one to 0
    - set two to 1
    LOOP
    break if one == done
     - if one > two
      - one, two = two, one
      - sorted? = false
    - one += 1
    - two += 2
=end
def bubble_sort!(array)
  again = nil

  loop do
    return array if again == 0
    again = 0
    done = array.size - 1
    one = 0
    two = 1
    loop do
      break if array[one] == array[done]
      if array[one] > array[two]
        array[one], array[two] = array[two], array[one]
        again += 1
      end
      one += 1
      two += 1
    end
  end
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array #== [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
