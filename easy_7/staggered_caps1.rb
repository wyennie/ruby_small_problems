=begin
write a method that takes a string as an argument and returns a newstring that
contains the original value using a staggered capitalization scheme in which
every other character is capitalized, and the remaining characters are 
lowercase. Characters that are not letters should not be changed, but
still count as characters when switching between upper and lowercase

- argument is a string
- must return new string
- every other character starting from the first should be uppercase
- every other should be lowercase

EXAMPLES
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

DATA STRUCTURES / ALGORITHM
argument 'Steak'
create an array out of the argument
['S', 't', 'e', 'a', 'k']
iterate through array
  IF charcter is even? then upcase
  Elsif chatacter is odd? then downcase
join array
=end
def staggered_case(string)
  characters = string.chars

  characters.each_with_index do |letter, index|
    index.even? ? letter.upcase! : letter.downcase!
  end
  
  characters.join
end

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'