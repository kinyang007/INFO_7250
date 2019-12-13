add jar /Users/kinyang/Github/INFO_7250/Jars/hive-hcatalog-core-3.1.2.jar;

drop table if exists review;
create table review (
    review_id string,
    user_id string,
    business_id string,
    stars int,
    `date` string,
    text string,
    useful int,
    funny int,
    cool int
)
row format serde 'org.apache.hive.hcatalog.data.JsonSerDe'
stored as textfile;

load data local inpath '/Users/kinyang/yelp_dataset/review.json' overwrite into table review;
