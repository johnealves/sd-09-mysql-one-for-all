USE SpotifyClone;

CREATE VIEW estatisticas_musicais
AS SELECT
(SELECT COUNT(cancao) FROM Cancao) AS 'cancoes',
(SELECT COUNT(nome) FROM Artista) AS 'artistas',
COUNT(album) AS 'albuns'
FROM Album;
