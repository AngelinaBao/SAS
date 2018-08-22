/* Subsetting data set */
data Employee;
input ID NAME $ DEPT $ SALARY;
cards;
1 David IT 900
2 Tom HR 690
3 Gaby HR 800
4 Tim SALE 700
;
run;
data part_employee;
set Employee;
drop ID SALARY;
run;
proc print data = part_employee;
run;

/* another way */
data Employee;
input ID NAME $ DEPT $ SALARY;
cards;
1 David IT 900
2 Tom HR 690
3 Gaby HR 800
4 Tim SALE 700
;
run;
data part_employee;
set Employee(drop = ID SALARY)
run;
proc print data = part_employee noobs;
run;

/* KEEP = */
data Employee;
input ID NAME $ DEPT $ SALARY;
cards;
1 David IT 900
2 Tom HR 690
3 Gaby HR 800
4 Tim SALE 700
;
run;
data part_employee;
set Employee;
keep NAME DEPT;
run;
proc print data = part_employee;
run;

/* another way of KEEP= */
data Employee;
input ID NAME $ DEPT $ SALARY;
cards;
1 David IT 900
2 Tom HR 690
3 Gaby HR 800
4 Tim SALE 700
;
run;
data part_employee;
set Employee(keep = NAME DEPT SALARY);
run;
proc print data = part_employee noobs;
run;

/* select observations by using 'IF var condition THEN DELETE' */
data Employee;
input ID NAME $ DEPT $ SALARY;
cards;
1 David IT 900
2 Tom HR 690
3 Gaby HR 800
4 Tim SALE 700
;
run;
data selected_employee;
set employee;
if salary < 700 then delete;
run;
proc print data = selected_employee;
run;

/* Another example */
data Employee;
input ID NAME $ DEPT $ SALARY;
cards;
1 David IT 900
2 Tom HR 690
3 Gaby HR 800
4 Tim SALE 700
;
run;
data selected_employee;
set employee;
if name like  '%om' then delete;
run;
proc print data = selected_employee;
run;
