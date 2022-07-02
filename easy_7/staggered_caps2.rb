def staggered_case(string, every_character)
  characters = string.chars
  swap = true

  characters.map do |char|
    if char.match?(/[a-z]/i) || every_character
      swap ? char.upcase! : char.downcase!
      swap = !swap
    end
  end
  
  characters.join
end

p staggered_case('I Love Launch School!', true) #== 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'