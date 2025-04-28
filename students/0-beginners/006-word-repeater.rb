def valid_integer?(input)
  Integer(input)
  true
# rescues any error, you could also just rescue the relevant error, ehich might be the ArgumentError
rescue 
  false
end

def repeat_word(number, word)
  # raise StandardError.new "This number is not a matching type" unless valid_integer?(number)
  puts "Incorrect number. Please try again." unless valid_integer?(number)
  number.to_i.times do 
    puts word
  end
end

puts "What is the word you want to repeat?"
word = gets.chomp

puts "How many times do you want to do it?"
num = gets.chomp

repeat_word(num, word)


