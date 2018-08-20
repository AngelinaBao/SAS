/*        MATH FUNCTION            */
data math_function;
v1 = 20; v2 = 38; v3 = 19; v4 = 25;
max_val = max(v1, v2, v3, v4);
min_val = min(v1, v2, v3, v4);
median_val = median(v1, v2, v3, v4);
sr_val = sqrt(sum(v1, v2, v3, v4));
proc print data = math_function noobs;
run;
/*         DATE FUNCTION        */
data date_function;
input @1 date1 date9. @11 date2 date9.;
format date1 date9. date2 date9.;
years_ = intck('year', date1, date2); /* get the years between date1 and date2 */
months = intck('month', date1, date2); 
weekday_  = weekday(date1); /* get the week number of the date in a year */
time_ = time(); /* current time */
cards;
21OCT2002 01DEC1989
08MAY2006 09SEP1992
;
proc print data = date_function;
run;

/*        STRING FUNCTION         */
data character_function;
lowcase_ = lowcase('HELLO');
upcase_ = upcase('world');
reverse_ = reverse('hello');
scan_ = scan('Learn SAS Now', 2); /* return the nth word */
run;
proc print data = character_function noobs;
run;

/* TRUNC FUNCTION  */
data trunc_function;
ceil_ = ceil(11.85); /* get the nearest greatest integer */
floor_ = floor(11.85); /* get the nearest lowest integer */
int_ = int(11.43); /* get the integer portion of the value */
round_ = round(264.75); /* round off to nearest value */
run;
proc print data = trunc_function;
run;

