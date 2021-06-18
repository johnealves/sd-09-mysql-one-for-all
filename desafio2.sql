CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(titulo_cancao) FROM SpotifyClone.Cancoes) AS 'cancoes',
(SELECT COUNT(nome_artista) FROM SpotifyClone.Artistas) AS 'artistas',
(SELECT COUNT(titulo_album) FROM SpotifyClone.Albuns) AS 'albuns';
