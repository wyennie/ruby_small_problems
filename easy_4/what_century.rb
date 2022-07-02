def century(year)
  century = (year / 100) + 1
  if year.to_s.end_with?('0')
    (century -= 1)
  else
    century
  end
  
  century = century.to_s
  century + suffix(century)
end

def suffix(century)
  if century.end_with?('11', '12', '13') then 'th'
  elsif century.end_with?('1')             then 'st'
  elsif century.end_with?('2')             then 'nd'
  elsif century.end_with?('3')             then 'rd'
  else 'th'
  end
end

p century(2000)
p century(2001)
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
