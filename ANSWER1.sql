CREATE database WIKIPEDIA;
USE WIKIPEDIA;

Create external table data (lang string, search string, visit int, deli int)
row format delimited
fields terminated by ' '
location "/tmp/question1_table";


LOAD DATA INPATH '/tmp/data.txt' INTO TABLE data;

select search, sum(visit) as visits from data group by search order by visits desc limit 20;
