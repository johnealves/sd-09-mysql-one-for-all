CREATE VIEW estatisticas_musicais AS    
SELECT 
(SELECT COUNT(*) FROM SpotifyClone.songs) AS songs, 
(SELECT COUNT(*) FROM SpotifyClone.artists) AS astists,
(SELECT COUNT(*) FROM SpotifyClone.albums) AS albums;
