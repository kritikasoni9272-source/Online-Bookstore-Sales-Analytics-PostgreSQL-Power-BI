-- Importing Data
copy Books(book_id, title, author, genre, published_year, price, stock)
from 'C:\Users\dell\Downloads\Books.csv' 
csv header;

-- Retrieve Records
select * from public.books;
select * from public.customers;
select * from public.orders;