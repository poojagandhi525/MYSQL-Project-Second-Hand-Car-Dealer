create schema cars;
use cars;

-- 1)Reads Cars Data
select * from car_dekho;

-- 2) Total Cars-> To get a count of total records
select count(*) from car_dekho;

-- 3) How many cars were available in 2023?
select count(*) from car_dekho where year = 2023;
select * from car_dekho where year = 2023;

-- 4) How many cars avaliable in 2020,2021 and 2022?
select count(*) from car_dekho where year in (2020,2021,2022);
select year,count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- 5) Print the total of all cars by year
select year,count(*) from car_dekho group by year;

-- 6) How many diesel cars were in 2020?
select count(*) from car_dekho where fuel = 'Diesel' and year = 2020;

-- 7) How many petrol cars were in 2023?
select count(*) from car_dekho where year = 2023 and fuel = 'Petrol';

-- 8) Print all the fuel cars(petrol,diesel and cng ) come by all years.
select year, count(*) from car_dekho where fuel = 'Petrol' group by year;
select year, count(*) from car_dekho where fuel = 'Diesel' group by year;
select year, count(*) from car_dekho where fuel = 'CNG' group by year;

-- 9) Which year had more than 100 cars?
select year, count(*) from car_dekho group by year having count(*) > 100;

-- 10) All cars count details between 2015 and 2023.
select count(*) from car_dekho where year between 2015 and 2023;
select * from car_dekho where year between 2015 and 2023;

-- 11) Unique fuel in dataset
select distinct fuel from car_dekho;
