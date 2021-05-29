USE SpotifyClone;

CREATE VIEW estatisticas_musicais
AS SELECT
(SELECT COUNT(cancao) FROM SpotifyClone.Cancao) AS 'cancoes',
(SELECT COUNT(nome) FROM SpotifyClone.Artista) AS 'artistas',
COUNT(album) AS 'albuns'
FROM SpotifyClone.Album;
