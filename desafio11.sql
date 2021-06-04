CREATE VIEW cancoes_premium AS
SELECT 
    s.cancao_titulo AS 'nome',
    COUNT(ph.usuario_id) AS 'reproducoes'
FROM
    SpotifyClone.songs AS s
        JOIN
    SpotifyClone.playlist_history AS ph ON s.cancao_id = ph.cancao_id
          JOIN
    SpotifyClone.users AS u ON u.usuario_id = ph.usuario_id WHERE u.plano_id != 1
GROUP BY `nome`
ORDER BY `nome` ASC;
