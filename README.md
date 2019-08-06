# Project: Exploring data / Job Positions data set 

This project has the goal to implement: 
* PostgreSQL Database,
* Data modeling (ERD),
* Data Engineering (import CSV files)
* Data analysis to undertand the data


## Data Modeling

Six tables created with one-to-many relationships.
Two of them, Dept_Emp and Dept_Manager, can be considered as bridge tables.

This is the ERD created:

![GitHub Logo](/ERD/ERD.png)

## Data Engineering
After ERD created, a script with create table and drop table were generated to be applied in the PostgreSQL server. These scripts you can find in ‘ScriptDB’ folder as soon as many other queries and statements generated, which you can see in the ‘QueryDB.sql’ in the same ‘ScriptDB’ folder. 

The CSV data contents were imported using pgAdmin. The content files can be found inside ‘data’ folder.

## Data Analysis
Inside of ‘Analysis’ folder, there is a jupyter notebook(.ipynb) file that has an analysis using a bar chart to show the average salaries per job position.

![GitHub Logo](/Analysis/Plot/bar_chart_average.png)


### Prerequisites

To run this project, you should have a PostgreSQL server installed in your machine, if you don’t have to go to this link https://www.postgresql.org/download/ and installed it.

And a Jupyter notebook https://www.anaconda.com/distribution/.

### Install

To install sqlalchemy and psycopg2 to run in your Jupyter notebook, you have to use these prompt commands:

*conda install -c anaconda sqlalchemy
*conda install -c anaconda sqlite
*pip install psycopg2


## Features

* Modeling Entity Relationship Diagram (ERD) with visual Paradigm,
* Langues: Python and SQL

Libraries:
* Pandas, 
* sqlalchemy
* psycopg2 
* matplotlib
