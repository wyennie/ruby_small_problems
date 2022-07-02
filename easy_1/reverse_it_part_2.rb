=begin
given a string
split the string into an array of words
check the array for words of 5 letters or more
  -if the word has 5 or more letters, reverse the word and push into an empty array
  -push the other words into the empty array too
join the array of words together into a single string
=end

def reverse_words(string)
  array =[]
  
  string.split.map do |word|
    if word.length >= 5
      array.push(word.reverse!)
    else
      array.push(word)
    end
  end

  array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS