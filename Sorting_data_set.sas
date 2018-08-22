/* Sorting
PROC SORT DATA=original dataset OUT=Sorted dataset;
  BY variable name; */
data employee;
input ID NAME $ DEPT $ SALARY;
datalines;
1001 Phil SALE 990
2001 Tina HR 600
1012 Beckham OPS 800
2015 Steve HIN 750
1030 Bobby IT 900
1022 Laura HR 700
;
run;
proc sort data = employee out = asc_employee;
by salary;
run;
proc print data = asc_employee noobs;
run;

/* Sorting by more than one variable */
data employee;
input ID NAME $ DEPT $ SALARY;
datalines;
1001 Phil SALE 990
2001 Tina HR 600
1012 Beckham OPS 800
2015 Steve HIN 750
1030 Bobby IT 990
1022 Laura HR 700
;
run;
proc sort data = employee out = asc_employee;
by salary ID;
run;
proc print data = asc_employee noobs;
title 'Employee Payroll Information';
run;

/* default sort by asc, we can use descending to change it */
data employee;
input ID NAME $ DEPT $ SALARY;
datalines;
1001 Phil SALE 990
2001 Tina HR 600
1012 Beckham OPS 800
2015 Steve HIN 750
1030 Bobby IT 990
1022 Laura HR 700
;
run;
proc sort data = employee out = asc_employee;
by descending salary ID;
run;
proc print data = asc_employee noobs;
title 'Employee Payroll Information';
run;
