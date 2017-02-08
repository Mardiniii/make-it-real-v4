# Hacer un juego que genere un número aleatorio del 1 al 10 y le pida al usuario que lo adivine con intentos ilimitados, el programa solo acaba cuando el número sea adivinado.
#
# Número: 4
#
# Adivina el número del 1 al 10 que estoy pensando: 5
# ¡No! Intenta nuevamente: 3
# ¡No! Intenta nuevamente: 7
# ¡No! Intenta nuevamente: 8
# ¡No! Intenta nuevamente: 4
# Felicitaciones, lo adivinaste!
#
#
# 1. Numero aleatorio, con el que juega el usuario
# 2. Pedir primer número.
# 3. Validar si lo adivino
# 4. Si no es el número pedirlo de nuevo, si es imprimir mensaje Felicitaciones

number = rand(1..10)
print "Adivina el número del 1 al 10 que estoy pensando: "
user_number = gets.chomp.to_i

attempts = 0
while number != user_number && attempts < 2
  print "¡No! Intento número #{attempts + 2}: "
  user_number = gets.chomp.to_i
  attempts = attempts + 1
end

if user_number == number
  puts "Felicitaciones, lo adivinaste!"
else
  puts "Lo siento, perdiste!"
end
