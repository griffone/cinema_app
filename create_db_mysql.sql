DROP DATABASE IF EXISTS cine;
CREATE DATABASE cine;

USE cine;

-- Tabla: director
CREATE TABLE director (
    director_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla: actor
CREATE TABLE actor (
    actor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla: sector
CREATE TABLE sector (
    sector_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla: tipo_funcion
CREATE TABLE tipo_funcion (
    tipo_funcion_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tarifa DECIMAL(10, 2) NOT NULL
);

-- Tabla: sala
CREATE TABLE sala (
    sala_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    sector_id INT NOT NULL,
    CONSTRAINT fk_sala_sector FOREIGN KEY (sector_id) REFERENCES sector(sector_id)
);

-- Tabla: pelicula
CREATE TABLE pelicula (
    pelicula_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    duracion INT,
    sinopsis TEXT,
    director_id INT NOT NULL,
    CONSTRAINT fk_pelicula_director FOREIGN KEY (director_id) REFERENCES director(director_id)
);

CREATE TABLE actor_por_pelicula (
    actor_por_pelicula_id INT AUTO_INCREMENT PRIMARY KEY,
    actor_id INT NOT NULL,
    pelicula_id INT NOT NULL,
    CONSTRAINT fk_actor_por_pelicula_actor_id FOREIGN KEY (actor_id) REFERENCES actor(actor_id),
    CONSTRAINT fk_actor_por_pelicula_pelicula_id FOREIGN KEY (pelicula_id) REFERENCES pelicula(pelicula_id)
);

-- Tabla: funcion
CREATE TABLE funcion (
    funcion_id INT AUTO_INCREMENT PRIMARY KEY,
    pelicula_id INT NOT NULL,
    sala_id INT NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    CONSTRAINT fk_funcion_sala FOREIGN KEY (sala_id) REFERENCES sala(sala_id),
    CONSTRAINT fk_funcion_pelicula FOREIGN KEY (pelicula_id) REFERENCES pelicula(pelicula_id)
);

-- Tabla: entrada
CREATE TABLE entrada (
    entrada_id INT AUTO_INCREMENT PRIMARY KEY,
    funcion_id INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_entrada_funcion FOREIGN KEY (funcion_id) REFERENCES funcion(funcion_id)
);
