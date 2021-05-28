CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(*) AS cancoes,
(SELECT COUNT(artist_id) FROM SpotifyClone.spotify_artists) AS artistas,
(SELECT COUNT(album_id) FROM SpotifyClone.spotify_albums) AS albuns
FROM SpotifyClone.spotify_musics;