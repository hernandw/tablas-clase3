drop table if exists libros;
 
 create table libros(
  codigo serial,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial smallint not null,
  precio decimal(5,2),
  primary key(codigo)
 );
 
 drop table if exists editoriales;
 
 create table editoriales(
  codigo serial,
  nombre varchar(20),
  primary key (codigo)
 );

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




   -- para el ejercicio de combinacion de mas de dos tablas usamos join y creamos otra tabla

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



   EJERCICIOS COMPLETO
   Primer problema:
Una empresa tiene registrados sus clientes en una tabla llamada "clientes", también tiene una tabla 
"provincias" donde registra los nombres de las provincias.

1- Créelas con las siguientes estructuras:
 create table clientes (
  codigo serial,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia smallint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo serial,
  nombre varchar(20),
  primary key (codigo)
 );

2- Ingrese algunos registros para ambas tablas:
 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes(nombre,domicilio,ciudad,codigoprovincia) 
   values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
   values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
   values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
   values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
   values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
   values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
   values ('Torres Fabiola','Alem 777','Ibera',3);

3- Obtenga los datos de ambas tablas, usando alias

4- Obtenga la misma información anterior pero ordenada por nombre de provincia.

5- Recupere los clientes de la provincia "Santa Fe" (2 registros devueltos)


Segundo problema:
Un club dicta clases de distintos deportes. Almacena la información en una tabla llamada 
"inscritos" que incluye el documento, el nombre, el deporte y si la matricula esta paga o no y una 
tabla llamada "inasistencias" que incluye el documento, el deporte y la fecha de la inasistencia.
1 - Cree las tablas:

 create table inscritos(
  nombre varchar(30),
  documento char(8),
  deporte varchar(15),
  matricula char(1), --'s'=paga 'n'=impaga
  primary key(documento,deporte)
 );

 create table inasistencias(
  documento char(8),
  deporte varchar(15),
  fecha date
 );

2- Ingrese algunos registros para ambas tablas:
 insert into inscriptos values('Juan Perez','22222222','tenis','s');
 insert into inscriptos values('Maria Lopez','23333333','tenis','s');
 insert into inscriptos values('Agustin Juarez','24444444','tenis','n');
 insert into inscriptos values('Marta Garcia','25555555','natacion','s');
 insert into inscriptos values('Juan Perez','22222222','natacion','s');
 insert into inscriptos values('Maria Lopez','23333333','natacion','n');

 insert into inasistencias values('22222222','tenis','2006-12-01');
 insert into inasistencias values('22222222','tenis','2006-12-08');
 insert into inasistencias values('23333333','tenis','2006-12-01');
 insert into inasistencias values('24444444','tenis','2006-12-08');
 insert into inasistencias values('22222222','natacion','2006-12-02');
 insert into inasistencias values('23333333','natacion','2006-12-02');

3- Muestre el nombre, el deporte y las fechas de inasistencias, ordenado por nombre y deporte.
Note que la condición es compuesta porque para identificar los registros de la tabla "inasistencias"
necesitamos ambos campos.

4- Obtenga el nombre, deporte y las fechas de inasistencias de un determinado inscrito en un 
determinado deporte (3 registros)

5- Obtenga el nombre, deporte y las fechas de inasistencias de todos los inscritos que pagaron la 
matrícula(4 registros)