CREATE DATABASE librerias;

\c librerias;

CREATE TABLE autores(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE libros(
    codigo INT PRIMARY KEY,
    titulo VARCHAR(50) UNIQUE);

CREATE TABLE autores_libros(
    id_autor INT REFERENCES autores(id),
    codigo_autor INT REFERENCES libros(codigo));

CREATE TABLE editoriales(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50));

CREATE TABLE editoriales_libros(
    id_editoriales INT REFERENCES editoriales(id),
    codigo_libros INT UNIQUE REFERENCES libros(codigo));

CREATE TABLE lectores(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50));

CREATE TABLE prestamo(
    id SERIAL PRIMARY KEY,
    codigo_libros INT REFERENCES libros(codigo),
    fecha_devolucion DATE CHECK (fecha_devolucion< CURRENT_DATE),
    id_lector INT REFERENCES lectores(id));

-- INGRESAR 
INSERT INTO libros(codigo, titulo) VALUES
('515','Ecuaciones diferenciasles');
INSERT INTO libros(codigo, titulo) VALUES
('540', 'quimica');
INSERT INTO libros(codigo, titulo) VALUES
('530', 'fisica');
INSERT INTO libros(codigo, titulo) VALUES
('519', 'estadisica');
INSERT INTO libros(codigo, titulo) VALUES
('512', 'algebra lineal');

INSERT INTO autores(nombre) VALUES
('Lambe'), ('Christen'),('Serway'),
('Murray'), ('Voevodin'), ('Tranter');

INSERT INTO editoriales(nombre) VALUES
('UTHEA'), ('Reverté'),('McGrawHill'),
('MIR');

INSERT INTO lectores(nombre) VALUES
('P G Juan'), ('O P Margarita'),('G C Rosa'),
('L M Ana');
 



