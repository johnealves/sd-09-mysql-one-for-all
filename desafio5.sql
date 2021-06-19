CREATE VIEW top_2_hits_do_momento AS 
SELECT c.titulo_cancao AS 'cancao', COUNT(hr.cancao_id) AS 'reproducoes'
FROM SpotifyClone.Cancoes c 
INNER JOIN SpotifyClone.Historico_Reproducoes hr ON c.cancao_id = hr.cancao_id
GROUP BY hr.cancao_id
ORDER BY `reproducoes` DESC, c.titulo_cancao
LIMIT 2;
