require 'open-uri'
=begin
Write a program that reads the content of a text file and then prints the longest sentence in the file
based on number of words. Sentences may end with periods (.), exclamation points (!), or question
marks (?). Any sequence of characters that are not spaces or sentence-ending chaaracters should
be treated as a word. You should also print the number of words in the longest sentence.

PROBLEM
input: text file
output: string (this should be the longest sentence in the text file)

- a sentence is ended by a . ! or ? and starts at the end of another sentence or the begining of the file
- a word is any group of characters boardered by whitespace and/or sentence ending characters
- sentence length is determined by number of words (not characters)

DATA STRUCTURES
- strings
- array
- integers
- conditional

ALGORITHM
- method for array of text file words (extract_words) takes a text file as an argument(txt)
- split the text file into an array of characters seperated by spaces, call it (words)


- method to turn above into nested array, where the nested arrays are sentences(make_sentence)
  takes a array of words as an argument (words)
- create an array (sentences) that contains a single array that contains a zero #=> [[]]
- create a variable (counter) equal to 
- iterate throught the words array
    - sentence[counter] << word
    - if word contains a (.) or (!) or (!)
      - push [] into senteces array and
      - counter += 1

- method to sort the sentences by count and return the biggest (longest_sentence) takes a nested
  array as an argument(sentences)
- we can use the sort_by method on the sentences
  - and sort by the #size of each sentence
- then just pop the results and print it
=end
def extract_words(txt)
  File.read(txt).split
end

def make_sentence(words)
  sentences = [[]]
  counter = 0
  extract_words(words).each do |word|
    sentences[counter] << word
    sentences << [] &&  counter += 1 if word.match?(/\.|\?|!/)
  end
  sentences
end

def longest_sentence(sentences)
  longest = make_sentence(sentences).max_by { |sentence| sentence.size }
  longest.join(' ')  + "This sentence is #{longest.size} words long."
end

# Further Exploration

def extract_paragraphs(txt)
  par = File.read(txt).split(/\n{2,}/)
end

def longest_paragraph(txt)
  max = extract_paragraphs(txt).max_by do |paragraph|
    paragraph.split(' ').size
  end
  max + "This is the largest paragraph"
end

def longest_word(txt)
  "The longest word is: " +
  extract_words(txt).max_by { |word| word.size }
end

# p longest_sentence('gettysburg_address.txt')
# p longest_paragraph('gettysburg_address.txt')
p longest_word('gettysburg_address.txt')