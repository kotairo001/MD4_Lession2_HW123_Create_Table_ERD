create database QuanLyDonDatHang;
use QuanLyDonDatHang;
create table orderUnit(
unitID int 				not null primary key auto_increment,
unitName varchar(20)	not null,
address varchar(30),		
phone varchar(20)
);

create table customerUnit (
customerID int			not null primary key auto_increment,
customerName varchar(20)not null,
address varchar(30)
);

create table products (
productID int			not null primary key auto_increment,
productName varchar(20)	not null,
productUnit int			default(1),
productDetail varchar(50)
);

create table orderCustomer(
unitID int				not null,
orderCustomerID int		not null primary key auto_increment,
orderCustomerName varchar(20)		not null,
foreign key (unitID) references orderUnit (unitID)

);

create table orders(
orderCustomerID int		not null,
productID int			not null,
orderNumber int			default(0),
orderDate datetime,
orderQuantity int		check (orderQuantity > 0) not null,
foreign key (orderCustomerID) references orderCustomer (orderCustomerID),
foreign key (productID) references products (productID)
);

create table address(
addressID int 			not null primary key auto_increment,
addressName varchar(20) not null
);

create table receiver(
receiverID int			not null primary key auto_increment,
customerID int			not null,
receiverNamr varchar(20) not null,
foreign key (customerID) references customerUnit (customerID)
);

create table deliverer(
delivererID int 			not null primary key auto_increment,
delivererName varchar(20) not null
);

create table delivers(
receiverID int			not null,
addressID int 			not null,
delivererID int 		not null,
productID int			not null,
deliverID int			not null primary key auto_increment,
deliverDate datetime,
deliverAmount int		not null check (deliverAmount>0),
deliverPrice float		not null check (deliverPrice>0),
foreign key (receiverID) references receiver (receiverID),
foreign key (addressID) references address (addressID),
foreign key (delivererID) references deliverer (delivererID),
foreign key (productID) references products (productID)
);

-- drop database quanlydondathang;