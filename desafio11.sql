/* Crie uma VIEW chamada cancoes_premium que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano familiar ou universitário, de acordo com os detalhes a seguir:

A primeira coluna deve exibir o nome da canção, com o alias "nome";

A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "reproducoes";

Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética. */

CREATE VIEW cancoes_premium AS
  SELECT s.song nome,
    (SELECT COUNT(*) FROM track_record WHERE song_id = s.song_id) reproducoes
  FROM track_record tr
    INNER JOIN song s ON tr.song_id = s.song_id
    INNER JOIN user u ON tr.user_id = u.user_id
  WHERE u.plan_id IN (2, 3)
  ORDER BY nome;
