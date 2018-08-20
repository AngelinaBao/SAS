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

/* array example */
data array_example2;
input a1 $ a2 $ a3 $ a4 $ a5 $;
array colors(5) $ a1-a5;
mix = a1||'+'||a3;
cards;
yello green pink blue black
;
run;
proc print data = array_example2 noobs;
run;

/* array example--of */
/* use 'of' to work on every row in array */
data array_of;
input A1 A2 A3 A4;
array A(4) A1-A4;
A_sum = sum(of A(*));
A_mean = mean(of A(*));
A_max = max(of A(*));
A_min = min(of A(*));
cards;
23 43 16 28
10 20 30 40
;
run;
proc print data = array_of noobs;
run;

/* use 'in' to check if something exists */
data array_in;
input A1 $ A2 $ A3 $ A4 $;
array colour(4) $ A1-A4;
if 'pink' in colour then avaliable = 'Yes'; else avaliable = 'No';
cards;
yellow white pink blue
;
run;
proc print data = array_in noobs;
run;
