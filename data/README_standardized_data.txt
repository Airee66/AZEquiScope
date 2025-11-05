# AZEquiScope Standardized Dataset Documentation

## Dataset Overview
- **File**: maricopa_healthcare_standardized_data.csv
- **Created**: 2025-11-05 11:21:16
- **Source**: Data cleaning pipeline (data_cleaning.ipynb)
- **Geographic Scope**: Maricopa County, Arizona ZCTAs
- **Analysis Ready**: Yes

## Dataset Characteristics
- **Total ZCTAs**: 128
- **Total Variables**: 52
- **Standardized Variables**: 25
- **Missing Values**: 0

## Data Sources Integrated
1. **U.S. Census Bureau** (demographics, socioeconomics)
   - Total population, median income, insurance coverage

2. **CDC PLACES** (health indicators) 
   - Chronic disease prevalence, preventive care, health behaviors

3. **NPI Registry** (healthcare providers)
   - Provider counts by ZCTA (individual and organizational)

## Variable Naming Conventions

### Original Variables
- `census_[variable]`: Raw Census data with prefixes
- `cdc_[variable]`: Raw CDC PLACES data with prefixes  
- `npi_[variable]`: Raw NPI provider count data with prefixes

### Standardized Variables (0-1 Scale)
- `Z_[original_variable]`: Min-max normalized (0-1) version of original variable
- All Z_ variables use consistent 0-1 scaling for comparative analysis

## Data Quality Notes
- Filtered to ZCTAs with complete Census AND CDC data
- ZCTAs with missing CDC health data were removed (12 ZCTAs dropped)
- All numeric variables converted and validated
- No missing values in final dataset
- All standardized variables confirmed in 0-1 range

## Files Included
- `maricopa_healthcare_standardized_data.csv`: Main analysis dataset
- `README_standardized_data.txt`: This documentation file

## Usage Notes
- Use Z_ prefixed variables for comparative analysis across data sources
- Original variables retained for reference and domain-specific analysis
- ZCTA codes can be used to merge with spatial/geographic data
- All variables ready for statistical analysis and modeling

## Next Steps
This standardized dataset is ready for:
- Descriptive statistics and exploratory data analysis
- Correlation analysis and relationship identification
- Statistical modeling and machine learning
- Spatial analysis and mapping
- Healthcare equity assessment
