# Creación de la base de datos
CREATE DATABASE admin_school;
# Uso de la base de datos creada
USE admin_school;
# Creación de la tabla alumnos
CREATE TABLE alumnos(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    email VARCHAR(50),
    evaluacion_id INT,
	PRIMARY KEY(id)
);
# Creación de la tabla asignatura
CREATE TABLE asignaturas(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30),
    horario VARCHAR(30),
	PRIMARY KEY(id)
);
# Creación de la tabla profesores
CREATE TABLE profesores(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    email VARCHAR(30),
	PRIMARY KEY(id)
);
# Creación de la tabla evaluaciones
CREATE TABLE evaluaciones(
	id INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(30),
    calificacion INT,
    alumno_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id)
);
# Creación de la tabla que relaciona alumnos con asignaturas
CREATE TABLE alumno_asignatura(
	id INT NOT NULL AUTO_INCREMENT,
    alumno_id INT,
    asignatura_id INT,
	PRIMARY KEY(id),
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
    FOREIGN KEY (asignatura_id) REFERENCES asignaturas(id)
);
# Creación de la tabla que relaciona alumnos con profesor
CREATE TABLE alumno_profesor(
	id INT NOT NULL AUTO_INCREMENT,
    alumno_id INT,
    profesor_id INT,
	PRIMARY KEY(id),
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
    FOREIGN KEY (profesor_id) REFERENCES profesores(id)
);