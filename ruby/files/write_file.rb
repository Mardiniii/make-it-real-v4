# Define file name
file_name = "students.txt"
puts "Vamos a escribir una nueva linea en #{file_name}"

# Open file with a+ mode
txt_file = open(file_name, 'a+')

# Get content to save in file
puts "Que desea guardar en el archivo?"
print '> '
user_text = gets

# Write content in file
txt_file.write(user_text)

# Close file before end program
txt_file.close

puts "El archivo ha sido modificado"
