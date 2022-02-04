SELECT
	usu.usuario,
  COUNT(his.cancao_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(can.duracao_segundos)/60,2) AS total_minutos
FROM
	SpotifyClone.usuarios AS usu
INNER JOIN
	SpotifyClone.historico AS his ON usu.usuario_id = his.usuario_id
INNER JOIN
	SpotifyClone.cancoes AS can ON his.cancao_id = can.cancao_id
GROUP BY his.usuario_id
ORDER BY usuario ASC;
