CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(DISTINCT(can.cancao_id)) AS 'cancoes',
COUNT(DISTINCT(art.artista_id)) AS 'artistas',
COUNT(DISTINCT(alb.album_id)) AS 'albuns'
FROM SpotifyClone.cancoes AS can, SpotifyClone.artistas AS art, SpotifyClone.albuns AS alb;
