#!/usr/bin/env bash
# Hadoop: Number of Businesses in each city and state
nohup hadoop jar Hadoop/target/Hadoop-1.0-SNAPSHOT.jar Business.NumersInEachCityAndState.MapReduce /yelp/business.json /fpresults/hadoop/NumberOfBusinessesEachCityAndState > shell_logs/hadoop_number_of_businesses_each_city.log &
# Hadoop: Top 5 Rated Business in each state
nohup hadoop jar Hadoop/target/Hadoop-1.0-SNAPSHOT.jar Business.Top5RatedBusinessInEachState.MapReduce /yelp/business.json /fpresults/hadoop/Top5RatedBusinessInEachState > shell_logs/hadoop_top_5_rated_business_in_each_state.log &
# Hadoop: Perentage of Ratings
nohup hadoop jar Hadoop/target/Hadoop-1.0-SNAPSHOT.jar Review.PercentageOfRatings.MapReduce /yelp/review.json /fpresults/hadoop/PercentageOfRatings > shell_logs/hadoop_percentage_of_ratings.log &
# Hadoop: Moving average rating of each business
nohup hadoop jar Hadoop/target/Hadoop-1.0-SNAPSHOT.jar Review.MovingAverageRatingOfEachBusiness.MapReduce /yelp/review.json /fpresults/hadoop/MovingAverageRatingOfEachBusiness > shell_logs/hadoop_moving_average_rating_of_each_business.log &
# HBase: Perentage of Ratings
nohup hadoop jar HBase/target/HBase-1.0-SNAPSHOT.jar Review.PercentageOfRatings.MapReduce > shell_logs/hbase_percentage_of_ratings.log &
# HBase: Number of Businesses in each city and state
nohup hadoop jar HBase/target/HBase-1.0-SNAPSHOT.jar Business.NumbersInEachCityAndState.MapReduce > shell_logs/hbase_number_of_businesses_each_city.log &
