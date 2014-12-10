#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#-----------------------------
#-----------USUARIOS----------
#-----------------------------

d= Date.new(2015,1,1);

u = Usuario.find_or_create_by(alias: 'rl', nombre:'Ramiro Lamas', mail:'rl@bestnid.com', password:'rl', tel:'1', credit:"1234567891011121", domicilio:'Triangulo', vencimiento: d, nac: d, titular:'RAMIRO LAMAS', admin: false);
u = Usuario.find_or_create_by(alias: 'mp', nombre:'Mariano Petrucci', mail:'mp@bestnid.com', password:'mp', tel:'2', credit:'2345678910111213', domicilio:'Rectangulo', vencimiento: d, nac: d, titular:'MARIANO PETRUCCI', admin: false);
u = Usuario.find_or_create_by(alias: 'mr', nombre:'Mabel Rimano', mail:'mr@bestnid.com', password:'mr', tel:'3', credit:'3456789101112131', domicilio:'Cuadrado', vencimiento: d, nac: d, titular:'MABEL RIMANO', admin: false);
u = Usuario.find_or_create_by(alias: 'rv', nombre:'Roberto Vegas', mail:'rv@bestnid.com', password:'rv', tel:'4', credit:'4567891011121314', domicilio:'Elipse', vencimiento:d, nac: d, titular:'ROBERTO VEGAS', admin: false);
u = Usuario.find_or_create_by(alias: 'cm', nombre:'Carlos Maidana', mail:'cm@bestnid.com', password:'cm', tel:'5', credit:'5678910111213141', domicilio:'Pentagono', vencimiento:d, nac: d, titular:'CARLOS MAIDANA', admin: false);
u = Usuario.find_or_create_by(alias: 'cp', nombre:'Catalina Perez', mail:'cp@bestnid.com', password:'cp', tel:'6', credit:'6789101112131415', domicilio:'Hexagono', vencimiento:d, nac: d, titular:'CATALINA PEREZ', admin: false);
u = Usuario.find_or_create_by(alias: 'sr', nombre:'Sergio Ramirez', mail:'sr@bestnid.com', password:'sr', tel:'7', credit:'7891011121314151', domicilio:'Heptonogo', vencimiento:d, nac: d, titular:'SERGIO RAMIREZ', admin: false);
u = Usuario.find_or_create_by(alias: 'admin', nombre:'Administrador', mail:'admin@bestnid.com', password:'1234', tel:'8', credit:'7891011121314152', domicilio:'Octonogo', vencimiento:d, nac: d, titular:'ADMINISTRADOR', admin: true);

u = Usuario.find_or_create_by(alias: 'alexd', nombre:'Alex Muriel', mail:'alex.damian.muriel@gmail.com', password:'am', tel:'9', credit:'1112131415161718', domicilio:'Avenida falsa 123', vencimiento:d, nac: d, titular:'ALEX', admin: false);
u.created_at=Date.new(2014,2,3);
u.save;
u = Usuario.find_or_create_by(alias: 'gabym', nombre:'Gabriel Morgillo', mail:'gabymorgi@gmail.com', password:'gm', tel:'10', credit:'2122232425262728', domicilio:'Avenida falsa 124', vencimiento:d, nac: d, titular:'GABY', admin: false);
u.created_at=Date.new(2014,9,14);
u.save;
u = Usuario.find_or_create_by(alias: 'jaimez', nombre:'Jaime Zubieta', mail:'jaime.zb0@gmail.com', password:'jz', tel:'11', credit:'3132333435363738', domicilio:'Pellegrini', vencimiento:d, nac: d, titular:'JAIME', admin: false);
u.created_at=Date.new(2014,5,29);
u.save;

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
c = Categoria.new(nombre: 'Musica');
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

#-----------------------------
#----------PRODUCTOS----------
#-----------------------------

d= Date.new(2014,12,12);

p = Producto.find_or_create_by(nombre:'Guantes de Acero', descripcion:'Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa', imagen:'guante.jpg', usuario: Usuario.find_by(alias: 'cm'), vencimiento: d, categoria: Categoria.find_by(nombre: 'Otros'));
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

