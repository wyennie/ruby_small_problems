a = [1, 4, 8, 11, 15, 19]
number = a.bsearch { |num| num > 8 } # this will find the first value greater than 8
puts number
# the explanation can be found in the find-minimum mode section of the bsearch entry
# on the array page of the ruby documentation