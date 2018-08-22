/* Format Data Set :
format variable name format name */

data employee;
input ID NAME $ DEPT $ SALARY;
format name $ upcase7.;
datalines;
1001 Phil SALE 990
2001 Tina HR 600
1012 Beckham OPS 800
2015 Steve HIN 750
1030 Bobby IT 990
1022 Laura HR 700
;
run;

proc print data = employee noobs;
title 'Employee Payroll Information';
run;

/* Proc Format
Proc Format;
VALUE name range_1 = 'formatted_text_1'
           range_2 = 'formatted_text_2'
           ...
           range_n = 'formatted_text_n';
Value????name??????,???????????,????$??,??????32???(??$),???????,?????,
???????????????????????????.
*/
data employee;
input ID NAME $ DEPT $ SALARY;
cards;
1001 Phil SALE 990
2001 Tina HR 600
1012 Beckham OPS 800
2015 Steve HIN 750
1030 Bobby IT 990
1022 Laura HR 700
;
run;
proc format;
value $dept 'IT' = 'Information Technology'
            'OPS' = 'Operation';
run;
proc print data = employee noobs;
format name $upcase9. dept $dept.;
run;
