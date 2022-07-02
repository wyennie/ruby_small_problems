require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
=begin
I  googled yaml and Ruby 3.0.0 (the version I have installed) after not being able to find the documentation.
That lead me to finding YAML in  rubygems/syck_hack.rb but nothing here, but it lead me to YAML::Syck,
which lead me away from the Ruby doc and into the YAML doc. I found Ruby there and saw that YAML has  
been included in Ruby since Ruby 1.9.2, but it's listed under psych. So finally I googled psych and found it.
After reading the solution from Launch School, I realise I could have checked the Standard Library (I'll keep
it in mind for the future).
=end