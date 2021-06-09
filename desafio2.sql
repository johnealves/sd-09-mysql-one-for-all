CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT c.cancao_titulo) AS 'cancoes',
COUNT(DISTINCT art.artista_nome) AS 'artistas',
COUNT(DISTINCT alb.album_titulo) AS 'albuns'
FROM  SpotifyClone.cancoes AS c, SpotifyClone.artistas AS art, SpotifyClone.albuns AS alb;
