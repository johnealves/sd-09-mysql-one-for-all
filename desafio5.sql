CREATE VIEW top_2_hits_do_momento AS
SELECT cancoes.nome AS 'cancao',
COUNT(cancoes.nome) AS 'reproducoes'
FROM SpotifyClone.historico_de_reproducoes AS historico
INNER JOIN SpotifyClone.cancoes as cancoes
ON historico.cancao_id = cancoes.cancao_id
GROUP BY historico.cancao_id
ORDER BY 2 DESC, 1 ASC
LIMIT 2;
