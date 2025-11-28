use jogo;

/*listar jogadores ativos (25) */
select id_usuario, nome_usuario
from usuarios
where status = 1
order by nome_usuario asc;


/* contar jogadores por partida */
select * from jogadores_partidas;

select id_partida, count(*) as total_jogadores /* -> atributo calculado ou derivado */
from jogadores_partidas
group by id_partida
order by id_partida;
