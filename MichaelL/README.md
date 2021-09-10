
## Project_2 - Michael Liu

### Files

1. **Load_data_final.ipynb**
(this is the jupytor notebook file to connect to local database and load our final csv files)

2. **SchemaFinal.sql**
(this is the schema file to create tables)

### Loading Transformed CSV Files

1. Create Database in PostgreSQL
2. Create tables with columns required
3. Read transformed files from Output folder
4. Connect to the database
5. Load tables in sequence
     - load athletes table
     - load events table
     - load discipline table
     - load medals table
     - load teams table
     - load coaches table

### Challenges faced

1. Data set is too new and very unorganized
2. Foreign Key Violation due to null value
3. Data set includes null value which caused constraint error


