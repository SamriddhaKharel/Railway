1. Tools used for the project
    VSCODE - to write the files and run them directly in the terminal
    DRAW.IO - to create the ER diagram
    LUCID CHART - assist in creating the ER diagram
    GOOGLE DOCS - to write project drafts and ideas
    MICROSOFT WHITEBOARD - to draw project drafts and ideas

2. The ER diagram is named ER Diagram Project 1.drawio.pdf

3. Schema.sql file contains the Schema for this project. (CREATE TABLE statements)
    To create tables we used [.read Schema.sql] since we created tables in the file.

4. Explain which method you used to load the data into the tables.
    To load the data into the tables we used two different methods, we used the .import command method and also the INSERT INTO method. We also removed the first line containing the names of the columns. To make it easy to read the data.
    Firstly, we removed the multi-valued attribute from the Train.csv and loaded them manually into a separate table. (The weekdays -- Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) We edited the Train.csv file and used .import Train.csv train command in sqlite. Then, we used data.sql file to load the multi-valued attribute into it's own separate table called train_availability. Using the command .read Train_availability_data.sql 
    After loading the first two tables, we used .import method on all the other tables. train_status, passenger, bookings. 
    We called .import multiple times
    .import Train_status.csv train_status
    .import Passenger-1.csv passenger
    .import booked-1.csv
**********************************************************************
    -----Steps in order to load the data in the corresponding tables.
    1.    .import Train.csv train (After removing the availability on weekdays)
    2.    .read Train_availability_data.sql
    3.    .import Train_status.csv train_status
    4.    .import Passenger-1.csv passenger
    5.    .import booked-1.csv
**********************************************************************

5. Queries.sql file contains the queries for this project. (SELECT FROM WHERE statements)
    All 8 queries were combined into one file for this project. This was done in order to make it easy
    to access all queries as well as run them all at once if desired. [.read Queries.sql]

6. Contribution List
    --Everyone in the group participated on every aspect of the project.
    ER-diagram, Create-statements(tables), Select-statements(queries), Loading data, README.md file etc.
    Everyone worked on everything together. No one worked on the project alone. It was a TEAM EFFORT. 
    Ashish Rupani - ALL ASPECTS  ||  Endrit Smajli - ALL ASPECTS  ||  Samriddha Kharel - ALL ASPECTS.


7. HONOR CODE
    I pledge, on my honor, to uphold UT Arlington's tradition of academic integrity, a tradition that values hard work and honest effort in the pursuit of academic excellence.

    I promise that I will submit only work that I personally create or that I contribute to group collaborations, and I will appropriately reference any work from other sources. I will follow the highest standards of integrity and uphold the spirit of the Honor Code.
    ------Ashish Rupani , Endrit Smajli , Samriddha Kharel. 