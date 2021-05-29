USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(cancao) AS 'cancoes', (SELECT COUNT(artista)FROM SpotifyClone.artistas) as 'artistas',
(SELECT COUNT(album) FROM SpotifyClone.albuns) as 'albuns'
FROM SpotifyClone.cancoes;
