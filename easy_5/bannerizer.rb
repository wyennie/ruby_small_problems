=begin
Write a method that will take a short line of text and print it within a box.

-Count the length of the string
- puts the top line
    - Puts "+-#{count.times('-')}-+"
-second line
    -Puts "|#{(count+2).times(' ')}|"
-third line
    -Puts "| #{string} |"
-fourth line
    -Puts "|#{(count+2).times(' ')}|"
-fifth line
    - Puts "+-#{count.times('-')}-+"

EXTRAS:
-Word Wrap the message if its too long
  -No line should be longer than 80 characters
    - if it is, it should start the next line


ALGO:
-DEF word_wrapper as a method that takes a string argument
  -DEF text_section, the string split by 80 character sections into an array
  -ITERATE through each string and puts it 
    



=end
def print_in_box(string)
  count = string.length
  top_bottom = "+#{'-' * (count + 2)}+"
  blankspace = "|#{' ' * (count + 2)}|"
  p text_section = string.split(/^.{80}/)
  puts top_bottom
  puts blankspace
  puts "| #{string} |"
  puts blankspace
  puts top_bottom
end


print_in_box('To boldly go where no one has gone before. Or has he? I tell you or something. This string has gone on too long damnit! I will take care of it all. HAHAHAHAHAHAH.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+