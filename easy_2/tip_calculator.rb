def valid_number?(input)
  (input.to_i.to_s == input) || (input.to_f.to_s == input)
end

bill = ''
tip_rate = ''

loop do
  puts "What is the bill?"
  bill = gets.chomp

  if valid_number?(bill)
    break
  else
    puts "Not a valid number"
  end
end

loop do
  puts "What percent would like to tip?"
  tip_rate = gets.chomp

  if valid_number?(tip_rate)
    break
  else
    puts "Please only input a number"
  end
end

tip = sprintf("%.2f", ((tip_rate.to_f / 100) * (bill.to_f).round(2)))
total = sprintf("%.2f", (bill.to_f + tip.to_f).round(2).to_f)

puts ''
puts "---------------------------"
puts ''
puts "Your tip is $#{tip}"
puts ''
puts "Your total is $#{total}"
