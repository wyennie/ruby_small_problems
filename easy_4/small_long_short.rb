def short_long_short(string1, string2)
  short = (string1.length < string2.length) ? string1 : string2
  long = (string1.length > string2.length) ? string1 : string2
  short + long + short
end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"