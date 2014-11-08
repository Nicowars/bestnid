# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = Usuario.find_or_create_by(nombre:'Ramiro Lamas', mail:'rl@bestnid.com', password:'rl');
u = Usuario.find_or_create_by(nombre:'Mariano Petrucci', mail:'mp@bestnid.com', password:'mp');
u = Usuario.find_or_create_by(nombre:'Mabel Rimano', mail:'mr@bestnid.com', password:'mr');
u = Usuario.find_or_create_by(nombre:'Roberto Vegas', mail:'rv@bestnid.com', password:'rv');

p = Producto.find_or_create_by(nombre:'Llama', descripcion:'Llama adulta de oriunda de Tilcara. Es mansita', imagen:'llama.jpg');
p = Producto.find_or_create_by(nombre:'Espejo', descripcion:'Espejo sin marco. Medidas: 0.8m x 1.2m', imagen:'espejo.jpg');
