drop table IF EXISTS movies;
create table movies(movie_id SERIAL PRIMARY KEY, movie_name varchar(255),genre_id integer);

drop table IF EXISTS genres;
create table genres(genre_id SERIAL PRIMARY KEY, genre_name varchar(32));

alter table movies 
    add constraint movie_genre_fk
    foreign key (genre_id) 
    REFERENCES genres (genre_id);


ALTER TABLE movies ADD CONSTRAINT movies_movie_name_uq UNIQUE (movie_name);

insert into genres(genre_name) values ('SCI-FI');
insert into genres(genre_name) values ('Fantasy');
insert into genres(genre_name) values ('Comedy');
insert into genres(genre_name) values ('Romance');
insert into genres(genre_name) values ('Horror');


insert into movies(movie_name,genre_id) values('Star Wars',(select genre_id from genres where genre_name='SCI-FI'));
insert into movies(movie_name,genre_id) values('Nothing But Trouble',(select genre_id from genres where genre_name='Fantasy'));
insert into movies(movie_name,genre_id) values('Uncle Buck',(select genre_id from genres where genre_name='Comedy'));
insert into movies(movie_name,genre_id) values('The Notebook',(select genre_id from genres where genre_name='Romance'));
insert into movies(movie_name,genre_id) values('Nightmare on Elm Street',(select genre_id from genres where genre_name='Horror'));