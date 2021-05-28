drop database if exists SpotifyClone;

create database SpotifyClone;

use SpotifyClone;

create table SpotifyClone.artistas(
artista_id tinyint not null primary key,
nome varchar(100) not null
)engine =InnoDB;



create table SpotifyClone.albuns(
album_id tinyint not null primary key,
nome varchar(100) not null,
artista_id tinyint not null,
foreign key (artista_id) references artistas (artista_id)
) engine =InnoDB;



create table SpotifyClone.musicas(
musica_id tinyint not null primary key,
nome varchar(100) not null,
album_id tinyint not null,
foreign key (album_id) references albuns (album_id)
)engine =InnoDB;



create table SpotifyClone.planos(
plano_id tinyint not null primary key,
nome varchar(100) not null,
valor double(4,2) not null
)engine =InnoDB;



create table SpotifyClone.usuarios(
usuario_id tinyint not null primary key,
nome varchar(100) not null,
idade tinyint not null,
plano_id tinyint not null,
foreign key (plano_id) references planos (plano_id)
)engine =InnoDB;



create table SpotifyClone.seguidores(
artista_id tinyint not null,
usuario_id tinyint not null,
constraint primary key(artista_id, usuario_id),
foreign key (artista_id) references artistas (artista_id),
foreign key (usuario_id) references usuarios (usuario_id)
)engine =InnoDB;



create table SpotifyClone.historico(
usuario_id tinyint not null,
musica_id tinyint not null,
constraint primary key(musica_id, usuario_id),
foreign key (musica_id) references musicas (musica_id),
foreign key (usuario_id) references usuarios (usuario_id)
)engine =InnoDB;

insert into artistas(artista_id, nome) values (1,'Walter Phoenix'), (2,'Peter Strong'),
(3,'Lance Day'), (4, 'Freedie Shannon'); 

insert into albuns(album_id, nome, artista_id) values (1,'Envious', 1), (2,'Exuberant',1),
(3,'Hallowed Steam', 2), (4, 'Incandescent', 3), (5, 'Temporary Culture',4); 

insert into musicas(musica_id, nome, album_id) values (1,'Soul For Us', 1), (2,'Reflections of Magic',1),
(3,'Dance With Her Own',1),(4,'Troubles Of My Inner Fire', 2), (5, 'Time Fireworks', 2), 
(6, 'Magic Circus',3),(7, 'Honey,So Do I',3),(8, "Sweetie, Let's Go Wild",3),(9, 'She Knows',3),
(10, 'Fantasy For Me', 4),(11, 'Celebration Of More', 4),(12, 'Rock His Everything', 4),
(13, 'Home Forever', 4),(14, 'Diamond Power', 4), (15, "Honey, Let's Be Silly", 4),
(16, 'Thang Of Thunder', 5),(17, 'Words Of Her Life', 5),(18, 'Without My Streets', 5); 

insert into planos(plano_id, nome, valor) values (1,'gratuito', 0), (2,'universitário',5.99),
(3, 'familiar', 7.99);

insert into usuarios(usuario_id, nome, idade, plano_id) values (1,'Thati', 23, 1 ),
(2, 'Cintia', 35, 3), (3,'Bill', 20, 2), (4,'Roger', 45, 1);

insert into seguidores (artista_id, usuario_id) values (1,1),(4,1),(3,1), (1,2), (3,2), (1,3),
(2,3), (4,4);

insert into historico (usuario_id, musica_id) values (1,1), (1,6), (1,14), (1,16),
(2,13), (2, 17), (2,2), (2,15), (3,4), (3,16), (3, 6), (4,3), (4,18), (4,11);
