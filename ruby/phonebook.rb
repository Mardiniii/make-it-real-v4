# Contacto: id, nombre, telefono, correo, sexo
# Acciones: crear contacto, eliminar contacto, buscar contacto, editar contacto
#
# Agenda Telefonica 2017
#
# 1. Buscar contacto
# 2. Crear contacto
# 3. Editar contacto
# 4. Eliminar contacto
# 5. Salir
#
# --------------------
# Opción 1: Buscar contacto
# Ingrese el nombre del contacto: 'Sebastian'
#
#   Nombre: 'Sebastian'
#   Telefono: 301 262 35 73
#   Correo: sezama03@hotmail.com
#   Sexo: Masculino
#
# ---------------------
# Opción 2: Crear contacto
#
# Ingrese el nombre: 'Sebastian'
# Ingrese el telefono: '301 262 35 73'
# Ingrese el correo: 'sezama03@hotmail.com'
# Ingrese sexo (M o F): M
#
# El contacto ha sido creado con éxito:
#   ID: 1
#   Nombre: 'Sebastian'
#   Telefono: 301 262 35 73
#   Correo: sezama03@hotmail.com
#   Sexo: Masculino
#
# ---------------------
# Opción 3: Editar contacto
#
# Ingrese el nombre: 'Sebastian'
# Ingrese el telefono: '301 262 35 73'
# Ingrese el correo: 'sezama03@hotmail.com'
# Ingrese sexo (M o F): M
#
# El contacto ha sido editado con éxito:
#   Nombre: 'Sebastian'
#   Telefono: 301 262 35 73
#   Correo: sezama03@hotmail.com
#   Sexo: Masculino
#
# ---------------------
# Opción 4: Eliminar contacto
#
# Ingrese el id del contacto: 1
#
# El contacto ha sido eliminado con éxito.
#
# ---------------------
# Opción 5: Bye bye!

def create_contact(contacts)
  print "Ingrese el nombre: "
  name = gets.chomp
  print "Ingrese el telefono: "
  phone = gets.chomp
  print "Ingrese el correo: "
  mail = gets.chomp
  print "Ingrese sexo (M o F): "
  gender = gets.chomp

  id = contacts.size == 0 ? 1 : contacts.last[:id] + 1
  new_contact = { id: id, name: name, phone: phone, mail: mail, gender: gender}

  contacts << new_contact
end

option = 0
contacts = [ ]

while option != 5
  puts "
    1. Buscar contacto
    2. Crear contacto
    3. Editar contacto
    4. Eliminar contacto
    5. Salir
  "
  print "Escribe la opción que deseas ejecutar: "
  option = gets.chomp.to_i

  case option
  when 1
    puts "Vamos a buscar un nuevo contacto"
  when 2
    puts "Opción 2: Crear contacto"
    contacts = create_contact(contacts)

    puts "El contacto ha sido creado con éxito!"
    puts "
      Nombre: #{contacts.last[:name]}
      Telefono: #{contacts.last[:phone]}
      Correo: #{contacts.last[:mail]}
      Sexo: #{contacts.last[:gender]}
    "
  when 3
    puts "Vamos a editar un nuevo contacto"
  when 4
    puts "Vamos a eliminar un nuevo contacto"
  when 5
    puts "Bye bye!"
  else
    puts "Opción invalida escoge una opción correcta"
  end
end
