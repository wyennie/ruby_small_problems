=begin
Write a method that takes a first name, a space, and a last name
passed as a single string argument, and returns a string that
contains the last name, a comma, a space, and the first name.

PROBLEM
- method argument is a single string with a space seperating the first and  last name
-must return a single string that contains a comma and a space in between the 
  last name and the first name
- in the argument the first name comes before the last name but the return value should
  return a string with the last name first and then the first name

EXAMPLES
swap_name('Joe Roberts') == 'Roberts, Joe'

DATA STRUCTURES
-array
-string
-concatenation

ALGORITHM
-defing the method (swap_name) that has a single parameter (string)
  - call split on the string argument to make it an array
  -reverse the array
    - join it back together with a comma and a space
=end
def swap_name(string)
  string.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
