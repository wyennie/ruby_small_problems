=begin
PROBLEM
Write a method that takes two sorted arrays and returns a new array that is
a sorted combination of the two arguments

input: two sorted arrays
output: a new array that contains the values of the two argument arrays, sorted

- do not mutate the arrays given as arguments
- must be sorted as it's passed into the results array,
  ie. no sorting the results array
  - build the array one element at a time in the proper order

EXAMPLES
merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

DATA STRUCTURES
- array (obviously)
- booleans?

ALGORITHM
define a method (merge) that takes two sorted arrays as arguments (arr1, arr2)
  SET (results) to an empty array ([])
  SET (results_ind) to 0
  SET (index1) to 0
  SET (index2) to 0

  LOOP until the results array is the same size as the two argument arrays
   added together ie. results.size == (arr1.size + arr2.size)
    IF current index value of arr1 is less than the current index value of arr2
     (arr1[index1]) < (arr2[index2])
      - then assign the current arr1 value to the current results index
       (results[results_ind] = arr1[index1])
      - and increment the (index1) variable
       (index1 += 1)
    ELSE
      - assign the current results value to the current arr2 value
       (results[results_ind] = arr2[index2])
      - and increment the (index2) variable
    Increment the (results_ind) variable by 1
     (results_ind += 1)
  Return the results array
=end
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

p tango = [1, 5, 9]
p cash = [2, 6, 8]

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
p merge(tango, cash)
p tango
p cash
