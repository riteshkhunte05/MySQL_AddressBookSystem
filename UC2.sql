use AddressBookService;
create table Address_book(id int unsigned not null auto_increment,firstname varchar(15) not null,lastname varchar(10) not null,city varchar(50) not null,state varchar(50) not null,zip int not null,phone long not null,email varchar(100) not null,primary key (id));
