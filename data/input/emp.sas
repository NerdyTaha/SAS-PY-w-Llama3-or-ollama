/* Creating Dummy Employee Data */ data employees;   do id = 1 to 100;
    name = "Employee" || put(id, 3.);
    dept = choose(mod(id, 5)+1, 'HR', 'IT', 'Finance', 'Admin', 'R&D');     salary = int(40000 + ranuni(0)*20000);     age = int(22 + ranuni(1)*25);
    gender = choose(mod(id, 2), 'Male', 'Female');
    join_date = intnx('year', '01JAN2000'd, floor(ranuni(2)*20));     output;   end; run; 
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age;
run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;
  tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id;
quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10;
run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;
  set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary; run; data top_paid;   set high_salary;   if _N_ <= 10; run; proc sql;
  create table peer_age as
  select a.id, a.name, b.name as colleague, a.age, b.age as peer_age   from employees a, employees b   where a.dept = b.dept and a.id ne b.id; quit;
proc freq data=employees;   tables dept gender; run;
proc means data=employees mean min max std;   var salary age; run;
proc sort data=employees out=high_salary;   by descending salary;
run; data top_paid;   set high_salary;   if _N_ <= 10; run;

