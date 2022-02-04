SELECT 
  cancao AS nome_musica,
  CASE
	  WHEN cancao LIKE '%Streets%' THEN REPLACE ('Without My Streets', 'Streets', 'Code Review')
    WHEN cancao LIKE '%Her Own%' THEN REPLACE ('Dance With Her Own', 'Her Own', 'Trybe')
    WHEN cancao LIKE '%Inner Fire%' THEN REPLACE ('Troubles Of My Inner Fire', 'Inner Fire', 'Project')
    WHEN cancao LIKE '%Silly%' THEN REPLACE ("Let's Be Silly", 'Silly', 'Nice')
    WHEN cancao LIKE '%Circus%' THEN REPLACE ('Magic Circus', 'Circus', 'Pull Request')
    ELSE cancao
  END AS novo_nome
FROM SpotifyClone.cancoes
WHERE cancao IN ('Without My Streets', 'Dance With Her Own', 'Troubles Of My Inner Fire', "Let's Be Silly", 'Magic Circus')
ORDER BY cancao ASC;