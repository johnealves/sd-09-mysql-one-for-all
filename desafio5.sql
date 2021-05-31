CREATE VIEW top_2_hits_do_momento AS
    SELECT
        musicas.musica AS cancao, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.historico_reproducoes AS historico
            INNER JOIN
        SpotifyClone.musicas AS musicas ON musicas.musica_id = historico.musica_id
    GROUP BY historico.musica_id
    ORDER BY reproducoes DESC , cancao
    LIMIT 2;
