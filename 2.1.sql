SELECT SUM(sp.qty), sp.snum, s.city FROM sp INNER JOIN s ON s.snum = sp.snum GROUP BY sp.snum, s.city;
SELECT SUM(spj.qty), spj.jnum, p.pname FROM p INNER JOIN spj ON p.pnum = spj.pnum GROUP BY spj.jnum, p.pname;