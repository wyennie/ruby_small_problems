=begin
ASK age
GET answer and SET to current_age
ASK what age they want to retire
GET answer SET to retirement_age

SET year to current year
SET retirement_age minus current_age to difference
SET retirement_year to year plus difference

PRINT ALL THE THINGS
=end
def valid_number?(input)
  input.to_i.to_s == input || input.to_f == input
end

current_age = ''
retirement_age = ''

loop do
  puts "What is your age?"
  current_age = gets.chomp
  valid_number?(current_age) ? break : puts("Please enter valid number")
end

loop do
  puts "At what age would you like to retire?"
  retirement_age = gets.chomp
  valid_number?(retirement_age) ? break : puts("Please enter valid number")
end

year = Time.new.year
years_left = retirement_age.to_i - current_age.to_i
retirement_year = year + years_left

puts "It's #{year}. You will retire in #{retirement_year}"
puts "You have only #{years_left} years of work left to go!"
