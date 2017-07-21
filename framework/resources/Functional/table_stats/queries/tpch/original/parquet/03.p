-- tpch3 using 1395599672 as a seed to the RNG
explain plan including all attributes for
select
  l.l_orderkey,
  sum(l.l_extendedprice * (1 - l.l_discount)) as revenue,
  o.o_orderdate,
  o.o_shippriority
from
  `table_stats/Tpch0.01/parquet/customer` c,
  `table_stats/Tpch0.01/parquet/orders` o,
  `table_stats/Tpch0.01/parquet/lineitem` l
where
  c.c_mktsegment = 'HOUSEHOLD'
  and c.c_custkey = o.o_custkey
  and l.l_orderkey = o.o_orderkey
  and o.o_orderdate < date '1995-03-25'
  and l.l_shipdate > date '1995-03-25'
group by
  l.l_orderkey,
  o.o_orderdate,
  o.o_shippriority
order by
  revenue desc,
  o.o_orderdate
limit 10;
