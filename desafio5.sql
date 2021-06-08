CREATE VIEW top_2_hits_do_momento AS
SELECT
  m.music_name AS `cancao`,
  COUNT(h.music_id) AS `reproducoes`
FROM histories AS h
INNER JOIN musics as m
  ON m.music_id = h.music_id
GROUP BY `cancao`
ORDER BY  `reproducoes` DESC, `cancao`
LIMIT 2;
