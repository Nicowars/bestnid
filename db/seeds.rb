# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = Usuario.find_or_create_by(alias: 'rl', nombre:'Ramiro Lamas', mail:'rl@bestnid.com', password:'rl');
u = Usuario.find_or_create_by(alias: 'mp', nombre:'Mariano Petrucci', mail:'mp@bestnid.com', password:'mp');
u = Usuario.find_or_create_by(alias: 'mr', nombre:'Mabel Rimano', mail:'mr@bestnid.com', password:'mr');
u = Usuario.find_or_create_by(alias: 'rv', nombre:'Roberto Vegas', mail:'rv@bestnid.com', password:'rv');

p = Producto.find_or_create_by(nombre:'Llama', descripcion:'Llama adulta de oriunda de Tilcara. Es mansita', imagen:'llama.jpg');
o = Oferta.find_or_create_by(producto: p, detalle:'Una llama es justo lo que necesito.', usuario: Usuario.find(2));

p = Producto.find_or_create_by(nombre:'Espejo', descripcion:'Espejo sin marco. Medidas: 0.8m x 1.2m', imagen:'espejo.jpg');
o = Oferta.find_or_create_by(producto: p, detalle:'Siempre quise ser vampiro.', usuario: Usuario.find(1));
