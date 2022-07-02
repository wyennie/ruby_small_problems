=begin
Write a method that takes a string as an argument and returns a new string in
which every uppercase letter is replaced by its lowercase version and every
lowercase letter replaced by its uppercasr version. All other characters should
be unchanged.
No String#swapcase allowed

Explicit
- the argument is a string
- must return a new string
- uppercase letters must be replaced with lowercase letters and vice versa
- cannot use String#swapcase

EXAMPLES
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

DATA STRUCTURES / ALGORITHM
'CamelCase'  <= given_string
lets create an empty string to put our final characters in
'' <= I'll call it new_string
create an array of characters from the given_string by calling #chars on it
['C', 'a', 'm', 'e', 'l', 'C', 'a', 's', 'e'] <= call it characters
now we iterate through the array of character map or each, either will do
  IF LOWERCASE.include?(character) #<= we can use regex to match instead
    push character.upcase into new_string
  ELSIF UPPERSCASE.include?(charater) #<= we can use regex to match instead
    push character.downcase into new_string
  ELSE
    push character into new string
return the new string
'cAMELcASE'
=end
def swapcase(string)
  swapped = ''
  characters = string.chars

  characters.map do |character|
    if character.match?(/[a-z]/)
      swapped << character.upcase
    elsif character.match?(/[A-Z]/)
      swapped << character.downcase
    else
      swapped << character
    end
  end
  swapped
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
