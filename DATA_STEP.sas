/* Data step */
data data_set_name; /* Create and name a data set */
input var1, var2, var3; /* Define the variables in this data set */
new_var; /* Create new variables*/
label; /* assign labels to variables */
cards; /* enter the data(cards = datalines)*/
data1 data2 ...
;
run;

data temp;
input ID $ NAME $ SALARY DEPARTMENT $; /* $ means the variable is a char one */
comm = SALARY * 0.25;
label ID = 'Employee ID' comm = 'Commision';
cards;
1 Rick 700 IT
2 Tom 500 HR
3 Patrick 478 Finance
4 Jerry 689 Sale
;
run;
