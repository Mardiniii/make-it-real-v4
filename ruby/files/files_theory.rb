=begin
  1. Read a file
    txt_file = open(file_path)
    puts txt_file.read

  2. Write in file
    txt_file = open(file_path)
    txt_file = write('Hola mundo!')

  3. Essential Methods
    close -- Closes the file. Like File->Save.. in your editor.
    read -- Reads the contents of the file. You can assign the result to a variable.
    readline -- Reads just one line of a text file.
    truncate -- Empties the file. Watch out if you care about the file.
    write('stuff') -- Writes "stuff" to the file.

  4. Copy from one file to another
    Modes:
    r
    r+
    w
    w+
    a
    a+
=end
