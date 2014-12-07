#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

d= Date.new(2015,5,2);

u = Usuario.find_or_create_by(alias: 'rl', nombre:'Ramiro Lamas', mail:'rl@bestnid.com', password:'rl', tel:'1', credit:"1234567891011121", domicilio:'Triangulo', vencimiento: d, nac: d, titular:'RAMIRO LAMAS', admin: false);
u = Usuario.find_or_create_by(alias: 'mp', nombre:'Mariano Petrucci', mail:'mp@bestnid.com', password:'mp', tel:'2', credit:'2345678910111213', domicilio:'Rectangulo', vencimiento: d, nac: d, titular:'MARIANO PETRUCCI', admin: false);
u = Usuario.find_or_create_by(alias: 'mr', nombre:'Mabel Rimano', mail:'mr@bestnid.com', password:'mr', tel:'3', credit:'3456789101112131', domicilio:'Cuadrado', vencimiento: d, nac: d, titular:'MABEL RIMANO', admin: false);
u = Usuario.find_or_create_by(alias: 'rv', nombre:'Roberto Vegas', mail:'rv@bestnid.com', password:'rv', tel:'4', credit:'4567891011121314', domicilio:'Elipse', vencimiento:d, nac: d, titular:'ROBERTO VEGAS', admin: false);
u = Usuario.find_or_create_by(alias: 'cm', nombre:'Carlos Maidana', mail:'cm@bestnid.com', password:'cm', tel:'5', credit:'5678910111213141', domicilio:'Pentagono', vencimiento:d, nac: d, titular:'CARLOS MAIDANA', admin: false);
u = Usuario.find_or_create_by(alias: 'cp', nombre:'Catalina Perez', mail:'cp@bestnid.com', password:'cp', tel:'6', credit:'6789101112131415', domicilio:'Hexagono', vencimiento:d, nac: d, titular:'CATALINA PEREZ', admin: false);
u = Usuario.find_or_create_by(alias: 'sr', nombre:'Sergio Ramirez', mail:'sr@bestnid.com', password:'sr', tel:'7', credit:'7891011121314151', domicilio:'Heptonogo', vencimiento:d, nac: d, titular:'SERGIO RAMIREZ', admin: false);
u = Usuario.find_or_create_by(alias: 'admin', nombre:'Administrador', mail:'admin@bestnid.com', password:'1234', tel:'8', credit:'7891011121314152', domicilio:'Octonogo', vencimiento:d, nac: d, titular:'ADMINISTRADOR', admin: true);

#-----------------------------
#---------CATEGORIAS----------
#-----------------------------
c = Categoria.new(nombre: 'Animales');
c.save;
c = Categoria.new(nombre: 'Antiguedades');
c.save;
c = Categoria.new(nombre: 'Arte');
c.save;
c = Categoria.new(nombre: 'Bebes');
c.save;
c = Categoria.new(nombre: 'Camaras');
c.save;
c = Categoria.new(nombre: 'Celulares');
c.save;
c = Categoria.new(nombre: 'Coleccionables');
c.save;
c = Categoria.new(nombre: 'Computacion');
c.save;
c = Categoria.new(nombre: 'Enanos de jardin');
c.save;
c = Categoria.new(nombre: 'Deportes');
c.save;
c = Categoria.new(nombre: 'Electrodomesticos');
c.save;
c = Categoria.new(nombre: 'Electronica');
c.save;
c = Categoria.new(nombre: 'Hogar');
c.save;
c = Categoria.new(nombre: 'Instrumentos musicales');
c.save;
c = Categoria.new(nombre: 'Joyas y relojes');
c.save;
c = Categoria.new(nombre: 'Juguetes');
c.save;
c = Categoria.new(nombre: 'Libros');
c.save;
c = Categoria.new(nombre: 'Peliculas y musica');
c.save;
c = Categoria.new(nombre: 'Ropa');
c.save;
c = Categoria.new(nombre: 'Salud y belleza');
c.save;
c = Categoria.new(nombre: 'Otros');
c.save;
c = Categoria.new(nombre: 'Vehiculos');
c.save;
c = Categoria.new(nombre: 'Videojuegos');
c.save;

