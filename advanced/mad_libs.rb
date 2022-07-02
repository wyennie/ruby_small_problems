text = File.open('mad_lib.txt') # has to be open instead of read
# text.gsub!("%{adjective}", 'P')
REPLACEMENT_WORDS = {
  adjective: %w(quick lazy sleepy ugly),
  noun: %w(fox dog head leg),
  verb: %w(jumps lifts bites licks),
  adverb: %w(easily lazily noisily excitedly)
}

# text.gsub!("%{adjective}", REPLACEMENT_WORDS[:adjective].sample)
# text.gsub!("%{noun}", REPLACEMENT_WORDS[:noun].sample)
# text.gsub!("%{verb}", REPLACEMENT_WORDS[:verb].sample)
# text.gsub!("%{adverb}", REPLACEMENT_WORDS[:adverb].sample)

# puts text
text.each do |line|
  puts format(line, noun:         REPLACEMENT_WORDS[:noun].sample,
                              adjective:  REPLACEMENT_WORDS[:adjective].sample,
                              verb:         REPLACEMENT_WORDS[:verb].sample,
                              adverb:     REPLACEMENT_WORDS[:adverb].sample
                              )
end
