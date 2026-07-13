/* cap input rows for the captured run */
options obs=100;

/* manufacturing pipeline: reconstruct the `quality` dataset that
   01_import.sas produces from quality.csv (batch, measurement) */
data quality;
  input batch measurement;
  datalines;
1 10.2
1 10.5
1 10.1
2 10.3
2 10.6
2 10.0
3 10.4
3 10.7
3 10.2
4 9.9
4 10.1
4 10.3
;
run;
