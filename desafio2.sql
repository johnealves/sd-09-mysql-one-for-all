CREATE VIEW SpotifyClone.estatisticas_musicais AS
  SELECT (SELECT COUNT(*) FROM SpotifyClone.cancoes),
    (SELECT COUNT(*) FROM SpotifyClone.artistas),
    (SELECT COUNT(*) FROM SpotifyClone.albums);
