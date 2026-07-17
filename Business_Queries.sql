-- retrieve all the books with fiction genre
select book_id, title, genre, price
from public.books
where genre='Fiction';

-- find the books published after 1950
select * from books
where published_year >= 1950;

-- list all customers from canada
select customer_id, name, city, country
from public.customers
where country='Canada';

-- show orders placed in november 2023
select * from public.orders
where order_date between '2023-11-01' and '2023-11-30';

-- retrieve the total stock of books available
select sum(stock) as total_stock
from public.books;

-- find the details of the most expensive book
select * from books
order by price desc 
limit 1; 

-- retrive all customers who ordered more than 1 qty of book
select * from public.orders
where quantity>1;

-- retrive all orders where the total amount exceeds $20
select * from orders
where total_amount> 20;

-- list all the genres available in the books table
select distinct genre from public.books;

-- find the books with the lowest stock
select book_id, title, stock from public.books
order by stock asc
limit 10;

-- calculate the total revenue generated from all orders
select sum(total_amount) as total_revenue
from public.orders;

-- retrive the total number of books sold for each genre
select b.genre, sum(o.quantity) as genre_sold
from public.orders o
join public.books b on o.book_id=b.book_id
group by b.genre ;

-- find the avg price of books in the fantasy genre
select avg(price) as avg_price
from books
where genre='Fantasy';

-- list customers who has placed at least 2 orders
select o.customer_id, c.name, count(o.order_id) as order_count
from public.orders o
join public.customers c 
on o.customer_id = c.customer_id
group by o.customer_id, c.name
having count(order_id) >= 2;

select customer_id, count(order_id) as order_count
from public.orders
group by customer_id
having count(order_id) >= 2;

-- find the most frequently ordered book
select o.book_id, b.title, count(o.order_id) as order_count
from orders o
join books b on o.book_id = b.book_id
group by o.book_id, b.title
order by order_count desc
limit 10;

-- show the top 3 most expensive books of the fantasy genre
select * from books
where genre='Fantasy'
order by price desc
limit 3;

-- retrive the total qty of books sold by each author
select b.author, sum(o.quantity) as total_books_sold
from public.orders o
join public.books b
on o.book_id = b.book_id
group by b.author;

-- list the cities where customers who spent over $30 are located
select distinct c.city
from orders o
join customers c
on o.customer_id = c.customer_id
where o.total_amount >= 30;

-- find the customers who spent the most on orders
select c.customer_id, c.name, sum(o.total_amount) as total_spent
from public.orders o
join public.customers c
on o.customer_id=c.customer_id
group by c.customer_id, c.name
order by total_spent desc limit 2;

-- calculate the stock remaining after fulfilling all orders
select b.book_id, b.title, b.stock, coalesce(sum(o.quantity),0) as order_quantity,
b.stock- coalesce(sum(o.quantity),0) as remaining_quantity
from books b
left join orders o
on b.book_id = o.book_id
group by b.book_id, b.title, b.stock;
