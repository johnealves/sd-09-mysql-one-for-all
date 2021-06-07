-- 11 -Crie uma VIEW chamada cancoes_premium que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano familiar ou universitário, de acordo com os detalhes a seguir:
-- A primeira coluna deve exibir o nome da canção, com o alias "nome";
-- A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "reproducoes";
-- Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.
CREATE VIEW cancoes_premium AS
    SELECT 
        s.song_title AS nome, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.songs AS s
            INNER JOIN
        SpotifyClone.user_history AS h ON h.song_id = s.song_id
            INNER JOIN
        SpotifyClone.users AS u ON u.user_id = h.user_id
            INNER JOIN
        SpotifyClone.plans AS p ON p.plan_id = u.plan_id
    WHERE
        p.plan_id IN (2 , 3)
    GROUP BY s.song_title
    ORDER BY s.song_title;
    
    -- Os INNER JOINS feitos com 'users' e 'plans' foram feitos para poder usar o WHERE.
