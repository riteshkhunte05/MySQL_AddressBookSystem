Alter table Address_book add type varchar(15) after lastname;
update  Address_book set type='Family' where firstname ='Ritesh';
update  Address_book set type='Friends' where firstname  ='Aditya';
update  Address_book set type='Profession' where firstname  ='Shreyash';
SELECT * FROM Address_book;