CREATE VIEW estatisticas_musicais AS
	SELECT COUNT(*) AS cancoes,
    (SELECT COUNT(artista_id) FROM SpotifyClone.artista) AS artistas,
    (SELECT COUNT(album_id) FROM SpotifyClone.albuns) AS albuns
FROM SpotifyClone.musicas;
