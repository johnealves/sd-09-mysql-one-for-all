CREATE VIEW cancoes_premium
AS SELECT c.nome AS 'nome', COUNT(*) AS 'reproducoes'
FROM historico_cancoes hc
INNER JOIN cancoes c ON c.cancao_id = hc.cancao_id
INNER JOIN usuarios u ON u.usuario_id = hc.usuario_id
INNER JOIN planos p ON p.plano_id = u.plano_id
WHERE p.nome IN ('familiar', 'universitario')
GROUP BY c.nome
ORDER BY c.nome;
