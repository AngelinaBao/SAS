/*  Macro Program */
%macro show_result(make_, type_); /* create a macro program */
proc print data = sashelp.cars;
where make = "&make_" & type = "&type_";
title "Sales as of &sysday &sysdate";
run;
%mend;

%show_result(BMW, SUV); /* call a macro program */
%show_result(Audi, Sports)


/* %PUT -- write the text or macro variable to log */
data _null_;
call symput('today', trim(put("&sysdate"d, worddate22.)));
run;

%put &today; * varialbe today was written to log;


/* %RETURN -- when the condition is true, it will stop the working macro */
%macro check_condition(val);
   %if &val = 10 %then %return;

    data p;
       x=34.2;
    run;  

%mend;  

%check_condition(11)  ;



/* %end -- stop the %do%while likely loop */
%macro test(finish);
%let i = 1;
%do %while (&i < &finish);
%put the value of i is &i;
%let i = %eval(&i + 1);
%end;

%mend test;
%test(5);
