data string_example;
length string1 $ 6 string2 $ 5; /* string variables of length 6 and length 5 */
string1 = 'Hello';
string2 = 'World';
Joined_strings = string1 || string2;
run;
proc print data = string_example noobs; /* noobs -- don't display the observation numbers */
run;

/* substrn('string', start, end) */
data string;
length string1 $ 6;
string1 = 'Hello';
sub_string = substrn(string1, 2, 4);
sub_string1 = substrn(string1, 3); /*exact from position 3 onwards */
run;
proc print data = string noobs;
run;

/* trimn('string') delete the space in the end */
data string_example1;
length string2 $ 7;
string2 = 'Hello  ';
length_string2 = lengthc(string2);
length_trimmed_string2 = lengthc(trimn(string2));
run;
proc print data = string_example1 noobs;
run;
