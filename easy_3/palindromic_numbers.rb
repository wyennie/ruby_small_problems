def palindromic_number?(number)
  number.digits == number.digits.reverse
end

p palindromic_number?(0345430)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)