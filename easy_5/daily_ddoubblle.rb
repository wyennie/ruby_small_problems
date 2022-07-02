# def crunch(string)
#   digits = string.split('')
#   new_string  = ''

#   digits.each_with_index do |char, index|
#     (digits[index + 1] == char) ? next : (new_string << char)
#   end
  
#   new_string
# end

# Let's try with regex

def crunch(string)
  string.gsub(/(.)\1+/, '\1')
end


p crunch('ddaaiillyy ddoouubbllee')# 'daily double'
p crunch('4444abcabccba') # '4abcabcba'
p crunch('ggggggggggggggg') # 'g'
p crunch('a') # 'a'
p crunch('') # ''