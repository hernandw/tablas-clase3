/*
CONSULTAS COMPLEJAS (TABLAS)

1. INNER JOIN

Son aquellas consultas que en su realización están involucradas dos o más tablas.

las sentencias JOIN (unir, combinar) realiza operaciones que relaciona una o más tablas para obtener un resultado que incluya campos y registros de ambas.

las tablas a combinar deben tener un campo en comun




Ejercicio: mostrar el nombre del libro, autor, precio, y categoria de los libros


2. LEFT JOIN:

Vimos que una combinación interna (join) encuentra registros de la primera tabla que se correspondan con los registros de la segunda, es decir, que cumplan la condición del "on" y si un valor de la primera tabla no se encuentra en la segunda tabla, el registro no aparece.

Si queremos saber qué registros de una tabla NO encuentran correspondencia en la otra, es decir, no existe valor coincidente en la segunda, necesitamos otro tipo de combinación, "outer join" (combinación externa).

Las combinaciones externas combinan registros de dos tablas que cumplen la condición, más los registros de la segunda tabla que no la cumplen; es decir, muestran todos los registros de las tablas relacionadas, aún cuando no haya valores coincidentes entre ellas.

Este tipo de combinación se emplea cuando se necesita una lista completa de los datos de una de las tablas y la información que cumple con la condición. Las combinaciones externas se realizan solamente entre 2 tablas.

Ejercicio: mostrar los registros de la primera tabla (libros) que no tengan correspondencia en la segunda (editoriales)

3. RIGHT JOIN

Vimos que una combinación externa izquierda (left join) encuentra registros de la tabla izquierda que se correspondan con los registros de la tabla derecha y si un valor de la tabla izquierda no se encuentra en la tabla derecha, el registro muestra los campos correspondientes a la tabla de la derecha seteados a "null".

Una combinación externa derecha ("right outer join" o "right join") opera del mismo modo sólo que la tabla derecha es la que localiza los registros en la tabla izquierda.

4. full join

Una combinación externa completa ("full outer join" o "full join") retorna todos los registros de ambas tablas. Si un registro de una tabla izquierda no encuentra coincidencia en la tabla derecha, las columnas correspondientes a campos de la tabla derecha aparecen seteadas a "null", y si la tabla de la derecha no encuentra correspondencia en la tabla izquierda, los campos de esta última aparecen conteniendo "null".


FUNCIONES DE AGRUPAMIENTO GROUP BY

Podemos usar "group by" y las funciones de agrupamiento con combinaciones de tablas.

Para ver la cantidad de libros de cada editorial consultando la tabla "libros" y "editoriales", tipeamos:


AGRUPAMIENTO DE MÁS DE 2 TABLAS



*/