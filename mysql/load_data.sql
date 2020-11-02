CREATE TABLE test3 (
    datetime timestamp,
    a float,
    b float,
    c float,
    d float
);

load data local infile '/content/data.csv' into table test3
fields terminated by ','
enclosed by '"'
lines terminated by '\n'