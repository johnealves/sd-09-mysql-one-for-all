/* Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as
duas músicas mais tocadas no momento. Crie uma VIEW chamada top_2_hits_do_momento que possua */
    
 CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        c.nome_cancao AS cancao, COUNT(hu.usuario_id) AS reproducoes
    FROM
        SpotifyClone.historico_usuario AS hu
            INNER JOIN
        SpotifyClone.cancoes AS c ON c.cancao_id = hu.cancao_id
    GROUP BY cancao
    ORDER BY reproducoes DESC , cancao ASC
    LIMIT 2;
 