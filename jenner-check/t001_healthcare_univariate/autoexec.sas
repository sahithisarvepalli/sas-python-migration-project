/* cap input rows for the captured run */
options obs=100;

/* healthcare pipeline: reconstruct the `clean` dataset that
   01_import.sas + 02_cleaning.sas produce, from the patient_data.csv
   columns (age, risk_score, readmission), so 03_eda.sas runs standalone */
data clean;
  input age risk_score readmission;
  datalines;
65 0.8 1
45 0.2 0
72 0.9 1
33 0.1 0
58 0.6 1
41 0.3 0
67 0.75 1
50 0.4 0
60 0.7 1
38 0.25 0
;
run;
