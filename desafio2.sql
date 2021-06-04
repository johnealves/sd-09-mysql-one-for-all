CREATE VIEW estatisticas_musicais AS
SELECT DISTINCT
(SELECT count(musica) FROM SpotifyClone.musicas) AS 'cancoes',
(SELECT count(artista) FROM SpotifyClone.artistas) AS 'artistas',
(SELECT count(album) FROM SpotifyClone.albuns) AS 'albuns'
FROM SpotifyClone.musicas, SpotifyClone.artistas, SpotifyClone.albuns;
