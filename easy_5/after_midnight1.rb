def time_of_day(integer)
  time_array = integer.divmod(60)
  time_array[0] = time_array[0] % 24
  hour = time_array[0]
  minute = time_array[1]
  sprintf("%02d:%02d", hour, minute)
end

p time_of_day(0)
p time_of_day(-3) 
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)

=begin
Problem 1: using %
This is how I originally solved the problem.

Problem 2: using Date and Time
????