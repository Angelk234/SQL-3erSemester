/*
1.- Crear vista infoJuegos que traiga la información de la tabla juegos, con los nombres de los equipos local y visita, 
sus marcadores y los nombres de los árbitros central y auxiliar.
2.- Crear vista infoEquipos que traiga la información de los jugadores y los equipos a que pertenecen
3.- Crear vista autogoles que traiga la informaci{on del jugador y el nombre del equipo, de los que han metido autogoles en algún juego, sin repeticion
*/

CREATE VIEW infoJuegos as SELECT el.nombre as 'local', ev.nombre as 'visita' FROM juegos as j inner join equipos as el ON j.equipoLocal=el.id inner join equipos as ev ON j.equipoVisita=ev.id;
select * from infoJuegos;

CREATE VIEW infoEquipos as SELECT j.id, j.nombre, j.celular, j.posicion, e.nombre as equipo, j.activo FROM jugadores as j inner join equipos as e ON j.equipo = e.id;
select * from infoEquipos; 

CREATE VIEW autogoles as SELECT j.id, j.nombre, j.celular, j.posicion, e.nombre as equipo, j.activo FROM jugadores as j inner join equipos as e ON j.equipo = e.id inner join goles as g ON g.jugador=j.id WHERE autogol != 0 group by j.id;
select * from autogoles;
show tables;