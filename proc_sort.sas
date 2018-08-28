data score;
input num $ S1-S3 @@;
class = substr(num, 3, 2);
total = sum(of S1-S3);
cards;
060101 79 96 87 060102 98 88 79
060211 99 80 88 060205 78 60 54
060302 78 86 98 060308 88 79 91
;
proc print data = score;
run;

proc sort data = score out = cs1;
by class descending total;
proc print data = cs1;
ID num;
by class;
sum S1-S3 total;
run;
