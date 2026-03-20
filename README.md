
# SAS → Python Migration Project (Expanded Edition)

## Overview
This project helps developers transition from SAS to Python by providing fully working SAS pipelines across multiple domains—Healthcare, Retail, and Manufacturing—and equivalent Python implementations. It simulates real-world modernization work where legacy SAS code is migrated into a modern open-source data science stack.

The project structure follows SAS best-practice recommendations to organize code by functional domain rather than large monolithic repositories.

## Repository Structure
```
sas-python-migration-project/
│
├── sas/
│   ├── healthcare/
│   ├── retail/
│   └── manufacturing/
│
├── python/
│   ├── healthcare/
│   ├── retail/
│   └── manufacturing/
│
├── docs/
│   ├── sas_vs_python_mapping.md
│   ├── migration_strategy.md
│   ├── performance_notes.md
│
└── README.md
```

## Domains Included
- **Healthcare**: Logistic regression, EDA, scoring pipeline
- **Retail**: Time-series forecasting (ARIMA)
- **Manufacturing**: Quality control (SHEWHART, capability analysis)

## Running SAS Code in VS Code
You must install the SAS Extension for Visual Studio Code and connect it to a SAS backend such as SAS Viya Workbench or SAS 9.4.

### Steps:
1. Install SAS Extension from marketplace
2. Open a `.sas` file
3. Click **No Profile** → **Add Connection Profile**
4. Choose SAS Viya or SAS 9.4
5. Press **F8** to run program

## Running Python Code
Install dependencies:
```bash
pip install pandas numpy scipy scikit-learn statsmodels matplotlib
```
Execute `.py` files or open notebooks in VS Code.

