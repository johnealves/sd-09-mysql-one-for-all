CREATE VIEW top_2_hits_do_momento AS
SELECT
c.cancao_titulo AS 'cancao',
COUNT(hist.usuario_id) AS 'reproducoes' 
FROM SpotifyClone.historico_de_reproducoes AS hist
JOIN SpotifyClone.cancoes AS c ON c.cancao_id = hist.cancao_id
GROUP BY `cancao`
ORDER BY 2 DESC, 1 ASC
LIMIT 2;
