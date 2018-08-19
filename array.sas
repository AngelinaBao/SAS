data test;
input sco1-sco5;
array s sco1-sco5;
do _i_ = 1 to 5; /* automatic variable i , range from 1 to the number of variables */
s = s*100;
end;
cards;
0.98 0.87 0.56 0.89 0.67
1 2 3 4 5
;
run;
proc print noobs;
run;
/* Another Way -- Do Over */

data test1;
input sco1-sco5;
array s sco1-sco5;
do over s; /* do over equals do i = 1 to k, k is length of array */
s = s*100;
end;
cards;
0.98 0.87 0.56 0.89 0.67
1 2 3 4 5
;
run;
proc print noobs;
run;
