CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(DISTINCT(cancoes.cancao_id)) AS 'cancoes',
COUNT(DISTINCT(artista.artista_id)) AS 'artistas',
COUNT(DISTINCT(album.album_id)) AS 'albuns'
FROM SpotifyClone.cancoes, SpotifyClone.artistas, SpotifyClone.albuns;
