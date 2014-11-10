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

p = Producto.find_or_create_by(nombre:'Llama', descripcion:'Llama adulta mansita', imagen:'llama.jpg', usuario: u);
o = Oferta.find_or_create_by(producto: p, detalle:'Una llama es justo lo que necesito.', usuario: Usuario.find_by(alias: 'mp'));
c = Comentario.new(producto: p, detalle:"Te lame?", usuario: Usuario.find_by(alias: 'mr'));
c.save;
c = Comentario.find_or_create_by(producto: p, detalle:"Si.", usuario: p.usuario, comentario: c);

p = Producto.find_or_create_by(nombre:'Espejo', descripcion:'Marco sin espejo', imagen:'espejo.jpg', usuario: u);
o = Oferta.find_or_create_by(producto: p, detalle:'Siempre quise ser vampiro.', usuario: Usuario.find_by(alias: 'rl'));
c = Comentario.new(producto: p, detalle:"Vidrio a parte?", usuario: Usuario.find_by(alias: 'mr'), comentario: nil);
c.save;
