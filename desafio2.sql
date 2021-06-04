CREATE VIEW estatisticas_musicais AS
SELECT 
    COUNT(sng.song_name) AS 'cancoes',
    (SELECT 
            COUNT(art.artist_name)
        FROM
            SpotifyClone.artists_table AS art) AS 'artistas',
    (SELECT 
            COUNT(alb.album_name)
        FROM
            SpotifyClone.albums_table AS alb) AS 'albuns'
FROM
    SpotifyClone.songs_table AS sng;
