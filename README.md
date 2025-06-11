# Advanced Data Science Project(SQL-In-R)

## Project Overview
This repository contains an advanced data science project that integrates SQL queries within the R environment to explore and analyze the 2013 NYC flights dataset from the {nycflights13} package. The  objective of these project  is to help improve airline operations by extracting meaningful insights on delays, destinations, carrier performance, and more — all through SQL queries executed within R.

## Dataset
- Source: nycflights13::flights
- Description: Contains over 300,000 flight records departing from NYC in 2013, including variables like departure delay, arrival delay, carrier, origin, destination, air time, and distance.

## Technology used
- R Programming Language
- RStudio
- SQLite

  ## Libraries Used
  - nycflights13
  - sqldf
  - dplyr

## Project Objectives
- Q1 : Load the flights dataset and display the first 5 rows using SQL in R.
- Q2 : List all unique airline carriers in the dataset.
- Q3 : Find the top 5 flights with the longest departure delays. Show carrier, flight, origin, destination, and delay.
- Q4 : Calculate the average arrival delay per airline and sort by worst-performing carriers.
- Q5 : Identify the top 3 destinations with the highest average arrival delays.
- Q6 : Show the average flight distance per origin airport.
- Q7 : For each day in January, count the number of flights and calculate the average delay. Display day and average delay.
- Q8 : For each airline, compute the on-time performance percentage (arrival delay ≤ 0) and sort descending.
- Q9 : List all flights delayed by more than 60 minutes and that traveled over 1000 miles.




