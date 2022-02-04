SELECT
	can.cancao,
    COUNT(his.usuario_id) as reproducoes
FROM
	SpotifyClone.cancoes as can
INNER JOIN
	SpotifyClone.historico as his ON can.cancao_id = his.cancao_id
GROUP BY his.cancao_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
