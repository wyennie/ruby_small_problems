a = %w(a b c d e)
puts a.fetch(7)                                   # This will throw an error, there isn't 8 elements in the array
puts a.fetch(7, 'beats me')                 # This will print 'beats me', because that's the default value
puts a.fetch(7) { |index| index**2 } # This will return 49