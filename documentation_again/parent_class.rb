s = 'abc'
puts s.public_methods(all=false).inspect
=begin
I first searched the string documentation and couldn't find public_methods. I wound up google searching 
public_methods and found it in the object documentation. That makes sense, I should have checked the parent 
class (especially seeing the name of the exercise). The public_methods documentation explains that  if you set 
  the all parameter to false, then it will only list the methods that are available to the reciever.
  =end