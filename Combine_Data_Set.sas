/* Combine Data Set-- set data_set1 data_set2 ... */
data ITdept;
input ID NAME $ SALARY;
cards;
1 Tom 300
2 David 450
3 Jerry 790
;
run;
data No_ITdept;
input ID NAME $ SALARY;
cards;
4 Marry 600
5 Susan 890
6 Vector 900
;
run;
data ALL_dept;
set ITdept No_ITdept;
run;
proc print data = ALL_dept noobs;
run;


/* when two data sets have different variables, the less one will has missing value in combined data set */
data ITdept;
input ID NAME $ SALARY DOJ data9.;
cards;
1 Tom 300 04MAR2012
2 David 450 09JAN2011
3 Jerry 790 17SEP2011
;
run;
data No_ITdept;
input ID NAME $ SALARY;
cards;
4 Hector 900
5 Dylan 890
6 Merrisa 1000
;
run;
data ALL_dept;
set ITdept No_ITdept;
run;
proc print data = ALL_dept;
run;


/* when variable names are different, using RENAME to create the same variable name */
data ITdept;
input emID NAME $ SALARY;
cards;
1 Tom 300
2 David 450
3 Jerry 790
;
run;
data No_ITdept;
input empID NAME $ SALARY;
cards;
4 Marry 600
5 Susan 890
6 Vector 900
;
run;
data ALL_dept;
set ITdept(rename = (emID = ID)) No_ITdept(rename = (empID = ID));
run;
proc print data = ALL_dept noobs;
run;


/* if variables length are different, we can use length to set the length in combined data set */
data ITdept;
input ID 1-2 NAME $ 3-7 SALARY 8-12;
cards;
1 Tom   300
2 David 670 
3 Mitch 900
;
run;
data No_ITdept;
input ID 1-2 NAME $ 3-9 SALARY 10-14;
cards;
4 Michale 790
5 Ben     800
6 Gabby   860
;
run;
data ALL_dept;
length name $ 7;
set ITdept No_ITdept;
run;
proc print data = ALL_dept noobs;
run;
