data empdat;
input ID Name $ Salary Dept $ DOJ DATE9.;
label ID = 'Employee ID';
Format DOJ Date9.;
cards;
1 John 200 HR 02APR2015
2 Tom 350 IT 09MAR2015
3 George 400 IT 10OCT2015
4 MARRY 380 SALE 21DEC2015
5 JERRY 18000 IT 01AUG2018
;
data empdat1;
set empdat;
if Salary > 1000 then delete;
proc print data = empdat1;
run;
