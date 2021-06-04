CREATE VIEW estatisticas_musicais
AS SELECT cancoes, artistas, albuns
FROM
  (SELECT COUNT(*) AS cancoes FROM cancoes) AS c,
  (SELECT COUNT(*) AS artistas FROM artistas) AS ar,
  (SELECT COUNT(*) AS albuns FROM albuns) AS al;
