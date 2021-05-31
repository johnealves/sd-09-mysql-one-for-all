-- INNER JOIN E SUBQUERIES
CREATE VIEW cancoes_premium AS
SELECT
C.titulo AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.usuario_cancao AS UC
INNER JOIN SpotifyClone.cancoes AS C ON C.cancao_id = UC.cancao_id
WHERE usuario_id IN (SELECT usuario_id FROM SpotifyClone.usuarios
WHERE plano_id IN (SELECT plano_id FROM SpotifyClone.planos WHERE plano <> 'gratuito'))
GROUP BY UC.cancao_id
ORDER BY nome;
