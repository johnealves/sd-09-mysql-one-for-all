-- 3 - Crie uma VIEW chamada historico_reproducao_usuarios. Essa VIEW deverá ter apenas duas colunas:
-- A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.
-- A segunda coluna deve possuir o alias "nome" e exibir o nome da canção ouvida pela pessoa com base no seu histórico de reprodução.
CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.user_name AS usuario, s.song_title AS nome
    FROM
        SpotifyClone.users AS u
            INNER JOIN
        SpotifyClone.user_history AS h ON h.user_id = u.user_id
            INNER JOIN
        SpotifyClone.songs AS s ON s.song_id = h.song_id
    ORDER BY u.user_name , s.song_title;
