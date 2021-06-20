CREATE VIEW perfil_artistas AS
SELECT
a.artista_nome AS artista,
b.album_nome AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS b ON a.artista_id = b.artista_id
INNER JOIN SpotifyClone.seguindo AS s ON b.artista_id = s.artista_id
GROUP BY a.artista_nome, b.album_nome
ORDER BY seguidores DESC, artista;

-- SELECT * from perfil_artistas;
-- DROP VIEW top_2_hits_do_momento;

-- A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".

-- A segunda coluna deve exibir o nome do álbum, com o alias "album".

-- A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "seguidores".
