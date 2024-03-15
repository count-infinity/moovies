drop table movies;
create table movies(id SERIAL PRIMARY KEY, name varchar(255),genre varchar(20));

insert into movies(name,genre) values('Star Wars','SCI-FI');
insert into movies(name,genre) values('Nothing But Trouble','Fantasy');
insert into movies(name,genre) values('Uncle Buck','Comedy');
insert into movies(name,genre) values('The Notebook','Romance');
insert into movies(name,genre) values('Nightmare on Elm Street','Horror');