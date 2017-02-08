products = [
  { id: 1, name: 'Hamburguesa Sencilla', price: 5_000, code: 'classic' },
  { id: 2, name: 'Hamburguesa Especial', price: 7_500, code: 'special' },
  { id: 3, name: 'Hamburguesa Super', price: 10_000, code: 'super' }
]

products.each do |product|
  puts "
    ID: #{product[:id]}
    Nombre: #{product[:name]}
    Precio: #{product[:price]}
    Code: #{product[:code]}
    #{'-' * 20}
  "
end
