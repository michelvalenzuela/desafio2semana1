CREATE DATABASE peliculas;

\c peliculas

DROP TABLE IF EXISTS reparto;
DROP TABLE IF EXISTS peliculas;

CREATE TABLE peliculas(
id INT PRIMARY KEY,
pelicula VARCHAR(100),
estreno INT,
director VARCHAR(100)
);

CREATE TABLE reparto(
id int,
nombre VARCHAR(50)
);
\copy peliculas FROM 'C:/Users/miche/Desktop/postgreSQL/peliculas.csv' csv header;
\copy reparto FROM 'C:/Users/miche/Desktop/postgreSQL/reparto.csv' csv header;

SELECT id FROM peliculas WHERE pelicula='Titanic';

SELECT nombre from reparto WHERE id=2;


SELECT COUNT(nombre) from reparto WHERE nombre='Harrison Ford';


select pelicula from peliculas WHERE estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC;

SELECT LENGTH(pelicula) as longitud_titulo from peliculas;

SELECT MAX(LENGTH(pelicula)) as maximo,pelicula from peliculas;








