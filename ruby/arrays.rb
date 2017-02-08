# 1. El usuario ingresa cuantas personas participan en la rifa
# 2. El usuario ingresa el nombre de cada participante (Guardarlos)
# 3. El programa selecciona el ganador y lo imprime en pantalla

# Ingrese el número de personas: 3
# Ingrese el participante 1: Sebas
# Ingrese el participante 2: George
# Ingrese el participante 3: Angelica

# El ganador de la rifa es: Sebas

print "Ingrese el número de participantes: "
participants = gets.chomp.to_i

players = [ ]

participants.times do |index|
  print "Nombre del participante ##{ index+1 }: "
  player = gets.chomp

  players << player
end

puts "El ganador es: #{players.sample}"