p = Producto.find_or_create_by(nombre:'Kriptonita', descripcion:'200 gramos de Kriptonita', imagen:'kriptonita.jpg', usuario: Usuario.find_by(alias: 'cp'), vencimiento: d, categoria: Categoria.find_by(nombre: 'Otros'));
o = Oferta.find_or_create_by(producto: p, detalle:'Odio a superman y si algún día lo llego a cruzar este producto me vendría al pelo.', monto: 500, usuario: Usuario.find_by(alias: 'mr'));
p.ganador=o.id
p.save

p = Producto.find_or_create_by(nombre:'Aceite y Vinagre', descripcion:'200ml de aceite y 300ml de vinagre. No incluye fascos', imagen:'vinagre.jpg', usuario: Usuario.find_by(alias: 'sr'), categoria: Categoria.find_by(nombre: 'Hogar'), vencimiento: d);

#-----------------------------
#------------DEMO-------------
#-----------------------------

dv= Date.new(2014,1,1);

p = Producto.find_or_create_by(nombre:'Coleccion de comics', descripcion:'Marvel NOW! es un relanzamiento de varios cómics publicados por Marvel Comics, programado para debutar en octubre de 2012 con nuevas ediciones', imagen:'http://wtpics.mdata.fr/mnow1.jpg', usuario: Usuario.find_by(alias: 'alexd'), categoria: Categoria.find_by(nombre: 'Libros'), vencimiento: d);
o = Oferta.find_or_create_by(producto: p, detalle:'Tengo un amigo que es un gran fanatico de los comics y quisiera hacerle este regalo', monto: 1000, usuario: Usuario.find_by(alias: 'gabym'));
o = Oferta.find_or_create_by(producto: p, detalle:'Tengo que atraparlos a todos', monto: 7, usuario: Usuario.find_by(alias: 'jaimez'));
p.vencimiento=dv;
p.save;

p = Producto.find_or_create_by(nombre:'Monster Monster The Almost', descripcion:'Es el segundo álbum de la banda de rock alternativo The Almost, lanzado el 3 de noviembre, 2009', imagen:'http://hottopic.scene7.com/is/image/HotTopic/236304_hi?wid=1360', usuario: Usuario.find_by(alias: 'gabym'), categoria: Categoria.find_by(nombre: 'Musica'), vencimiento: d);
o = Oferta.find_or_create_by(producto: p, detalle:'Me encanta esta banda y no he podido conseguir este disco', monto: 80, usuario: Usuario.find_by(alias: 'alexd'));
c = Comentario.new(producto: p, detalle:"Tiene swag?", usuario: Usuario.find_by(alias: 'jaimez'), pregunta: true);
p.vencimiento=dv;
p.save;

p = Producto.find_or_create_by(nombre:'Lamparas de lava', descripcion:'El fluir apacible de las gotas de cera formadas al azar sugiere una corriente de lava', imagen:'http://mla-s2-p.mlstatic.com/lampara-lava-32-cm-modelo-bala-ideal-regalo-local-obelisco-5404-MLA4439670507_062013-O.jpg', usuario: Usuario.find_by(alias: 'gabym'), categoria: Categoria.find_by(nombre: 'Hogar'), vencimiento: dv);

p = Producto.find_or_create_by(nombre:'La interpretacion de los suenios', descripcion:'La interpretación de los sueños (Die Traumdeutung) es una obra de Sigmund Freud que inauguró la teoría freudiana del análisis de los sueños', imagen:'http://anonymousopc.ucoz.com/Portadas/sigmund-freud-la-interpretacion-de-los-suenos-libr.jpg', usuario: Usuario.find_by(alias: 'rl'), categoria: Categoria.find_by(nombre: 'Libros'), vencimiento: dv);
o = Oferta.find_or_create_by(producto: p, detalle:'Quiero entender mis sueños turbios', monto: 250, usuario: Usuario.find_by(alias: 'mp'));
p.ganador=o.id
p.created_at = Date.new(2014,2,3);
p.save

p = Producto.find_or_create_by(nombre:'Rubik mirror', descripcion:'El cubo de espejos es mecánicamente igual que el cubo de Rubik, pero los 26 cubos que lo conforman, en lugar diferir en color, difieren en forma y todos tienen el mismo color, generalmente plateado. Solamente tiene forma cúbica cuando se encuentra resuelto', imagen:'http://gadgets.boingboing.net/filesroot/rubiks_mirror_cube.jpg', usuario: Usuario.find_by(alias: 'mp'), categoria: Categoria.find_by(nombre: 'Juguetes'), vencimiento: dv);
o = Oferta.find_or_create_by(producto: p, detalle:'Es cubicamente hermoso, lo necesito', monto: 150, usuario: Usuario.find_by(alias: 'mr'));
p.ganador=o.id
p.created_at = Date.new(2014,3,29);
p.save

