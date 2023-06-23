# MySQL - Database creation and advanced queries - Songs streams
This mock database records information about songs, artists, and number of streams in different Countries. It also includes information about different stakeholders within the digital music publishing sector (publishers, aggregators, PROs, labels). This database is designed with the aim to calculate royalties for artists, through analysis of the data. 


## Overview
This database is part of my final project for the CodeFirstGirl SQL programme. Its aim was to create a database using MySQL Workbench and extract data through advanced queries. Song titles, artist names, artists IDs, song URLS have been taken from Spotify datasets available on Kaggle. Other values, like labels, aggregators, publishers, PROs have been randomy allocated to artists and songs for data extraction and query building purposes.

In the main folder, the folliwing files have been made available: 
- sql file 
- image of the database ERD (entity relationship diagram)
- txt file with code used to build views, subqueries, stored procedures and functions
- txt file with code used to create tables and establish relationships


## Technology used
- MySQL
- MySQL Workbench



## ERD
![digital_streams_ERD](https://github.com/lcavorsi/MySQL-Database-song-tracks-streams---creation-and-advanced-queries/blob/main/Digital_streams_ERD.JPG)



## Queries created
- View (shows all streams in the Netherlands)
- Stored Function (determines whether an artist/song combination should be assigned to a junior or senior team. Junior teams deal with artists who own 100% of     copyright, Senior teams deal with tracks where the copyright is shared by multiple artists).
- Stored Procedure (shows all the streams belonging to a given label, in a given Country)
- Subquery (shows all the songs released after the release date of a different given song)
- Trigger (updates automatically the 'royalties earned' column, according to the number of streams inserted in the 'Streams total' column)
- Queries with GROUP BY and HAVING (shows the total number of streams per artists, divided by Country)
