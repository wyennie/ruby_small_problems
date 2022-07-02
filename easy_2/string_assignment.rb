name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
This code will print out:
BOB
BOB
This is because save_name and name are both assigned to the same 
string and the #upcase! method mutates the caller, which in this 
case is the string 'Bob'.
=end