# Celestial-Bodies-Database
 building  of celestial bodies   database using PostgreSQL.


key map-

galaxy key points-
galactic type-
1. Elliptical galaxy
2. Spiral galaxy
3. Irregular galaxy
distance-
it is in millon light years

Star key points-
star type
1-Ultra-diffuse galaxy
2-G-type main-sequence star 
3-Elliptical galaxy 
4-Red giant star  
5-Supernova 
6- Blue supergiant star
it is in millon light years

planet
shape
1-Spherical
2-Slightly oblate spheroid irregular
3-Oblate spheroid

planet_type: 
1-Gas giant planet 
2-Terrestrial planet

moon 
moon type-
1-Terrestrial
2-Galilean
3-Amalthean
4-Himalia
5-Elaran
6-Metisian
7-Theban
8 - Minor


shap 
1-spherical
2-irregular



million light-years away
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
some notes-
read type of relation ships
\l - list the directory
create database = CREATE DATABASE database_name;
You can connect to a database by entering \c database_name
to drop databse  Use the DROP DATABASE keywords to do that.
\d  - to display tables
you can create a table like this:CREATE TABLE table_name();
example of how to add column:ALTER TABLE table_name ADD COLUMN column_name DATATYPE;
how to remove remove column:ALTER TABLE table_name DROP COLUMN column_name;
Rows are the actual data in the table. You can add one like this:INSERT INTO table_name(column_1, column_2) VALUES(value1, value2);
You can view the data in a table by querying it with the SELECT statement. Here's how it looks:SELECT columns FROM table_name;
how to delete a row:DELETE FROM table_name WHERE condition;
drop table DROP TABLE table_name;
You can rename a database like this:ALTER DATABASE database_name RENAME TO new_database_name;
you could have added the previous three rows at once: INSERT INTO characters(name, homeland, favorite_color) VALUES('Mario', 'Mushroom Kingdom', 'Red'),('Luigi', 'Mushroom Kingdom', 'Green'),('Peach', 'Mushroom Kingdom', 'Pink');
You can change a value like this:UPDATE table_name SET column_name=new_value WHERE condition;
you should put that in order. Here's an example:SELECT columns FROM table_name ORDER BY column_name;
It's a column that uniquely identifies each row in the table. Here's an example of how to set a PRIMARY KEY:ALTER TABLE table_name ADD PRIMARY KEY(column_name);
how to drop a constraint:ALTER TABLE table_name DROP CONSTRAINT constraint_name;
creates a column as a foreign key: ALTER TABLE table_name ADD COLUMN column_name DATATYPE CONSTRAINT REFERENCES referenced_table_name(referenced_column_name);
The column should also be NOT NULL since you don't want to have a row that is for nobody.ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;
constraint to your foreign key.ALTER TABLE table_name ADD UNIQUE(column_name);
You can use it to view rows as well. Here's an example:SELECT columns FROM table_name WHERE condition;
This will be a "one-to-many" relationship because one character will have many sounds, but no sound will have more than one character.again:ALTER TABLE table_name ADD COLUMN column_name DATATYPE CONSTRAINT REFERENCES referenced_table_name(referenced_column_name);
You can set an existing column as a foreign key like this: ALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES referenced_table(referenced_column);
create a primary key from two columns, known as a composite primary key.ALTER TABLE table_name ADD PRIMARY KEY(column1, column2);
Enter a join command to see all the info from both tables. SELECT columns FROM table_1 FULL JOIN table_2 ON table_1.primary_key_column = table_2.foreign_key_column;
.
