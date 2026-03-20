
# SAS to Python Migration Cookbook

## Purpose
This cookbook provides a hands-on guide for translating SAS analytics workflows into Python-based equivalents.

## Migration Principles
1. **Replicate behavior, not syntax**
2. **Validate outputs side-by-side** using SASPy or by comparing reports
3. **Replace PROC-based workflows** with equivalent Python libraries
4. **Modularize code** to create reusable Python functions

## SAS → Python Mappings
- `DATA step` → pandas transformations
- `PROC MEANS` → pandas `.describe()`, numpy stats
- `PROC UNIVARIATE` → scipy.stats, statsmodels
- `PROC REG` / `PROC LOGISTIC` → scikit-learn linear/logistic regression
- `PROC ARIMA` → statsmodels.tsa ARIMA
- `PROC SGPLOT` → matplotlib / seaborn

## Example Migration: Logistic Regression
### SAS
```
PROC LOGISTIC DATA=clean;
  MODEL readmission(event='1') = age risk_score;
RUN;
```
### Python
```
from sklearn.linear_model import LogisticRegression
model = LogisticRegression(max_iter=1000)
model.fit(X, y)
```

## Example Migration: ARIMA
### SAS
```
PROC ARIMA DATA=sales;
  IDENTIFY VAR=units;
  ESTIMATE P=1 Q=1;
RUN;
```
### Python
```
from statsmodels.tsa.arima.model import ARIMA
model = ARIMA(series, order=(1,0,1))
model.fit()
```

## Validation Checklist
- Compare dataset row counts
- Compare descriptive statistics
- Compare model coefficients
- Compare predictions
- Ensure business logic parity
