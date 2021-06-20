CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT
	COUNT(s.id_song) AS cancoes,
    COUNT(art.id_artist) AS artistas,
    COUNT(alb.id_album) AS albuns
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.artists AS art, SpotifyClone.albums AS alb;
