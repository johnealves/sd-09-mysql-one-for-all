CREATE VIEW cancoes_premium AS
SELECT
c.cancao_nome AS "nome",
COUNT(*) AS "reproducoes"
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS u ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.planos AS p ON p.plano_id = u.plano_id
WHERE p.plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
        
-- A primeira coluna deve exibir o nome da canção, com o alias "nome";

-- A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "reproducoes";

-- Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.
