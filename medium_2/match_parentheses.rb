=begin
Write a method that takes a strinh as an argument, and returns true if all parentheses in the string
are properly balanced. ie: an egual amount of '(' and ')' 
note: '(' must come before ')'

PROBLEM
- need to have an equal amount of opening parentheses '(' and closing parentheses ')'
- ')' should never come before a closing parentheses
- the argument will be a string
- the method should return true if balanced and false if not

EXAMPLES
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

DATA STRUCTURE
input: string
output: either true or false value

- string
- hash
- integer
- array

ALGORITHM
-def method (balanced?) and that takes a string as an argument (string)
  - create a variable (tally) that's equal to this hash
      { opening: 0, closing: 0 }
  -create a variable (characters) eagual to an array of the strings characters (prob string.chars)
  - iterate through the (characters) array
    -if tally[:closing] is ever greater than tally[:opening]
      - then return false
    - elsif current character == '('
      - add 1 to tally[:opening]
    - elsif current character == ')'
      - add 1 to tally[:closing]
  -when iteration is done tally[:opening] should be equal to tally[:closing]

My solution

def balanced?(string)
  tally = { opening: 0, closing: 0 }
  string.chars.each do |character|
    if character == '('
      tally[:opening] += 1
    elsif character == ')'
      tally[:closing] += 1
    end
    return false if tally[:closing] > tally[:opening]
  end

  tally[:opening] == tally[:closing]
end


This is the simpler Launch School solution

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

I think I can combine my solution and this one, to expand and add different types of brackets
=end


def balanced?(string)
  brackets = { parens: 0, square: 0, curley: 0 }
 quotes = { single: 0, double: 0 }
  string.each_char do |char|
    case char
    when '(' then brackets[:parens] += 1
    when ')' then brackets[:parens] -= 1
    when '[' then brackets[:square] += 1
    when ']' then brackets[:square] -= 1
    when '{' then brackets[:curley] += 1
    when '}' then brackets[:curley] -= 1
    when "'" then quotes[:single] += 1
    when '"' then quotes[:double] += 1
    end
    return false if brackets.any? { |_, value| value < 0 }
  end
  brackets.values.all? { |value| value == 0 } &&
    quotes.all? { |_, value| value.even? }
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('wow "cool')
