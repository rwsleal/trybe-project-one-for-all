SELECT
	usu.usuario,
  IF(MAX(YEAR(his.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo')
FROM
	SpotifyClone.usuarios as usu
INNER JOIN
	SpotifyClone.historico as his ON usu.usuario_id = his.usuario_id
GROUP BY his.usuario_id
ORDER BY usuario ASC;
