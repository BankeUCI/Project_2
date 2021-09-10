
## Project_2 ETL GalynaM

* ----------------------------------------------------------------------------------------------------

#### extract_transf.ipynb
- Transformation stage implemented, Table and Business Rules applied.

#### queries.sql
- SQL queries applied to Athena tables.

#### schema_db.sql
- DB schema for PostgreSQL

#### Resources
- Extracted via Athena SQL queries CSVs with applied BR to extract only data for specific countries.

* ----------------------------------------------------------------------------------------------------


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

	Rules applied via Python, Pandas.
	- Each field should contain a single value.
	Column Name in Coaches and Athletes tables removed, last_name and first_name columns added instead.
	
	- Each Table should have unique id column.
	Integer unique identifier was generated for each table.
	
	- All columns in table should be dependent on unique id column.
	Tables Countries, Discipline, Event were added.
	

#### 2. Business Rules
	
	- Medals table should contain only Medals of interest: Gold and Total medals.
	Rule applied via AWS services.

	- Values in tables should be capitalized.
	Values in Coaches, Athletes, Teams were Capitalized.
	
	- Values for Countries, Disciplines, Events in referring tables
	should be integers.
