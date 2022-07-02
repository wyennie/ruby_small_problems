=begin
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or
more elements that, when combined with adjoining spaces, will produce a person's name.
The hash will contain two keys. :title and :occupation, and the appropriate values. Your 
method should return a greeting that uses the person's full name and mentions the person's
title and occupation.

PROBLEM
-method takes two arguments; argument one is an array and argument two is a hash
- the array will contain two or more elements, that combine(with spaces) into a name
- the hash contains the keys, :title and :occupation with assosiated values
- return string that uses the name in the array and the key values in the hash

EXAMPLE
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

DATA STRUCTURES
-array and hash (the arguments)
-string
-string interpolation

ALGORITHM
- join the array together with a space between each element and assign it to a variable(name)
- use string interpolation and call the different elements from the array and hash when needed
=end
def greetings(array, hash)
  name = array.join(' ')
  "Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
