CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT(Musicas.musica_id)) AS 'cancoes',
COUNT(DISTINCT(Artistas.nome)) AS 'artistas',
COUNT(DISTINCT(Albuns.nome)) AS 'albuns'
FROM SpotifyClone.Musicas, SpotifyClone.Artistas, SpotifyClone.Albuns;