ALPHANUMERICAL = {
  0 => 'zero',            1 => 'one',         2 => 'two',
  3 => 'three',           4 => 'four',        5 => 'five',
  6 => 'six',              7 => 'seven',      8 => 'eight',
  9 => 'nine',          10 => 'ten',        11 => 'eleven',
  12 => 'twelve',    13 => 'thirteen', 14 => 'fourteen',
  15 => 'fifteen',    16 => 'sixteen',  17 => 'seventeen',
  18 => 'eighteen', 19 => 'nineteen'
}
# It would be simpler to use an array for this, since the indicies would be equal to the range

def alphabetic_number_sort(array)
  array.sort!
  array.map do |num|
    num = ALPHANUMERICAL[num]
  end
end

p alphabetic_number_sort((0..19).to_a)

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]