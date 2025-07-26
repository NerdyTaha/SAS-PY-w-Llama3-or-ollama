
/* Step 1: Importing data */
data sales;
    input Region $ Product $ Month $ SalesAmount;
    datalines;
North TV Jan 500
North TV Feb 550
North AC Jan 300
South TV Jan 400
South AC Feb 350
East TV Jan 600
East AC Feb 450
;
run;

/* Step 2: Creating a new variable for quarterly sales */
data sales;
    set sales;
    if Month in ('Jan', 'Feb', 'Mar') then Quarter = 'Q1';
    else if Month in ('Apr', 'May', 'Jun') then Quarter = 'Q2';
    else if Month in ('Jul', 'Aug', 'Sep') then Quarter = 'Q3';
    else Quarter = 'Q4';
run;

/* Step 3: Aggregating sales by Region and Product */
proc sql;
    create table region_summary as
    select Region, Product, sum(SalesAmount) as TotalSales
    from sales
    group by Region, Product;
quit;

/* Step 4: Transposing data for better reporting */
proc transpose data=region_summary out=transposed_sales(drop=_NAME_);
    by Region;
    id Product;
    var TotalSales;
run;

/* Step 5: Merging with target data */
data targets;
    input Region $ TV_Target AC_Target;
    datalines;
North 1200 800
South 1100 600
East 1300 900
;
run;

data final_report;
    merge transposed_sales targets;
    by Region;
run;

/* Step 6: Calculating deviations from target */
data final_report;
    set final_report;
    TV_Deviation = TV - TV_Target;
    AC_Deviation = AC - AC_Target;
run;

/* Step 7: Exporting the final report */
proc print data=final_report;
    title 'Final Sales Report with Deviations';
run;
