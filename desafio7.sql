-- 7 -Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma VIEW chamada perfil_artistas, com as seguintes colunas:
-- A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".
-- A segunda coluna deve exibir o nome do álbum, com o alias "album".
-- A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "seguidores".
CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artist_name AS artista,
        ab.album_name AS album,
        COUNT(*) AS seguidores
    FROM
        SpotifyClone.artists AS ar
            INNER JOIN
        SpotifyClone.albums AS ab ON ar.artist_id = ab.artist_id
            INNER JOIN
        SpotifyClone.user_following AS f ON ar.artist_id = f.artist_id
    GROUP BY ar.artist_name , ab.album_name
    ORDER BY seguidores DESC , artista;
