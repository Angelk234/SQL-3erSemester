SET SQL_SAFE_UPDATES=0;
UPDATE s SET status=25 WHERE city='London';
UPDATE j SET city='London' WHERE city='Rome';
UPDATE p SET weight=weight+2 WHERE pnum IN (SELECT pnum FROM sp WHERE snum='s2');
UPDATE sp SET qty=qty+2 WHERE pnum='p2';
UPDATE sepj SET qty=qty-5 WHERE jnum='j1';
SET SQL_SAFE_UPDATES=1;

SELECT SUM(sp.qty), sp.snum, s.city FROM sp INNER JOIN s ON s.snum = sp.snum GROUP BY sp.snum, s.city;
SELECT SUM(spj.qty), spj.jnum, p.pname FROM p INNER JOIN spj ON p.pnum = spj.pnum GROUP BY spj.jnum, p.pname;

/*--Actualizar el status de los proveedores de London a 25*/
/*--Actualizar los proyectos, aquellos trabajados en Roma se moveran a London*/
/*--Actualizar el peso de los productos que son entregados por el proveedor S2, subiendoles 2 unidades*/
/*--En la relación SP, de la parte 2 se va a incrementar su cantidad entregada en 2 unidades*/
/*En la relación SPJ modificar todas las partes del proyecto J1 en -5*/
/* Consultas*/
/*Consulta que muestra la cantidad total de piezas suministradas por cada proveedor, agrupada también por ciudad.*/
/*Consulta que muestra la cantidad total y el nombre de las piezas suministradas para cada proyecto*/
