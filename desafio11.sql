CREATE VIEW cancoes_premium AS
SELECT S.`song_name` AS `nome`, COUNT(*) AS `reproducoes`
FROM SpotifyClone.Songs AS S
WHERE S.`song_id` IN(
  SELECT `song_id`
  FROM SpotifyClone.History AS H
  WHERE H.user_id IN(
    SELECT `user_id`
    FROM SpotifyClone.Users
    WHERE `plan_id` IN (2,3))
  )
GROUP BY S.`song_name`
ORDER BY S.`song_name`;
