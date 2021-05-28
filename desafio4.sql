-- 4 - Crie uma VIEW com o nome top_3_artistas que deve mostrar somente as três pessoas artistas mais populares no banco SpotifyClone, possuindo as seguintes colunas:
-- A primeira coluna deve possuir o alias "artista" e exibir o nome da pessoa artista.
-- A segunda coluna deve ter o alias "seguidores" e exibir a quantidade de pessoas que estão seguindo aquela pessoa artista.

CREATE VIEW top_3_artistas AS
    SELECT 
        a.artist_name AS artista, COUNT(*) AS seguidores
    FROM
        SpotifyClone.artists AS a
            INNER JOIN
        SpotifyClone.user_following AS h ON a.artist_id = h.artist_id
    GROUP BY a.artist_name
    ORDER BY seguidores DESC , artista
    LIMIT 3;
