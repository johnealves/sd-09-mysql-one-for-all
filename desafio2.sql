CREATE VIEW `estatisticas_musicais` AS
SELECT
  COUNT(ID_CANCAO) AS 'cancoes',
  (
    SELECT
      COUNT(ID_ARTISTA)
    FROM
      ARTISTAS
  ) AS 'artistas',
  (
    SELECT
      COUNT(ID_ALBUM)
    FROM
      ALBUNS
  ) AS 'albuns'
FROM
  CANCOES;
