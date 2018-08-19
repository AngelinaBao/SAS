/* PROC STEP */
PROC produce_name options; /* the name of the proc */
RUN;

proc means; /* print means of num variables in this data set */
run;

PROC PRINT DATA = data_set;
OPTIONS;
RUN; 

proc print data = Temp;
where salary > 500;
run; /* print the result that meets the condition in 'Results' */
