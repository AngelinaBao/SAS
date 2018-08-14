data new1;
infile cards delimiter = ',';
input x y z;
cards;
1,2,3
4,5,6
;
data new2;
infile cards dlm = 'ab'; /* dlm='ab' ????????a?b????? */
input x y z;
cards;
1aa2ab3
4ba5a6
7aaa8b9bab
;
run;
proc print data = new1;
run;
proc print data = new2;
run;
