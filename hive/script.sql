set hive.groupby.orderby.position.alias=true;

create table test2 (datetime timestamp, a double, b double, c double, d double) row format delimited fields terminated by ',';

LOAD DATA LOCAL INPATH '/content/data.csv' OVERWRITE INTO TABLE test2;

describe test2;

select to_date(datetime),
avg(a) avg_a,
avg(b) avg_b,
avg(c) avg_c,
avg(d) avg_d,
min(a) min_a,
min(b) min_b,
min(c) min_c,
min(d) min_d,
max(a) max_a,
max(b) max_b,
max(c) max_c,
max(d) max_d
from test2
group by 1;