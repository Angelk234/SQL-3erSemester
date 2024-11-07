insert into Equipos(id, nombre, ciudad, mascota) values(1,'Jitomates','San Luis','Tigre'),
(2,'Cilantros','Colima','Perro'),
(3,'Papas','Colima','Gato'),
(4,'Centauros','Guadalajara','Liebre');

insert into Jugadores (id,nombre, celular, posicion, equipo) values
(1,'A1','111','D',1),
(2,'B1','112','P',1),
(3,'C1','113','D',1),
(4,'D1','114','P',1),
(5,'E1','115','L',1),
(6,'F1','116','L',1),
(7,'A2','211','B',2),
(8,'B2','212','BA',2),
(9,'C2','213','D',2),
(10,'D2','214','D',2),
(11,'A3','215','D',3),
(12,'B3','311','D',3),
(13,'C3','312','T',3),
(14,'D3','313','P',3),
(15,'A4','412','P',4),
(16,'B4','511','E',4),
(17,'C4','512','E',4),
(18,'D4','513','E',4);

INSERT INTO Arbitros(id, nombre, celular, correo) values
(1,'Juan','111','a@a.com'),
(2,'Pedro','222','b@b.com'),
(3,'Hugo','333','c@c.com'),
(4,'Paco','444','d@d.com');

insert into Juegos (id,fecha, marcadorLocal, marcadorVisita, equipoLocal, equipoVisita , arbitroCentral , arbitroAuxiliar) values
(1,'20231018',0,0,1,2,1,3),
(2,'20231018',1,0,2,1,2,4),
(3,'20231018',0,1,1,3,3,1),
(4,'20231018',2,0,3,1,4,2),
(5,'20231018',0,3,1,4,1,3),
(6,'20231018',3,1,4,1,2,4),
(7,'20231018',3,3,2,3,3,1),
(8,'20231018',4,0,3,2,4,2),
(9,'20231018',0,2,2,4,1,3),
(10,'20231018',2,0,4,2,2,4);

insert into Goles(id, juego, jugador, minuto, autogol) values
(1,2,10,10,0),
(2,3,12,15,0),
(3,4,3,30,0),
(4,4,3,31,0),
(5,4,2,40,0),
(6,5,15,45,0),
(7,5,16,50,0),
(8,5,17,51,0),
(9,6,15,10,0),
(10,6,15,15,0),
(11,6,16,80,0),
(12,6,3,90,0),
(13,10,12,10,0),
(14,10,7,15,1);