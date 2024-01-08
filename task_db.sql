create table if not exists Genres (
genre_id serial primary key,
title varchar(30) unique not null
);

create table if not exists Performers (
performer_id serial primary key,
name varchar(60) unique not null
);

create table if not exists Albums (
album_id serial primary key,
title varchar(60) not null,
year date
);

create table if not exists Tracks (
track_id serial primary key,
title varchar(60) not null,
duration interval
);

create table if not exists Collections (
collection_id serial primary key,
title varchar(60) not null,
year date
);

create table if not exists GenresPerformers (
id serial primary key,
genre_id integer not null references Genres(id),
performer_id integer not null references Performers(id)
);

create table if not exists TracksCollections (
id serial primary key,
track_id integer not null references Tracks(id),
collection_id integer not null references Collections(id)
);

create table if not exists PerformersAlbums (
id serial primary key,
performer_id integer not null references Performers(id),
album_id integer not null references Albums(id)
);



