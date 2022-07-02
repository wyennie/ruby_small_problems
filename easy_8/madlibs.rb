=begin
PROBLEM
Create a program that prompts for a noun, a verb, an adverb, and an adjective
and injects those into a story you create... a madlib!
-Do we prompt the user only once or once for each word-class? I'll assume once for each word-class
-Should the final story be printed to the screen? I'll assume yes

EXAMPLE
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

DATA STRUCTURES / ALGORITHM
-prompt for noun
  -SET answer noun
-ect verb
-ect adjective
-ect adverb
puts a string with all the words, using string interpolation
=end
puts "WELCOME TO MADLIBS"
puts
puts "Enter a noun:"
noun = gets.chomp
puts "Enter a verb"
verb = gets.chomp
puts "Enter an adjective"
adjective = gets.chomp
puts "Enter an adverb"
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hillarious!"
