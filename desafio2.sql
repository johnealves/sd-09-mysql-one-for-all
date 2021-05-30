CREATE VIEW estatisticas_musicais AS
    SELECT
        (SELECT
                COUNT(cancao_nome)
            FROM
                cancao) AS cancoes,
        (SELECT
                COUNT(artista_nome)
            FROM
                artista) AS artistas,
        (SELECT
                COUNT(album_nome)
            FROM
                album) AS albuns;
