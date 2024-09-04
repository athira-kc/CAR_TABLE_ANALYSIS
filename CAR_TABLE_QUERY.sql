select * from car_table;
select max(selling_price) from car_table;#10000000
select min(selling_price) from car_table;#29999
select transmission,max(selling_price)from car_table group by transmission;#manual=3200000  automatic=10000000
select transmission,min(selling_price)from car_table group by transmission;#manual=29999 automatic=7500
select company,max(selling_price)from car_table group by company;
select *from car_table order by selling_price desc;
select mileage,MAX(selling_price) as price from car_table group by mileage_category ;
select * from car_table order by engine limit 20,5; #engine=1047 and price=350000
update car_table set engine=trim(engine);
set safe_sql_updates=0;
select * from car_table order by engine desc;
select transmission,fuel,count(*) as count from car_table group by transmission,fuel order by transmission,fuel ;
select mileage,selling_price from car_table order by mileage desc;
select year,avg(selling_price) as avg_price from car_table order by year desc;
SELECT Year, AVG(Selling_Price) AS Avg_Selling_Price FROM car_table GROUP BY Year;
SELECT seats,AVG(selling_price ) AS st FROM car_table GROUP BY seats order by seats desc;
select owner,avg(selling_price) as price from car_table group by owner;
select fuel,avg(seller_type)from car_table group by fuel;
SELECT fuel, AVG(mileage) AS avg_mileage FROM car_table GROUP BY fuel;
SELECT engine, AVG(selling_price) AS avg_price FROM car_table GROUP BY engine order by engine;
SELECT selling_price, AVG(engine) AS avg_ FROM car_table GROUP BY selling_price order by selling_price ;
select seats,count(*) from car_table group by seats order by count(*);
select distinct * from car_table;
create temporary table new1 select distinct * from car_table;
select * from new1;
delete from car_table;
set sql_safe_updates=0;
insert into car_table select * from new1;



