SELECT
	can.cancao AS nome,
  COUNT(his.data_reproducao) as reproducoes
FROM
	SpotifyClone.cancoes as can
INNER JOIN
	SpotifyClone.historico as his ON can.cancao_id = his.cancao_id
INNER JOIN
	SpotifyClone.usuarios AS usu ON his.usuario_id = usu.usuario_id
INNER JOIN
	SpotifyClone.planos AS pla ON usu.plano_id = pla.plano_id
WHERE pla.plano IN ('gratuito', 'pessoal')
GROUP BY nome
ORDER BY nome ASC
