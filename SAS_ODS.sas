/* SAS ODS 
ODS outputtype
PATH path name
FILE = Filename and Path
STYLE = StyleName
;
PROC some proc
;
ODS outputtype CLOSE;  
PATH???HTML???????????? ?????????,???????????*/
ods pdf;
file = 'C:/Users/1000257489/Documents/My SAS Files/SAS_Script'
style = EGDefault;
proc sql;
select make, type, model, invoice 
from sashelp.cars
where make in ('Audi', 'BMW') and type = 'Sports';
quit;
proc sql;
select make, avg(horsepower) as avg_horsepower
from sashelp.cars
where make in ('Audi', 'BMW')
group by make;
quit;

ods pdf close;

