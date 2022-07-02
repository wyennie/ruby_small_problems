def word_sizes(string)
  word_tally = Hash.new(0)
  words = string.split(' ')

  words.map do |word|
    word_tally[word.length] += 1
  end

  word_tally
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')
