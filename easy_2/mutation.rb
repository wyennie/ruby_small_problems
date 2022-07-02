array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
=begin
This code  will print:
Moe
Larry
CURLY
SHEMP
Harpo
Groucho
Zeppo

This is because the indexes of the two arrays point to the same objects,
so when the objects that array1's indexes are pointing to are mutated, 
those same objects are being pointed to by array2's indexes
=end