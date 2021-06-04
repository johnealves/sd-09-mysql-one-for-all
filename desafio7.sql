CREATE VIEW SpotifyClone.perfil_artistas AS SELECT 
    a.artista, ab.album, count(u.usuario) as `seguidores`
FROM
    SpotifyClone.albuns AS ab,
    SpotifyClone.artistas AS a,
    SpotifyClone.seguidores_por_artistas AS s,
    SpotifyClone.usuarios AS u
WHERE
    (ab.artista_id = a.artista_id)
        AND (s.usuario_id = u.usuario_id)
        AND (s.artista_id = ab.artista_id)
GROUP BY 2 , 1
ORDER BY
  `seguidores` DESC,
  a.artista ASC,
  ab.album ASC;
  