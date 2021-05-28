-- 5 - Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. 
-- Crie uma VIEW chamada top_2_hits_do_momento que possua duas colunas:
-- A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.
-- A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão.

CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.song_title AS cancao, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.songs AS s
            INNER JOIN
        SpotifyClone.user_history AS h ON h.song_id = s.song_id
    GROUP BY s.song_title
    ORDER BY reproducoes DESC , cancao
    LIMIT 2;
