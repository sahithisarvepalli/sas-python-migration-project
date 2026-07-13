/* cap input rows for the captured run */
options obs=100;

/* retail pipeline: reconstruct the `clean` dataset that
   01_import.sas + 02_timeseries_cleaning.sas produce from sales.csv
   (date, units) as a monthly series */
data clean;
  input date :yymmdd10. units;
  format date yymmdd10.;
  datalines;
2024-01-01 120
2024-02-01 140
2024-03-01 135
2024-04-01 150
2024-05-01 160
2024-06-01 155
2024-07-01 170
2024-08-01 165
2024-09-01 180
2024-10-01 175
2024-11-01 190
2024-12-01 185
;
run;
