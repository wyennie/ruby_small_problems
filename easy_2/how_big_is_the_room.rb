puts "Enter the length of the room in feet:"
length = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

square_feet = length * width
square_inches = square_feet * 12
square_centimeters = square_inches * 2.54

puts "The area of the room is #{square_feet} square feet " + \
        "#{square_inches} square inches and " + \
        "#{square_centimeters} square centimeters"