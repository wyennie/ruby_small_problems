def xor?(x, y)
  if (x == true) && (y == false)
    true
  elsif (x == false) && (y == true)
    true
  else
    false
  end
end

=begin
Better versions of the code:

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

or...

def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

=end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false