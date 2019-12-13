drop table if exists percentage_of_ratings;
create table percentage_of_ratings
row format delimited
    fields terminated by ','
    lines terminated by '\n'
as
with tmp1 as (
    select count(*) as total
    from review
), tmp2 as (
    select stars, count(*) as count
    from review
    group by stars
)
select stars, concat(count / total * 100, '%') as percentage
from tmp1, tmp2;