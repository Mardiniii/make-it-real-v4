person = "%{pronoum} is %{name} %{lastname} and %{pronoum} is %{age} years old"

puts person % { pronoum: 'He', name: 'Sebastian', lastname: 'Zapata', age: 27 }
puts person % { pronoum: 'He', name: 'Esteban', lastname: 'Buitrago', age: 23 }
puts person % { pronoum: 'He', name: 'Andres', lastname: 'Gil', age: 27 }
puts person % { pronoum: 'She', name: 'Angelica', lastname: 'Duque', age: 25 }
