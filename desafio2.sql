CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(song_id) 'cancoes',
        (SELECT 
                COUNT(artist_id)
            FROM
                spotifyclone.artist) AS 'artistas',
        (SELECT 
                COUNT(album_id)
            FROM
                spotifyclone.album) AS 'albuns'
    FROM
        spotifyclone.song;