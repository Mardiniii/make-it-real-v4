# String: "tres tristes tigres comen en tres tristes platos pobres tres tristes tigres"
#
# Para codificar:
#
# Array 1: [ "tres", "tristes", "tigres", "comen", "en", "platos", "pobres" ]
# Array 2: [ 0, 1, 2, 3, 4, 0, 1, 5, 6, 0, 1, 2 ]

class TextCompressor
  attr_reader :unique, :index

  def initialize(text)
    @unique = [] # Array to save unique words
    @index = [] # Array to save index from text content

    add_text(text)
  end

  def add_text(text)
    words = text.split
    words.each { |word| add_word(word) }
  end

  def add_word(word)
    i = unique_index_of(word)
    i ? @index << i : add_unique_word(word)
  end

  def unique_index_of(word)
    @unique.index(word)
  end

  def add_unique_word(word)
    @unique << word
    @index << @unique.size - 1
  end
end

compressor = TextCompressor.new("tres tristes tigres comen en tres tristes platos pobres tres tristes tigres")
print "Array 1: " + compressor.unique.to_s
puts "\n"
print "Array 2: " + compressor.index.to_s
print "\n"

print "\n"

compressor = TextCompressor.new("This specification is the specification for a specification")
print "Array 1: " + compressor.unique.to_s
puts "\n"
print "Array 2: " + compressor.index.to_s
print "\n"
