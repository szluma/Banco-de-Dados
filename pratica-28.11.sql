use jogo;

/* 1.listar jogadores ativos (25) */
select id_usuario, nome_usuario
from usuarios
where status = 1
order by nome_usuario asc;


/* 2. contar jogadores por partida */
select * from jogadores_partidas;

select id_partida, count(*) as total_jogadores /* -> atributo calculado ou derivado */
from jogadores_partidas
group by id_partida
order by id_partida;


/* 3. partidas finalizadas */
SELECT id_partida, nome_mapa, inicio_em, fim_em
FROM partidas
WHERE status = 0
ORDER BY inicio_em DESC;


/* 4. itens lendarios */
SELECT * FROM itens;

SELECT id_item, nome_item, tipo_item
FROM itens
WHERE raridade = 'lendario'
ORDER BY nome_item;


/* 5. quedas não coletadas */
SELECT q.id_queda_item, q.id_partida, q.id_item, i.nome_item, caiu_em
FROM quedas_itens q
LEFT JOIN itens i ON i.id_item = q.id_item
WHERE id_usuario_coletor IS NULL
ORDER BY caiu_em;


/* 6. painel de partidas */
SELECT 
	p.id_partida,
	p.nome_mapa,
	p.status,
    COUNT(j.id_usuario) AS total_jogadores
FROM partidas AS p
LEFT JOIN jogadores_partidas AS j
	ON j.id_partida = p.id_partida
GROUP BY 
	p.id_partida,
	p.nome_mapa,
	p.status
ORDER BY
	p.id_partida;


/* 7. */
SELECT 
    u.id_usuario,
    u.nome_usuario,
    u.status,
    COUNT(j.id_partida) AS partidas_jogadas
FROM usuarios AS u
LEFT JOIN jogadores_partidas AS j
ON j.id_usuario = u.id_usuario
GROUP BY 
	u.id_usuario,
	u.nome_usuario,
	u.status
ORDER BY
	partidas_jogadas DESC,
    u.nome_usuario ASC;

/* 8. remover usuario da partida */
SELECT * FROM USUARIOS WHERE id_usuario = 2;

UPDATE usuarios
SET status = b'0'
WHERE id_usuario = 2;


/* 9. denuncia um usuário */
SELECT * FROM denuncias;

UPDATE denuncias
SET status = b'0'
WHERE id_denuncia = 5;


/* 10. remove as denuncias */
DELETE FROM denuncias
WHERE status = 0;


/* 11. exclui perfil dos jogadores */
DELETE FROM jogadores_partidas
WHERE id_jogador_partida = 37;
