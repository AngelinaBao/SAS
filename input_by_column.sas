data temp;
input ID 1-2 NAME $ 3-10 DEPT $ 11-14;
cards;
10 JERRY   IT
20 GEORGE  HR
31 PATRICK IT
;
proc print data = temp;
run;

data temp1;
input ID @1 NAME $ @3 DEPT $ @11;
cards;
10 JERRY   IT
20 GEORGE  HR
31 PATRICK IT
;
proc print data = temp1;
run;
