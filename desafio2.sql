USE spotifyclone;

CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(song_id) 'cancoes',
        (SELECT 
                COUNT(artist_id)
            FROM
                artist) AS 'artistas',
        (SELECT 
                COUNT(album_id)
            FROM
                album) AS 'albuns'
    FROM
        song;
