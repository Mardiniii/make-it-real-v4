# Source and destiny files
from_file = 'students.txt'
to_file = 'list.txt'

# Open and read content from source file
puts "Opening source file!"
source_txt = open(from_file)
puts "Reading source file!"
source_content = source_txt.read
# Close source file
source_txt.close

# Open or create destiny file
destiny = open(to_file, 'w')
# Write source content in destiny file
puts "Writing on destiny file!"
destiny.write(source_content)

# Close destiny file
destiny.close

puts "The operation is done!"
