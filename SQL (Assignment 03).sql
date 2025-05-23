use bootcamp;

insert into airbnb_listings  (id, city, country, number_of_rooms, year_listed)
values (7,'Karachi', 'Pakistan', 3, 2025 ),
(8,'Dehli', 'India', 5, 20230 ),
(9,'Sydney', 'Austrailia', 6, 1990 ),
(10,'Islamabad', 'Pakistan', 8, 2012 );

-- Question: 01 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings;

-- Question: 02 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select city from airbnb_listings;

-- Question: 03 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select city, year_listed from airbnb_listings;

-- Question: 04 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select id, city, number_of_rooms from airbnb_listings order by number_of_rooms ASC;

-- Question: 05 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select id, city, number_of_rooms from airbnb_listings order by number_of_rooms desc;

-- Question: 06 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings limit 5;

-- Question: 07 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select distinct city from airbnb_listings;


-- FILTERING DATA
-- Question: 01 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where number_of_rooms >= 3;

-- Question: 02 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where number_of_rooms > 3;


-- Question: 03 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where number_of_rooms = 3;

-- Question: 04 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where number_of_rooms <= 3;

-- Question: 05 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where number_of_rooms < 3;

-- Question: 06 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where number_of_rooms between 3 and 6;

-- Question: 07 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where city = 'paris';


-- Question: 08 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where country in ('USA','France');


-- Question: 09 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where city like 'j%' and city not like  '%t';

-- Question: 10 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where city = 'Paris' and number_of_rooms > 3;


-- Question: 11 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where city = 'Paris' or year_listed > 2012;

-- Question: 12 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where number_of_rooms = null;

-- Question: 13 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where number_of_rooms is not null;

-- Aggregating data
-- Simple Aggregations
-- Question: 01 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select sum(number_of_rooms) as total_number_of_rooms from airbnb_listings;

-- Question: 02 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select avg(number_of_rooms) as avg_number_of_rooms from airbnb_listings;

-- Question: 03 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where number_of_rooms = (select max(number_of_rooms) from airbnb_listings);

-- Question: 04 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select * from airbnb_listings where number_of_rooms = (select min(number_of_rooms) from airbnb_listings);

-- Grouping, Filtering, And Sorting
-- Question: 05 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select country, sum(number_of_rooms) as total_number_of_rooms from airbnb_listings group by country; 

-- Question: 06 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select country, avg(number_of_rooms) as avg_number_of_rooms from airbnb_listings group by country; 

-- Question: 07 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select country, max(number_of_rooms) as max_number_of_rooms from airbnb_listings group by country;

-- Question: 08 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select country, min(number_of_rooms) as min_number_of_rooms from airbnb_listings group by country;

-- Question: 09 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select country, avg(number_of_rooms) as avg_number_of_rooms from airbnb_listings
group by country order by country asc;

-- Question: 10 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select country, avg(number_of_rooms) as avg_number_of_rooms from airbnb_listings
where country in ('Japan','USA') group by country;


-- Question: 11 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select country, count(city) as number_of_cities from airbnb_listings group by country; 

-- Question: 12 Student ID = 208-saifullahkhantariqmehmood_Ba_coursemea
select year_listed from airbnb_listings group by year_listed having count(id) > 100;