data orange;
input variety $ texture flavor looks;
total = texture + flavor + looks;

if variety in ('navel', 'valencia')
then total = total*10;

if (flavor < texture & variety = 'navel')
then total = total*100;

a = flavor <> texture**2; /*select the max one*/
b = variety||'.var'; /* concatenate variety name and .var*/

label total = 'sum';
cards;
navel 9 8 6
temple 8 7 8
Valencia 9 10 8
mandarin 6 9 7
;
proc sort data = orange;
by descending total;
run;
proc print data = orange;
title 'test on orange';
run;
