CREATE VIEW top_2_hits_do_momento AS
  SELECT nome AS cancao,
    count(nome) AS reproducoes
  FROM historico_reproducao_usuarios
  GROUP BY nome
  ORDER BY 2 DESC, 1
  LIMIT 2;
