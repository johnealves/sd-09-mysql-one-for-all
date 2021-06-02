CREATE VIEW top_2_hits_do_momento AS
SELECT
	C.cancao AS 'cancao',
  COUNT(C.cancao) AS 'reproducoes'
FROM SpotifyClone.historico_de_reproducao HR
INNER JOIN SpotifyClone.cancoes AS C ON HR.cancao_id = C.cancao_id
GROUP BY C.cancao HAVING COUNT(C.cancao) > 1;
