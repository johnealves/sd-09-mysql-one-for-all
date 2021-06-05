CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT(M.NOME)) AS 'cancoes',
COUNT(DISTINCT(A.NOME)) AS 'artistas', COUNT(DISTINCT(B.NOME_ALBUM)) AS 'albuns'
FROM SpotifyClone.MUSICAS AS M,
SpotifyClone.ARTISTAS AS A, SpotifyClone.ALBUNS AS B;
