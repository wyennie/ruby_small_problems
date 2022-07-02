require 'date'
require 'pry-byebug'
=begin
Write a method that returns the number of Friday the 13ths in the year given by an argument.
Assume that the year is greater than 1752 (the year the United Kingdom adopted the moddern
Gregorian Calendar) and that it will remain in use for the foreseable future.

PROBLEM
- count the amount of friday the 13ths in a particular year

EXAMPLES
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

DATA STRUCTURES
- integers

ALGORITHM
-define the method (friday_13th) that takes a year date as an argument(year)
  -create a variable (month) that equals 1
  - create a variable (unlucky_days) that equals 0
  - start loop
    -break the loop when counter == 13
    - use Time class to check if (year, month, 13) is friday (#friday?)
      if yes increment (unlucky_days) by 1
  return (unlucky_days)
=end

def friday_13th(year)
  month = 1
  unlucky_days = 0
  loop do
    break if month == 13
    if Time.new(year,month,13).friday?
      unlucky_days += 1
    end
    month += 1
  end
  unlucky_days
end

def five_friday_months(year)
  five_fridays = 0
  # friday = 0
  1.upto(12) do |month|
    1.upto(31) do |day|
      if day == 1
        friday = 0
      end
      break if Date.valid_date?(year, month, day) == false
      if Date.new(year, month, day).friday? == true
        friday += 1
        if friday == 5
          five_fridays += 1
        end
      end
    end
  end
  five_fridays
end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2004)# == 2
p five_friday_months(2021)
