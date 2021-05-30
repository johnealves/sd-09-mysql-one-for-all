CREATE VIEW historico_reproducao_usuarios AS
    SELECT
        usu.usuario_nome AS usuario,
        can.cancao_nome AS nome
    FROM
        usuario AS usu,
        cancao AS can,
        historico_de_reproducoes AS hist
    WHERE
        usu.usuario_id = hist.usuario_id
        AND can.cancao_id = hist.cancao_id
    ORDER BY
        usuario,
        nome;
