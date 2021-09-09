
# Project_2 ETL 

### GalynaM readme

## Project Proposal 
- Build an ETL pipeline to process 2021 Olympics in Tokyo athletes-events data from different sources. 

### Extract Stage

#### 1. Data Source.
https://www.kaggle.com/arjunprasadsarkhel/2021-olympics-in-tokyo
Athletes.xlsx
Coaches.xlsx
EntriesGender.xslx
Medals.xlsx
Teams.xlsx

#### 2. Convert data to csv format for standardized processing.

#### 3. Validate data.

	- Data should be consistent.
	
	Data was analyzed via Pandas in Jupyter Notebook.
	EntriesGender.csv appeared to be non-informative. It is not connected to athletes.
	Moreover, it brings inconsistency, as values do not correspond to the number of athletes.

	- Keep data that have values in the expected ranges.
	We want to analyze countries that won at least one Gold Medal, and that are ranked
	within 20 first countries in Total Rank of Medals.
	
	Data was analyzed via AWS services.
	Initial Data Sets were uploaded into AWS S3,
	Athena tables were created via AWS Glue Crawler.
	SQL queries were used to select data that correspond to the countries of interest.

### Transform Stage

#### 1. Table Rules

	- Table Medals:  Medals of interest: Gold and Total medals.
	Rule applied via AWS services.

#### 2. Business Rules
	Rules applied via Python, Pandas.

	- Each field should contain a single value.
	Column Name in Coaches and Athletes tables removed, last_name and first_name columns added instead.

	- Each Table should have unique id column.
	Integer unique identifier was generated for each table.

	- All columns in table should be dependent on unique id column.
	Tables Countries, Discipline, Event were added. Values in corresponding columns were changed accordingly.

	- Values should be capitalized.
	Values in Coaches, Athletes were Capitalized.