#How many distinct (different) actors' last names are there?
use sakila;
select count(distinct last_name) from actor;

#In how many different languages where the films originally produced? (Use the column language_id from the film table)
select count(language_id) from language;

#How many movies were released with "PG-13" rating?
select count(film_id) from film where rating  = "PG-13";

#Get 10 the longest movies from 2006.
select title, length from film where release_year = "2006" order by length desc limit 10;

#How many days has been the company operating (check DATEDIFF() function)?
select datediff(max(return_date), min(rental_date)) as total_days from rental;

#Show rental info with additional columns month and weekday. Get 20.
SELECT substring(rental_date, 6, 2)
AS month, substring(rental_date, 9, 2) as weekday
FROM rental limit 20;

#Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT  rental_date, dayname(rental_date) AS day, substring(rental_date, 9, 2) as weekday,
CASE WHEN dayname(rental_date) IN ("Saturday","Sunday") THEN 'Weekend' 
ELSE 'Weekday' END AS day_type
FROM rental; 


