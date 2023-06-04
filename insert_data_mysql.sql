-- CARGA DE DATOS
-- Insertar datos en la tabla "director"
INSERT INTO director (nombre)
VALUES ('Christopher Nolan'), ('Quentin Tarantino'), ('Martin Scorsese');

-- Insertar datos en la tabla "actor"
INSERT INTO actor (nombre)
VALUES ('Leonardo DiCaprio'), ('Brad Pitt'), ('Tom Hanks');

-- Insertar datos en la tabla "pelicula"
INSERT INTO pelicula (titulo, duracion, sinopsis, director_id)
VALUES ('Inception', 148, 'Un ladrón especializado en robar información durante los sueños profundos es contratado para implantar una idea en la mente de un CEO.', 1),
       ('Pulp Fiction', 154, 'Historias entrelazadas de gangsters, boxeadores, apostadores y asesinos en Los Ángeles.', 2),
       ('Goodfellas', 146, 'Un gángster asciende en la jerarquía de la mafia mientras lidia con la vida criminal y la familia.', 3);

-- Insertar datos en la tabla "actor_por_pelicula"
INSERT INTO actor_por_pelicula (actor_id, pelicula_id)
VALUES (1, 1), (2, 1), (2, 2), (3, 3);

-- Insertar datos en la tabla "sector"
INSERT INTO sector (nombre)
VALUES ('Acción'), ('Drama'), ('Comedia');

-- Insertar datos en la tabla "sala"
INSERT INTO sala (nombre, sector_id)
VALUES ('Sala 1', 1), ('Sala 2', 2), ('Sala 3', 3);

-- Insertar datos en la tabla "tipo_funcion"
INSERT INTO tipo_funcion (nombre, tarifa)
VALUES ('2D', 10.00), ('3D', 15.00);

-- Insertar datos en la tabla "funcion"
INSERT INTO funcion (pelicula_id, sala_id, fecha, hora)
VALUES (1, 1, '2023-01-01', '15:00:00'),
       (2, 2, '2023-01-02', '18:30:00'),
       (3, 3, '2023-01-03', '20:15:00');

-- Insertar datos en la tabla "entrada"
INSERT INTO entrada (funcion_id, precio, monto)
VALUES (1, 10.00, 100.00),
       (2, 15.00, 150.00),
       (3, 12.00, 120.00);