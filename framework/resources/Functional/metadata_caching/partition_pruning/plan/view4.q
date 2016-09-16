create or replace view l4 as select dir0 num, substr(dir1, 1, 2) let, extract(day from dir2) `day`, extract(month from dir2) `month`, extract(year from dir2) `year`, l_orderkey, l_tax from l_3level;
refresh table metadata l_3level;
 explain plan for select num, let, `day`, l_orderkey from l4 where num=2 and substring(let, 1, 1)='o' and `day` = 12 and `year`=2015 and `month` = 9 order by l_orderkey limit 10;
select 1 from sys.version;
select 1 from sys.version;