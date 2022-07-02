require 'pry-byebug'
=begin
Use merge sort to sort a passed in array

EXAMPLE
merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

DATA STRUCTURES
- array

ALGORITHM
- define the method (merge_sort) with one parameter (array)
  - if the array size is greater than 1 than split the array in two
    and pass each new array into the (merge_sort) method as an argument
  
=end
def merge_sort(array)
  half = array.size / 2
  first_half, second_half, nested_array = [], [], []
  
  array.each.with_index do |ele, ind|
    ind >= half ? first_half << ele : second_half << ele
  end
#  binding.pry
  first_half = merge_sort(first_half)  if first_half.size > 1
  second_half = merge_sort(second_half) if second_half.size > 1

  nested_array << second_half
  nested_array << first_half

  merge(first_half, second_half)
end

def merge(arr1, arr2)
  results = []
  index1, index2 = 0, 0
  until results.size == (arr1.size + arr2.size)
    if arr1[index1].nil? || arr2[index2].nil?
      finish_merge(arr1, index1, arr2, index2, results)
    elsif arr1[index1] < arr2[index2]
      results << arr1[index1]
      index1 += 1
    else
      results << arr2[index2]
      index2 += 1
    end
  end
  results
end

def finish_merge(arr1, index1, arr2, index2, results)
  if arr1[index1].nil?
    index2.upto(arr2.size - 1) do |index|
      results << arr2[index]
    end
  else
    index1.upto(arr1.size - 1) do |index|
      results << arr1[index]
    end
  end
  results
end

p merge_sort([9, 5, 7, 1])
p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
