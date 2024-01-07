--Q1

SELECT district, first_name, last_name
FROM address
INNER JOIN customer
ON customer.address_id = address.address_id 
WHERE district = 'Texas'


--Q2

SELECT amount,first_name, last_name
FROM payment
INNER JOIN customer
ON payment.customer_id =  customer.customer_id
WHERE amount > 6.99
GROUP BY amount, first_name,last_name


--Q3


SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id  
	FROM payment
	WHERE amount > 175)

	
--Q4
	

SELECT customer.first_name, customer.last_name 
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
WHERE city = 'Nepal'

--Q5


SELECT * FROM sales_transaction

SELECT * FROM sales_dept

-- Q6

SELECT rating, COUNT(*)
FROM film
GROUP BY rating 

--Q7

SELECT *
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING MAX(amount) > 6.99
);


-- Q8


SELECT customer_id, COUNT(*)
FROM payment
WHERE amount < 0
GROUP BY customer_id, amount
ORDER BY customer_id DESC;









 



