CREATE VIEW estatisticas_musicais AS
    SELECT
        COUNT(song_id) AS cancoes,
        (SELECT COUNT(artist_id) FROM spotifyclone.artists) AS artistas,
        (SELECT COUNT(album_id) FROM spotifyclone.albums) AS albuns
    FROM
        spotifyclone.songs;
