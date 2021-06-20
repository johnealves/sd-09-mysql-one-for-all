CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT
	(SELECT COUNT(id_song) FROM SpotifyClone.songs) AS cancoes,
    (SELECT COUNT(id_artist) FROM SpotifyClone.artists) AS artistas,
    (SELECT COUNT(id_album) FROM SpotifyClone.albums) AS albuns;
