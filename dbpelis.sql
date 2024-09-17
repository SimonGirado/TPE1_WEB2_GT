-- Crear tabla de Géneros
CREATE TABLE Generos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
);

-- Crear tabla de Películas
CREATE TABLE Peliculas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    sinopsis TEXT,
    duracion INT NOT NULL, -- Duración en minutos
    id_genero INT,
    puntaje_promedio DECIMAL(3, 2), -- Puntaje promedio entre 0.00 y 10.00
    FOREIGN KEY (id_genero) REFERENCES Generos(id)
);

-- Insertar algunos géneros
INSERT INTO Generos (nombre) VALUES ('Acción'), ('Comedia'), ('Drama'), ('Ciencia Ficción'), ('Terror');

-- Insertar algunas películas
INSERT INTO Peliculas (titulo, sinopsis, duracion, id_genero, puntaje_promedio) 
VALUES ('Matrix', 'Un programador descubre la realidad virtual...', 136, 4, 9.5),
       ('El Padrino', 'La historia de una poderosa familia mafiosa...', 175, 3, 9.8),
       ('Avengers', 'Héroes se unen para salvar el mundo...', 143, 1, 8.3);
