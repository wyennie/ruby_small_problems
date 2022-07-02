puts "Please write a word or multiple words:"

users_string = gets.chomp
characters = users_string.delete(' ')

puts "There are #{characters.length} characters in \"#{users_string}\"."
