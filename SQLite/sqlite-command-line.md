# sqlite command line and special commands ( dot commands):

# start sqlite 3
sqlite3

# help
.help

# start and open database
sqlite path/database_name.ext

# open database
.open path/database_name.ext

# show databases
.database

# exit from sqlite3
.exit

# show tables
.tables

# show table
.table 'table_name'

# show table structure
.schema 'table_name'

# show all table structure in database
.schema database_name.*

# show full table structure
.fullschema

# show indexes
.indexes

# display output query result to file
.output 'file_name.txt'
SELECT * FROM table_name;

# display output to standard output or back to command line again
.output

# display output query result to file only once
.once 'file_name.txt'
SELECT * FROM table_name;

# output to CSV
* If the ".output" or ".once" commands have a "-x" argument, that causes them to accumulate output as Comma-Separated-Values (CSV) in a temporary file, then invoke the default system utility for viewing CSV files (usually a spreadsheet program) on the result.
.once -x
SELECT * FROM table_name;

# execute sql statements from a file
.mode column
.read 'file_name.sql'

# changing the output format
.mode list
.separator ", "

# import from csv
.mode csv
.import 'path/file_name.csv' table_name

# export to csv
## on Windows
.header on
.mode csv
.once 'path/file_name.csv'
SELECT * FROM table_name;
.system 'path/file_name.csv'

## on macintosh
.system open 'path/file_name.csv'

## on unix
.system xdg-open 'path/file_name.csv'
