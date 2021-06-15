/* Crie uma VIEW chamada estatisticas_musicais que exiba três colunas:

A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".

A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".

A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns". */

USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
  SELECT COUNT(DISTINCT s.song) AS cancoes,
    COUNT(DISTINCT art.artist) AS artistas,
    COUNT(DISTINCT alb.album) AS albuns
  FROM song s
    INNER JOIN album alb ON s.album_id = alb.album_id
    INNER JOIN artist art ON alb.artist_id = art.artist_id;

SELECT * FROM estatisticas_musicais;
