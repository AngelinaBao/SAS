data check;
input ssn 1-3 pay;
if ssn = 222 then stop; /*abort return stop */
put _all_;
cards;
111 100
222 110
444 780
;
data a;
input b;
cards;
12345
;
proc print data = a;
run;
