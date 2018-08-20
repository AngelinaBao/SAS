data mydata;
sum = 0;
var = 1;
do while(var < 6);
sum = sum + var;
var +1;
end;
proc print data = mydata;
run;

data mydata1;
sum = 0;
var = 1;
do until(var > 5);
sum = sum + var;
var + 1;
end;
proc print data = mydata1;
run;
