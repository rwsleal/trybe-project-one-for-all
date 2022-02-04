SELECT
	art.artista,
  alb.album
FROM
	SpotifyClone.artistas AS art
INNER JOIN
	SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
WHERE artista = 'Walter Phoenix'
ORDER BY album ASC;
