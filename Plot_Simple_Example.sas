/* Histogram:
PROC UNIVARAITE DATA = DATASET;
HISTOGRAM variables;
RUN;  */
proc univariate plot data=sashelp.cars;
var horsepower;
run;


