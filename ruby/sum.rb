# Metodos o funciones
breakline = "\n"

def get_numbers
  print "Ingrese el primer numero: "
  num_one = gets.chomp.to_i
  print "Ingrese el segundo numero: "
  num_two = gets.chomp.to_i

  return num_one, num_two
end

def sum(a, b)
  a + b
end

puts "Bienvenidos a nuestra calculadora para sumar!"

num_one, num_two = get_numbers
puts sum(num_one, num_two)

num_one, num_two = get_numbers
result = sum(num_one, num_two)

num_one, num_two = get_numbers
result = sum(num_one, num_two)

num_one, num_two = get_numbers
result = sum(num_one, num_two)

num_one, num_two = get_numbers
result = sum(num_one, num_two)

num_one, num_two = get_numbers
result = sum(num_one, num_two)

num_one, num_two = get_numbers
result = sum(num_one, num_two)
