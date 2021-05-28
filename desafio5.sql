USE SpotifyClone;

CREATE VIEW top_2_hits_do_momento AS SELECT c.cancao AS 'cancao', COUNT(*) AS 'reproducoes' FROM SpotifyClone.historico_de_reproducoes AS hr INNER JOIN SpotifyClone.cancoes AS c ON c.cancao_id = hr.cancao_id GROUP BY hr.cancao_id ORDER BY `reproducoes` DESC, `cancao` ASC LIMIT 2;