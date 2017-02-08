birth_of_year = 0

def generation(year)
  if year <= 1945
    "La gran generación"
  elsif year >= 1946 && year <= 1964
    "Baby Boomer"
  elsif year >= 1965 && year <= 1982
    "Generación X"
  elsif year >= 1983 && year <= 2004
    "Milenial"
  elsif year >= 2005
    "Centenial"
  end
end

# spanish_generations = {  }

while birth_of_year != -1
  print "Ingresa el año de nacimiento: "
  birth_of_year = gets.chomp.to_i
  puts generation(birth_of_year) if birth_of_year != -1
  puts "\n"
end
