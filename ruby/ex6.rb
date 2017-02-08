# def say(words = 345)
#   puts "This is words: #{words}"
# end
#
# say()
#
# def welcome
#   puts "Hello Maker!"
# end

def welcome(name = 'Maker')
  return "Hello #{name}!", name
end

def suma
  puts 8 + 5
end

def is_true?
  value = 3
  if value > 5
    puts 'true'
  else
    puts 'false'
  end
end

greeting = welcome('Sebas')
print greeting
puts "\n"


# if welcome() == "Hello Sebas!"
#   puts "Heyyy, Sebas is there!"
# else
#   puts "Where is Sebas?"
# end
