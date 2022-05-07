CREATE TABLE addressbooks (id int not null auto_increment primary key,firstname varchar(15) NOT NULL, lastname varchar(10) NOT NULL,city varchar(50) NOT NULL,state varchar(50) NOT NULL,zip int(6) NOT NULL ,phone varchar(10) NOT NULL,email varchar(100) NOT NULL UNIQUE);
desc addressbooks;

create table addressbooks_name(id int not null auto_increment primary key,name varchar (20) not null,ab_id int ,foreign key (ab_id)references addressbooks(id)  );
desc addressbooks_name;

create table addressbooks_type(id int not null primary key,type varchar (20));
desc addressbooks_type;

create table addressbooks_abtype(a_id int not null,t_id int not null,foreign key(a_id) references addressbooks(id),foreign key(t_id) references addressbooks_type(id),primary key(a_id,t_id));

INSERT INTO addressbooks VALUES
(1,'Ritesh', 'Khunte', 'Amravati', 'Maharastra',444806, 9168112901, 'riteshkhunte05@gmail.com'),
(2,'Shreyash', 'Patil', 'Pune', 'Maharashtra', 411402, 8138975257, 'shreyashpatil@gmail.com'),
(3,'Aditya', 'Nath', 'Gorakhpur', 'Uttar Pradesh', 7125487, 8149454587, 'adityanath01@gmail.com'),
(4,'Rajendra', 'Gund', 'Ahmednagr', 'Maharastra', 414501, 9604315270, 'rajendragund@gmail.com');
 
insert into addressbooks_name values (1,'AdddressBook1', 2); 

insert into addressbooks_type values(1,'family');
insert into addressbooks_type values(2,'friends');
insert into addressbooks_type values(3,'profession');

insert into addressbooks_abtype(a_id,t_id)values(1,1);

select * from addressbooks;
select * from addressbooks_name;
select * from addressbooks_type;
select * from addressbooks_abtype;