p = Producto.find_or_create_by(nombre:'Notebook Samsung', descripcion:'Procesador Quad-Core, 4 GB de memoria, Pantalla HD LED de 13.3", Windows 8. Samsung recomienda Windows.', imagen:'http://mla-s1-p.mlstatic.com/pantalla-notebook-samsung-np300e5-np300e4-series-13658-MLA3336012718_102012-F.jpg', usuario: Usuario.find_by(alias: 'mr'), categoria: Categoria.find_by(nombre: 'Computacion'), vencimiento: dv);
o = Oferta.find_or_create_by(producto: p, detalle:'Es cubicamente hermoso, lo necesito', monto: 150, usuario: Usuario.find_by(alias: 'rv'));
p.ganador=o.id
p.created_at = Date.new(2014,5,29);
p.save

p = Producto.find_or_create_by(nombre:'Triangulo', descripcion:'El triángulo es un instrumento percutido de metal, perteneciente al grupo de los idiofonos, porque el sonido resultante es fruto de la vibración del metal tras ser golpeado con la baqueta', imagen:'http://classicalmusicbroadcast.com/wp-content/uploads/2014/08/sku_146941_3.jpg ', usuario: Usuario.find_by(alias: 'rv'), categoria: Categoria.find_by(nombre: 'Musica'), vencimiento: dv);
o = Oferta.find_or_create_by(producto: p, detalle:'Es el único instrumento que puedo tocar', monto: 300, usuario: Usuario.find_by(alias: 'cm'));
p.ganador=o.id
p.created_at = Date.new(2014,9,14);
p.save

p = Producto.find_or_create_by(nombre:'Mjolnir', descripcion:'En la mitología nórdica, Mjolnir es el martillo del dios Thor', imagen:'http://www.redicubricks.com/wp-content/uploads/2013/08/005-mjolnir.jpg', usuario: Usuario.find_by(alias: 'cm'), categoria: Categoria.find_by(nombre: 'Antiguedades'), vencimiento: dv);
o = Oferta.find_or_create_by(producto: p, detalle:'Yo soy digno de levantar el martillo de Thor', monto: 1, usuario: Usuario.find_by(alias: 'cp'));
p.ganador=o.id
p.created_at = Date.new(2014,10,29);
p.save

p = Producto.find_or_create_by(nombre:'Mazo estructura', descripcion:'Starter Deck: Jaden Yuki is a Starter Deck in the Yu-Gi-Oh! Trading Card Game (TCG)', imagen:'http://940ee6dce6677fa01d25-0f55c9129972ac85d6b1f4e703468e6b.r99.cf2.rackcdn.com/products/pictures/169068.jpg', usuario: Usuario.find_by(alias: 'cp'), categoria: Categoria.find_by(nombre: 'Coleccionables'), vencimiento: dv);
o = Oferta.find_or_create_by(producto: p, detalle:'Lo quiero porque tiene cartas útiles para mi mazo', monto: 90, usuario: Usuario.find_by(alias: 'sr'));
p.ganador=o.id
p.created_at = Date.new(2014,11,12);
p.save

p = Producto.find_or_create_by(nombre:'Esmeraldas Caos', descripcion:'Las Esmeraldas Caos tienen propiedades místicas con habilidades de un gran poder', imagen:'http://img2.wikia.nocookie.net/__cb20130402044704/chaos-chronicles/images/5/5b/The_Seven_Chaos_Emeralds_by_MattInc.png', usuario: Usuario.find_by(alias: 'sr'), categoria: Categoria.find_by(nombre: 'Antiguedades'), vencimiento: dv);
o = Oferta.find_or_create_by(producto: p, detalle:'Las necesito porque quiero adornar mi departamento con cosas raras', monto: 350, usuario: Usuario.find_by(alias: 'rl'));
p.ganador=o.id
p.created_at = Date.new(2014,11,26);
p.save


