CREATE VIEW estatisticas_musicais AS
SELECT
	COUNT(DISTINCT(C.cancao)) AS 'cancoes',
  COUNT(DISTINCT(A.artista)) AS 'artistas',
  COUNT(DISTINCT(AB.album)) AS 'albuns'
FROM SpotifyClone.cancoes AS C, SpotifyClone.artistas AS A, SpotifyClone.albuns AS AB;
