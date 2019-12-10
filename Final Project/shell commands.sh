#!/usr/bin/env bash
# Hadoop: Number of Businesses in each city and state
hadoop jar Hadoop-1.0-SNAPSHOT.jar Business.NumersInEachCityAndState.MapReduce /yelp/business.json /fpresults/hadoop/NumberOfBusinessesEachCityAndState
# Hadoop: Top 5 Rated Business in each state
hadoop jar Hadoop-1.0-SNAPSHOT.jar Business.Top5RatedBusinessInEachState.MapReduce /yelp/business.json /fpresults/hadoop/Top5RatedBusinessInEachState
# Hadoop: Perentage of Ratings
hadoop jar Hadoop-1.0-SNAPSHOT.jar Review.PercentageOfRatings.MapReduce /yelp/review.json /fpresults/hadoop/PercentageOfRatings
# Hadoop: Moving average rating of each business
hadoop jar Hadoop-1.0-SNAPSHOT.jar

