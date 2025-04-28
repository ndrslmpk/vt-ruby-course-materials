puts "Insert your String and we will show you what you can do"
word = gets.chomp

puts "(1) Here comes the doubled word"
puts word+word

puts "(2) Here is a reversed input"
puts word.reverse

puts "(3) This is the downcase version of the input"
puts word.downcase

puts "(4)"
puts word.capitalize

puts "(5)"
puts word.upcase

puts "(6)"
puts word.reverse.upcase


puts "#############################"
puts "Let's do more serious things!"
puts "#############################"


puts "(7) The first letter"
puts word[0]

puts "(8) Each char capitalized. Voila"
# Alternative: word.each_char do |char| 
word.chars.each do |char|
  puts char.capitalize
end


puts "(9) A random Letter from the word: #{word}"
index = rand(word.length)
puts word[index]
