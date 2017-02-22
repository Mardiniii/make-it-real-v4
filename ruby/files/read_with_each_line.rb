# Open list.txt file
txt_file = open('list.txt')

# Iterates each_line of the file
txt_file.each_line do |line|
  student = line.split(',')

  # Print line content
  puts "Nombre: #{student[0]}"
  puts "ID: #{student[1]}"
end

# Close file
txt_file.close
