/* Crie uma VIEW chamada estatisticas_musicais que exiba três colunas:

A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".

A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".

A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns". */

USE SpotifyClone;
-- DROP VIEW estatisticas_musicais;
CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(*) AS cancoes,
    (SELECT COUNT(*) FROM artist) AS artistas,
    (SELECT COUNT(*) FROM album) AS albuns
  FROM song;

SELECT * FROM estatisticas_musicais;
