create database bank_transactions;
use bank_transactions;
create table transactions(
transaction_id int Auto_increment primary key,
customer_id int,
customer_name varchar(50),
transaction_amount decimal(10,2)
);
INSERT INTO transactions (customer_id, customer_name, transaction_amount) VALUES
(101, 'Piyush', 6000),
(102, 'Aryan', 7000),
(103, 'Chetan', 4500),
(104, 'Saksham', 5200),
(105, 'Pranav', 5300),
(106, 'Tushar', 8000),
(101, 'Piyush', 6500),
(102, 'Aryan', 7200);
select * from transactions;
select customer_id,customer_name,
count(*) as high_value_txns
from transactions
where transaction_amount > 5000
group by customer_id,customer_name
having count(*) > 1;