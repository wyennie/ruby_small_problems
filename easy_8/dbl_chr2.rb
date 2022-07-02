=begin
PROBLEM
Write a method that takes a stringg, and returns a new string in which every consanant
is doubled. Vowels (a,e,i,o,u), digits, and whitespace should not be doubled

-consanants only thing to double

EXAMPLES
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

DATA STRUCTURES / ALGORITHM
  - this is the same as the last method but we'll add a conditional statement
    - IF chr match regex then do the multiplying and push
      -ELSE push
=end
def double_consonants(string)
  nneww = ''
  string.each_char do |chr|
    chr =~ /[b-df-hj-np-tv-z]/i ?  nneww << chr * 2 : nneww << chr
  end
  nneww 
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
