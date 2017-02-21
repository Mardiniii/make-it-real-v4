txt_file = open('list.txt')

txt_file.each_line do |line|
  student = line.split(',')

  puts "Nombre: #{student[0]}"
  puts "ID: #{student[1]}"
end
