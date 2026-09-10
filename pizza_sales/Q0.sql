Create database pizzabase;

create table orders(
	order_id int not null primary key,
	order_date Date not null,
    order_time time not null
);

create table order_details(
	order_details_id int not null primary key,
    order_id int not null,
	pizza_id text not null,
    quantity int not null
);