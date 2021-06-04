CREATE VIEW top_2_hits_do_momento
AS SELECT c.nome AS 'cancao', COUNT(*) AS 'reproducoes'
FROM historico_cancoes hc
INNER JOIN cancoes c ON c.cancao_id = hc.cancao_id
GROUP BY c.nome
ORDER BY COUNT(*) DESC, c.nome
LIMIT 2;
