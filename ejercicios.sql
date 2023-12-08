--creacion de la tabla libros

create table libros(
  codigo serial,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial smallint not null,
  precio decimal(5,2),
  primary key(codigo)
 );
 
 -- creacion de la tabla editorial
 
 create table editoriales(
  codigo serial,
  nombre varchar(20),
  primary key (codigo)
 );
 
 -- Registros de las tablas
 insert into editoriales(nombre) values('Planeta');
 insert into editoriales(nombre) values('Emece');
 insert into editoriales(nombre) values('Siglo XXI');

 insert into libros(titulo,autor,codigoeditorial,precio) 
  values('El aleph','Borges',1,20);
 insert into libros(titulo,autor,codigoeditorial,precio)
   values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros(titulo,autor,codigoeditorial,precio)
   values('Aprenda PHP','Mario Molina',2,50);
 insert into libros(titulo,autor,codigoeditorial,precio)
   values('Java en 10 minutos',default,4,45);
   insert into libros(titulo,autor,codigoeditorial,precio)
   values('Codigo Limpio','Robert Cecil',3,60);
   
   select * from libros;
   select * from editoriales;
   
   -- se solicita una tabla con los nombre de los autores, titulo del libro, nombre de editorial y precio
   
   select  autor, titulo, precio, nombre as editorial
   from libros l
   join editoriales e
   on l.codigoeditorial = e.codigo;
   
   create table usuarios(
	   id serial,
   name varchar,
   email varchar
   );
   
   alter table usuarios add column id_usuario int;
   
   create table roles (
	   id serial,
   id_usuario int,
	  rol varchar
   );
   
   
   select * from usuarios;
   select * from roles;
   
   
   insert into usuarios values(Default, 'Juan', 'juan@gmail.com', 1);
   insert into usuarios values(Default, 'Pedro', 'pedro@gmail.com', 30);
   insert into usuarios values(Default, 'Maria', 'maria@gmail.com', 40);
   insert into usuarios values(Default, 'susana', 'susana@gmail.com', 50);
   
   
   insert into roles values (default, 1, 'administrador' );
   insert into roles values (default, 30, 'devops' );
   insert into roles values (default, 40, 'frontend' );
   
  select * from usuarios a
  inner join roles b
  on a.id_usuario = b.id_usuario;
  
   
   -- ahora mostrar los libros con left join
   
   select  autor, titulo, precio, nombre as editorial
   from libros l
   left join editoriales e
   on l.codigoeditorial = e.codigo;
   
   
   -- ,ostrando todos los campos
   
   select  *
   from libros l
   left join editoriales e
   on l.codigoeditorial = e.codigo;
   
   -- ahora con las tablas inversas
   
   select  autor, titulo, precio, nombre as editorial
   from editoriales e
   left join libros l
   on l.codigoeditorial = e.codigo;
   
   
   -- con las tablas inversas
   
   select  *
   from editoriales e
   left join libros l
   on l.codigoeditorial = e.codigo;
   
   
   -- contar la cantidad de libros por editorial
   
   select nombre as editorial, count(titulo) as cantidad_libros
   from libros l
   inner join editoriales e
   on e.codigo = l.codigoeditorial 
   group by editorial;
   
   -- right join
   select  autor, titulo, precio, nombre as editorial
   from editoriales e
   right join libros l
   on l.codigoeditorial = e.codigo;
   
   -- combinas 2 o mas tablas
   
   drop table if exists libros;
 drop table if exists autores;
 drop table if exists editoriales;
 
 create table libros(
  codigo serial,
  titulo varchar(40),
  codigoautor int not null,
  codigoeditorial smallint not null,
  precio decimal(5,2),
  primary key(codigo)
 );

 create table autores(
  codigo serial,
  nombre varchar(20),
  primary key (codigo)
 );
 
  create table editoriales(
  codigo serial,
  nombre varchar(20),
  primary key (codigo)
 );
   
   
   insert into editoriales(nombre) values('Planeta');
 insert into editoriales(nombre) values('Emece');
 insert into editoriales(nombre) values('Siglo XXI');
 insert into editoriales(nombre) values('Plaza');
 
 insert into autores(nombre) values ('Richard Bach');
 insert into autores(nombre) values ('Borges');
 insert into autores(nombre) values ('Jose Hernandez');
 insert into autores(nombre) values ('Mario Molina');
 insert into autores(nombre) values ('Paenza');
 
 insert into libros(titulo,codigoautor,codigoeditorial,precio) 
   values('El aleph',2,2,20);
 insert into libros(titulo,codigoautor,codigoeditorial,precio)
   values('Martin Fierro',3,1,30);
 insert into libros(titulo,codigoautor,codigoeditorial,precio)
   values('Aprenda PHP',4,3,50);
 insert into libros(titulo,codigoautor,codigoeditorial,precio)
   values('Uno',1,1,15);
 insert into libros(titulo,codigoautor,codigoeditorial,precio)
   values('Java en 10 minutos',0,3,45);
 insert into libros(titulo,codigoautor,codigoeditorial,precio)
   values('Matematica estas ahi',0,0,15);
 insert into libros(titulo,codigoautor,codigoeditorial,precio)
   values('Java de la A a la Z',4,0,50);
   
   select * from libros;
   select * from autores;
   select * from editoriales;
   
   -- se solicita mostrar una tabla con los siguientes campos titulo, autor y la editorial
   
   select titulo, a.nombre as autor, e.nombre as editorial
   from libros l 
   join autores a
   on l.codigoautor = a.codigo
   join editoriales e
   on e.codigo = l.codigoeditorial;
   
   