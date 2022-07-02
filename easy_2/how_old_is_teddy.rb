=begin
puts "Teddy is #{rand(20..200)} years old!" <== This was the original code
Further exploration: ask for users name first, if none is given use Teddy

-ask user's name
-get user's name as variable
-if users name is blank than set Teddy to the variable
-use string intterpolation to print out the original message with Teddy
 replaced by the name variable
=end

puts "What's your name?"
name = gets.chomp
name.empty? ? name = "Teddy" : name = name
puts "#{name} is #{rand(20..200)} years old!"
