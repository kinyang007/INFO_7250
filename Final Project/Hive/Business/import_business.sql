add jar /Users/kinyang/Github/INFO_7250/Jars/json-serde-1.3.8-jar-with-dependencies.jar;

drop table if exists business;
create table business (
    business_id string,
    name string,
    address string,
    state string,
    city string,
    postal_code string,
    latitude double,
    longitude double,
    stars double,
    review_count int,
    is_open int,
    attributes string,
    categories array<string>,
    hours map<string, string>
)
row format serde 'org.openx.data.jsonserde.JsonSerDe'
stored as textfile;

load data local inpath '/Users/kinyang/yelp_dataset/business.json' overwrite into table business;
