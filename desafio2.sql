CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(DISTINCT musicas.musica_id) AS cancoes,
        COUNT(DISTINCT artistas.artista_id) AS artistas,
        COUNT(DISTINCT albuns.album_id) AS albuns
    FROM
        SpotifyClone.musicas AS musicas,
        SpotifyClone.artistas AS artistas,
        SpotifyClone.albuns AS albuns;
