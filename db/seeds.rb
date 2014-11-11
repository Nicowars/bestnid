# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = Usuario.find_or_create_by(alias: 'rl', nombre:'Ramiro Lamas', mail:'rl@bestnid.com', password:'rl', tel:'1', credit:'1');
u = Usuario.find_or_create_by(alias: 'mp', nombre:'Mariano Petrucci', mail:'mp@bestnid.com', password:'mp', tel:'2', credit:'2');
u = Usuario.find_or_create_by(alias: 'mr', nombre:'Mabel Rimano', mail:'mr@bestnid.com', password:'mr', tel:'3', credit:'3');
u = Usuario.find_or_create_by(alias: 'rv', nombre:'Roberto Vegas', mail:'rv@bestnid.com', password:'rv', tel:'4', credit:'4');
u = Usuario.find_or_create_by(alias: 'cm', nombre:'Carlos Maidana', mail:'cm@bestnid.com', password:'cm', tel:'5', credit:'5');
u = Usuario.find_or_create_by(alias: 'cp', nombre:'Catalina Perez', mail:'cp@bestnid.com', password:'cp', tel:'6', credit:'6');
u = Usuario.find_or_create_by(alias: 'sr', nombre:'Sergio Ramirez', mail:'sr@bestnid.com', password:'cr', tel:'7', credit:'7');

p = Producto.find_or_create_by(nombre:'Guantes de Acero', descripcion:'Guante de malla de acero inox. tejido, anticorte, marca manulatex de industria francesa', imagen:'guante.jpg', usuario: Usuario.find_by(alias: 'cm'));
o = Oferta.find_or_create_by(producto: p, detalle:'Soy carnicero y lamentablemente perdi un dedo trabajando. Me gustaria comprar el producto para que no me vuelva a ocurrir.', usuario: Usuario.find_by(alias: 'rm'));
o = Oferta.find_or_create_by(producto: p, detalle:'Soy carpintero y la necesito para cuando manejo la sierra.', usuario: Usuario.find_by(alias: 'rv'));

p = Producto.find_or_create_by(nombre:'Llama', descripcion:'Llama adulta oriunda de Tilcara. Es mansita', imagen:'llama.jpg', usuario: u);
o = Oferta.find_or_create_by(producto: p, detalle:'Siempre me gustaron los animales porque vivo solo y son buena compania. Una llama es justo lo que necesito.', usuario: Usuario.find_by(alias: 'mp'));
c = Comentario.new(producto: p, detalle:"Te lame?", usuario: Usuario.find_by(alias: 'mr'));
c.save;
c = Comentario.find_or_create_by(producto: p, detalle:"Si.", usuario: p.usuario, comentario: c);

p = Producto.find_or_create_by(nombre:'Espejo', descripcion:'Espejo sin marco. Medidas: 0.8m x 1.2m', imagen:'espejo.jpg', usuario: u);
o = Oferta.find_or_create_by(producto: p, detalle:'Siempre quise ser vampiro. Con este espejo no me convertiria en vampiro pero me ayudaria a sentirme uno.', usuario: Usuario.find_by(alias: 'rl'));
c = Comentario.new(producto: p, detalle:"Vidrio a parte?", usuario: Usuario.find_by(alias: 'mr'), comentario: nil);
c.save;

p = Producto.find_or_create_by(nombre:'Kriptonita', descripcion:'200 gramos de Kriptonita', imagen:'kriptonita.jpg', usuario: u);
o = Oferta.find_or_create_by(producto: p, detalle:'Odio a superman y si algun dia lo llego a cruzar este producto me vendria al pelo.', usuario: Usuario.find_by(alias: 'mr'));

p = Producto.find_or_create_by(nombre:'Aceite y Vinagre', descripcion:'200ml de aceite y 300ml de vinagre. No incluye fascos', imagen:'vinagre.jpg', usuario: u);