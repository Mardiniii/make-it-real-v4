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

def edit_contact(contacts, id)

  contact_to_edit = contacts.detect { |contact| contact[:id] == id }

  if contact_to_edit
    index = contacts.index(contact_to_edit)

    print "Ingrese el nombre: "
    name = gets.chomp
    print "Ingrese el telefono: "
    phone = gets.chomp
    print "Ingrese el correo: "
    mail = gets.chomp
    print "Ingrese sexo (M o F): "
    gender = gets.chomp

    contact_to_edit = { id: id, name: name, phone: phone, mail: mail, gender: gender }

    contacts[index] = contact_to_edit

    puts "El contacto ha sido editado con éxito!"
    print_contact(contact_to_edit)
  else
    puts "El contacto que deseas editar no existe!"
  end
  contacts
end

def print_contact(contact)
  puts "
    ID: #{contact[:id]}
    Nombre: #{contact[:name]}
    Telefono: #{contact[:phone]}
    Correo: #{contact[:mail]}
    Sexo: #{contact[:gender]}
  "
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
    print_contact(contacts.last)
  when 3
    puts "Opción 3: Editar contacto"

    contacts.each do |contact|
      print_contact(contact)
    end

    print "Ingrese el ID del contacto que desea editar: "
    id = gets.chomp.to_i

    contacts = edit_contact(contacts, id)

  when 4
    puts "Vamos a eliminar un nuevo contacto"
  when 5
    puts "Bye bye!"
  else
    puts "Opción invalida escoge una opción correcta"
  end
end
