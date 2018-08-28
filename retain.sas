data temp;
z = 0;
input x @@;
retain y 8; *s only can be 0 as start value, but retain can define any value;
s + x;
z = z + x;
y = y + x;
cards;
2 23 34 45 12 23 12 29 35
;
proc print;
run;

