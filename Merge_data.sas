/* Merge data set */
/* Merge data-set1 data-set2
   BY common variable */

data score;
input NO STUDENT $ SCORE;
cards;
1 Tom 76
2 Henry 99
3 David 80
4 Vector 78
6 Susan 58
;
run;
data course;
input NO COURSE $;
cards;
1 math
2 english
3 music
4 physic
5 computer
;
run;
data student;
merge score course;
by NO;
run;
proc print data = student noobs;
run;


/* SQL inner join likely -- if a data set has values that another data set doesn't match, we can use IN= to merge only full value */
data score;
input NO STUDENT $ SCORE;
cards;
1 Tom 76
2 Henry 99
3 David 80
4 Vector 78
6 Susan 58
;
run;
data course;
input NO COURSE $;
cards;
1 math
2 english
3 music
4 physic
5 computer
;
run;
data student;
merge score(IN = a) course(IN = b);
by NO;
if a = 1 and b = 1;
run;
proc print data = student noobs;
run;

