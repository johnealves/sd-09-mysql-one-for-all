CREATE VIEW estatisticas_musicais AS
SELECT  COUNT(DISTINCT musica.musica) AS `cancoes`,
        COUNT(DISTINCT artista.artista) AS `artistas`,
        COUNT(DISTINCT album.album) AS `albuns`
FROM  SpotifyClone.musica
JOIN  SpotifyClone.artista,
      SpotifyClone.album;
