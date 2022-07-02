=begin
define the repeater method
  -give it two arguments
    *one string
    *one integer
  print the first arguments an amount of times equal to the second argument
=end

def repeater(string, integer)
  integer.times { puts string }
end

repeater('hey', 3)