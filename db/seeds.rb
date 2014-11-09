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

p = Producto.find_or_create_by(nombre:'Llama', descripcion:'Llama adulta de oriunda de Tilcara. Es mansita', imagen:'llama.jpg', usuario: u);
o = Oferta.find_or_create_by(producto: p, detalle:'Una llama es justo lo que necesito.', usuario: Usuario.find(2));
c = Comentario.find_or_create_by(producto: p, detalle:'¿Te lame?', usuario: Usuario.find(3), comentario: nil);
c = Comentario.find_or_create_by(producto: p, detalle:'Sí.', usuario: p.usuario, comentario: c);

p = Producto.find_or_create_by(nombre:'Espejo', descripcion:'Espejo sin marco. Medidas: 0.8m x 1.2m', imagen:'espejo.jpg', usuario: u);
o = Oferta.find_or_create_by(producto: p, detalle:'Siempre quise ser vampiro.', usuario: Usuario.find(1));
c = Comentario.find_or_create_by(producto: p, detalle:'¿Vidrio a parte?', usuario: Usuario.find(3), comentario: nil);
