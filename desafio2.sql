use SpotifyClone;
create view estatisticas_musicais as
select (select count(*) from cancoes) as `cancoes`, (select count(*) from artistas) as `artistas`, (select count(*) from albuns) as `albuns`
