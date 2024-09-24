# Crowdfunding ETL - Project 2

## Contributors: Conner Dekok, Micah Korinek, William Levine

## Project Summary
In this project, our code is written to follow an ETL pipeline, and imports Microsoft Excel files into the pandas library for Python. From here, the data is cleaned, put into pandas DataFrames, and exported as .csv files. A database in PostgreSQL can then be created using the .csv files and an ERD which puts them into relation with one another. Screenshots of this PostgreSQL database, as well as the tables which are created from the .csv files and the queries used to display them, can be found in the `Screenshots` folder. A screenshot of the ERD can be found in the main repository. The `Resources` folder contains both the `.xlsx` files used as the input data for the project as well as the `.csv` files which are created when running the code.

The Jupyter Notebook file which contains all of the python code for this project is in the main repository, and is titled `ETL_Mini_Project_CDekok_MKorinek_WLevine.ipynb`. The file containing the code to perform our SQL table creations and queries is also in the main repository, and is titled `crowdfunding_db_schema.sql`. The starter code we used to begin the project is in a folder titled `Starter_Code`, and contains a Jupyter Notebook file titled `ETL_Mini_Project_Starter_Code.ipynb`.

We worked on this project through screen sharing and direct collaboration, and as such we did not use branching. Since the project has a linear structure, we decided this workflow would be more optimized for efficiency and in limiting coding errors or incompatibilities.

## Extract

For the extract phase we took data from a Microsoft Excel file titled `crowdfunding.xlsx`. When reviewing this data we pulled from a variety of columns titled 'cf_id', 'contact_id', 'company_name', 'blurb', 'goal', 'pledged', 'outcome', 'backers_count', 'currency', 'launched_at', 'deadline', 'staff_pick', 'spotlight', and 'category & sub-category'.   Using this dataset allowed us to create a variety of new DataFrames and eventually helped create our database.

## Transform

To transform the data, we used the pandas library for Python. Using methods such as list comprehension, `.astype()`, and `.merge()`, the data was converted from `.xlsx` format to pandas DataFrames. This allows for the data to be easily manipulated, analyzed, and visualized efficiently within a Python environment. These DataFrames were then exported as `.csv` files so they could be loaded into a SQL database.

## Load

To load the `.csv` files into a SQL database, we first created an ERD and table schema. This table schema established the columns for each table, as well as the data types, primary and foreign key references, and other constraints. After these tables were created, we could then load the data from the `.csv` files exported by the Python code into the SQL database. This created our ERD, or Entity Relationship Diagram, which visualizes how the tables thus created are connected.
