OPERATORS = %w(+ - * / % **)
first_number = ''
second_number = ''

def say(string)
  puts "==> #{string}"
end

def valid_number?(input)
  input.to_i.to_s == input || input.to_f.to_s == input
end

def maths(first, second)
  OPERATORS.each do |operator|
    say("#{first} #{operator} #{second} =" \
    " #{first.send(operator, second)}")
  end
end

loop do
  say("Enter the first number:")
  first_number = gets.chomp
  if valid_number?(first_number)
    first_number = first_number.to_f
    break
  else
    say("INVALID NUMBER")
  end
end

loop do
  say("Enter the second number(cannot be 0):")
  second_number = gets.chomp
  if valid_number?(second_number) && second_number.to_i != 0
    second_number = second_number.to_f
    break
  else
    say("INVALID NUMBER")
  end
end

maths(first_number, second_number)
