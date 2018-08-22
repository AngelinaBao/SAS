/* PROC SQL:
PROC SQL;
SELECT Columns
FROM TABLE
WHERE Columns
GROUP BY Columns
;
QUIT;   */

DATA TEMP;
INPUT ID $ NAME $ SALARY DEPARTMENT $;
cards;
1 Rick 623.3 IT
2 Dan 515.2 Operations
3 Michelle 611 IT
4 Ryan 729 HR
5 Gary 843.25 Finance
6 Nina 578 IT
7 Simon 632.8 Operations
8 Guru 722.5 Finance
;
RUN;
proc sql;
create table employees as
select * from temp;
quit;
proc print data = employees noobs;
run;

/* Read Operation by Proc Sql */
title 'Car Information of Audi';
proc sql;
select make, model, type, msrp
from sashelp.cars
where make = 'Audi'
order by msrp;
quit;

/* SQL UPDATE */
DATA TEMP;
INPUT ID $ NAME $ SALARY DEPARTMENT $;
DATALINES;
1 Rick 623.3 IT
2 Dan 515.2 Operations
3 Michelle 611 IT
4 Ryan 729 HR
5 Gary 843.25 Finance
6 Nina 578 IT
7 Simon 632.8 Operations
8 Guru 722.5 Finance
;
RUN;
proc sql;
create table employees2 as
select ID as EMID, NAME as EMNAME, SALARY, DEPARTMENT as DEPT
from temp;
quit;
proc sql;
update employees2
set SALARY = SALARY * 1.5;
quit;
proc print data = employees2 noobs;
run;

/* PROC DELETE */
proc sql;
delete from employees2
where salary > 1000;
run;
proc print data = employees2 noobs;
run;
