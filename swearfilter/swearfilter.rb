bad_words = %w[Shit ass\ hole sex ass ass\ spraying\ mayhem cock piss partridge]

entered_text = gets.chomp

entered_array = entered_text.split(" ").to_a
# puts entered_array

entered_array - bad_words → cleanarray

puts cleanarray

# intersectionarray = entered_array & bad_words
# puts intersectionarray.length
# puts intersectionarray[1]



# entered_array.each{|word| .gsub! entered_array.each, 'Joe'


# sentence.gsub! 'Robert', 'Joe'