CREATE DATABASE Torneo;

USE Torneo;

CREATE TABLE Equipos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    ciudad VARCHAR(50),
    mascota VARCHAR(50)
);

CREATE TABLE Jugadores (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    celular VARCHAR(10),
    posicion VARCHAR(50),
    equipo INT,
    FOREIGN KEY (equipo) REFERENCES Equipos(id) ON DELETE restrict ON UPDATE cascade
);

CREATE TABLE Arbitros (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    celular VARCHAR(10),
    correo VARCHAR(50)
);

CREATE TABLE Juegos (
    id INT PRIMARY KEY,
    fecha DATE,
    marcadorLocal INT,
    marcadorVisita INT,
    equipoLocal INT,
    equipoVisita INT,
    arbitroCentral INT,
    arbitroAuxiliar INT,
    FOREIGN KEY (equipoLocal) REFERENCES Equipos(id) ON DELETE restrict ON UPDATE cascade,
    FOREIGN KEY (equipoVisita) REFERENCES Equipos(id) ON DELETE restrict ON UPDATE cascade,
    FOREIGN KEY (arbitroCentral) REFERENCES Arbitros(id) ON DELETE restrict ON UPDATE cascade,
    FOREIGN KEY (arbitroAuxiliar) REFERENCES Arbitros(id) ON DELETE restrict ON UPDATE cascade
);

CREATE TABLE Goles (
	id INT PRIMARY KEY,
    juego INT,
    jugador INT,
    FOREIGN KEY (jugador) REFERENCES Jugadores(id) ON DELETE restrict ON UPDATE cascade,
    FOREIGN KEY (juego) REFERENCES Juegos(id) ON DELETE restrict ON UPDATE cascade,
    minuto INT,
    autogol BOOLEAN DEFAULT 0
);

ALTER TABLE Equipos
ADD activo BOOLEAN DEFAULT 1;

ALTER TABLE Jugadores
ADD activo BOOLEAN DEFAULT 1;

ALTER TABLE Arbitros
ADD activo BOOLEAN DEFAULT 1;