d= Date.new(2014,12,12);
dv= Date.new(2013,11,11);

p = Producto.find_or_create_by(nombre:'Guantes de Acero', descripcion:'Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa', imagen:'guante.jpg', usuario: Usuario.find_by(alias: 'cm'), vencimiento: dv, categoria: Categoria.find_by(nombre: 'Otros'));
o = Oferta.find_or_create_by(producto: p, detalle:'Soy carnicero y lamentablemente perdí un dedo trabajando. Me gustaría comprar el producto para que no me vuelva a ocurrir.', monto: 100, usuario: Usuario.find_by(alias: 'rl'));
o = Oferta.find_or_create_by(producto: p, detalle:'Soy carpintero y la necesito para cuando manejo la sierra.', monto: 50, usuario: Usuario.find_by(alias: 'rv'));

p = Producto.find_or_create_by(nombre:'Llama', descripcion:'Llama adulta oriunda de Tilcara. Es mansita', imagen:'llama.jpg', usuario: Usuario.find_by(alias: 'cp'), vencimiento: d,  categoria: Categoria.find_by(nombre: 'Animales'));
o = Oferta.find_or_create_by(producto: p, detalle:'Siempre me gustaron los animales porque vivo solo y son buena compañia. Una llama es justo lo que necesito.', monto: 10000, usuario: Usuario.find_by(alias: 'mp'));
c = Comentario.find_or_create_by(producto: p, detalle:"Si.", usuario: p.usuario, pregunta: false);
c = Comentario.new(producto: p, detalle:"Te lame?", usuario: Usuario.find_by(alias: 'mr'), pregunta: true, comentario: c);
c.save;

p = Producto.find_or_create_by(nombre:'Espejo', descripcion:'Espejo sin marco. Medidas: 0.8m x 1.2m', imagen:'espejo.jpg', usuario: Usuario.find_by(alias: 'cm'), vencimiento: d, categoria: Categoria.find_by(nombre: 'Hogar'));
o = Oferta.find_or_create_by(producto: p, detalle:'Siempre quise ser vampiro. Con este espejo no me convertiría en vampiro pero me ayudaría a sentirme uno.', monto: 20, usuario: Usuario.find_by(alias: 'rl'));
c = Comentario.new(producto: p, detalle:"Vidrio a parte?", usuario: Usuario.find_by(alias: 'mr'), pregunta: true);
c.save;

p = Producto.find_or_create_by(nombre:'Kriptonita', descripcion:'200 gramos de Kriptonita', imagen:'kriptonita.jpg', usuario: Usuario.find_by(alias: 'cp'), vencimiento: dv, categoria: Categoria.find_by(nombre: 'Otros'));
o = Oferta.find_or_create_by(producto: p, detalle:'Odio a superman y si algún día lo llego a cruzar este producto me vendría al pelo.', monto: 500, usuario: Usuario.find_by(alias: 'mr'));
p.ganador=o.id
p.save

p = Producto.find_or_create_by(nombre:'Aceite y Vinagre', descripcion:'200ml de aceite y 300ml de vinagre. No incluye fascos', imagen:'vinagre.jpg', usuario: Usuario.find_by(alias: 'sr'), categoria: Categoria.find_by(nombre: 'Hogar'), vencimiento: dv);

p = Producto.find_or_create_by(nombre:'Animales de Porcelana', descripcion:'Animales para decorar', imagen:'http://mlu-s1-p.mlstatic.com/1693-MLU29522838_6682-O.jpg', usuario: Usuario.find_by(alias: 'sr'), categoria: Categoria.find_by(nombre: 'Hogar'), vencimiento: d);

