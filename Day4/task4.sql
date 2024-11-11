--1
select * from Sales

--2
select product_name, unit_price from Products

--3
select sale_id , sale_date from Sales

--4
select * from Sales
where total_price > 100;

--5
select * from Products
where category = 'Electronics';

--6
select sale_id , total_price from Sales
where sale_date ='2024-01-3';

--7
select product_id ,product_name from Products
where  unit_price >100;

--8
select sum(total_price) from Sales;

--9
select sale_id , product_id, total_price from Sales
where quantity_sold > 4;

--10
select * from Products
select * from Sales
select sum(total_price) from Sales s inner join Products p
on s.product_id = p.product_id
where p.category = 'Electronics';

--11
select sum(quantity_sold) from Sales s inner join Products p
on s.product_id = p.product_id
where p.category = 'Electronics';