data mydata;
input @1 COL1 5.2 @7 COL2 3.1;
Add_result = col1 + col2;
Sub_result = col1 - col2;
mult_result = col1 * col2;
expo_result = col1 ** col2;
cards;
11.21 5.3
3.11  11
;
proc print data = mydata;
run;

/* concatnate || */
data mydata1;
input col1 $ col2 $ col3 $;
cat = col1 || col2 || col3;
cards;
Hello World !
It' s easy
;
proc print data = mydata1;
run;

