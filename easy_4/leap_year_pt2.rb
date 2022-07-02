def gregorian_leap_year?(input)
  ((input % 4 == 0) && (input % 100 != 0)) || (input % 400 == 0)
end

def julian_leap_year?(input)
  input % 4 == 0
end

def leap_year?(input)
  input < 1752 ? julian_leap_year?(input) : gregorian_leap_year?(input)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
