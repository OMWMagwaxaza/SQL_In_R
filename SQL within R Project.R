library(nycflights13)
library(sqldf)

# Copy flights data into a data frame (sqldf works best with data.frames)
flights_df <- flights


#Q1 Load the flights dataset and display the first 5 rows using SQL in R.
head_flights <- sqldf("SELECT * FROM flights_df LIMIT 5")
print(head_flights)


#Q2 List all unique carriers in the dataset using SQL.
sqldf("SELECT DISTINCT carrier FROM flights_df")

#Q3 (3 Marks): Write a query to find the top 5 flights with the longest departure delay. Show carrier, flight, origin, dest, and delay.
sqldf("
        SELECT carrier, flight, origin, dest, dep_delay
        FROM flights_df
        ORDER BY dep_delay DESC
        LIMIT 5
      ")

#Q4 Calculate the average arrival delay per airline. Sort by worst performers.
sqldf("
      SELECT carrier, AVG(arr_delay) AS avg_arrival_delay
      FROM flights_df
      GROUP BY carrier
      ORDER BY avg_arrival_delay DESC
    ")

#Q5 Identify the top 3 destinations with the highest average arrival delays.
sqldf("
      SELECT dest, AVG(arr_delay) AS avg_arrival_delay
      FROM flights_df
      GROUP BY dest
      ORDER BY avg_arrival_delay DESC
      LIMIT 3
    ")

#Q6 Write a query that shows the average flight distance per origin airport.
sqldf("
        SELECT origin, AVG(distance) AS avg_distance
        FROM flights_df
        GROUP BY origin
      ")

#Q7 For each day in January, count the number of flights and calculate the average delay. Show day and average delay.
sqldf("
        SELECT day, COUNT(*) AS flight_count, AVG(dep_delay) AS avg_dep_delay
        FROM flights_df
        WHERE month = 1
        GROUP BY day
        ORDER BY day
      ")

#Q8 For each airline, compute the on-time percentage (arr_delay ≤ 0) and sort descending.
sqldf("
        SELECT carrier,
               100.0 * SUM(CASE WHEN arr_delay <= 0 THEN 1 ELSE 0 END) / COUNT(*) AS on_time_percentage
        FROM flights_df
        GROUP BY carrier
        ORDER BY on_time_percentage DESC
      ")

#Q9 Write a SQL query to find all flights that were delayed by more than 60 minutes and traveled over 1000 miles.
sqldf("
        SELECT *
        FROM flights_df
        WHERE arr_delay > 60 AND distance > 1000
      ")

