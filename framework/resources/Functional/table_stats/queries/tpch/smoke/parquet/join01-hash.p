explain plan including all attributes for
select p.p_partkey 
   from `table_stats/tpch-multi/part` p, `table_stats/tpch-multi/partsupp` ps 
   where p.p_partkey = ps.ps_partkey 
              and p.p_size = 41  
order by p.p_partkey
limit 20;
