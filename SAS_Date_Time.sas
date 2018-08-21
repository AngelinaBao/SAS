/* SAS Date Times */

/* only defined the write format */
data temp;
input @1 date1 date11. @12 date2 anydtdte15. @23 date3 mmddyy10.;
cards;
02-mar-2012 3/02/2012 3/02/2012
;
proc print data = temp;
run;

/* one format for write -- realized by input, another format for output -- realized by format */
data temp;
input @1 DOJ1 mmddyy10. @12 DOJ2 mmddyy10.;
format DOJ1 date11. DOJ2 worddate20.;
cards;
01/12/2012 02/21/2012
;
proc print data = temp;
run;
