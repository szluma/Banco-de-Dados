use FrequenciaProfessor;

-- inserir dados na tabela turma
insert into Turma (id_turma, nome_turma) 
values (1, "Informática");
insert into Turma (id_turma, nome_turma) 
values (2, "Eletrotécnica");
insert into Turma (id_turma, nome_turma) 
values (3, "Farmácia");

select * from Turma;

-- atualizar o nome da turma usando o id
update Turma set nome_turma = "Nutrição" 
where id_turma = 2;

select * from Turma;

-- inserir dados na tabela professor
insert into Professor (prof_matricula, nome, formacao) 
values (100, "Alaene", "Pedagoga");
insert into Professor (prof_matricula, nome, formacao)  
values (101, "Danisio", "Matemática");
insert into Professor (prof_matricula, nome, formacao)  
values (102, "Lara", "Letras");

select * from Professor;

update Professor set nome = "Aristonio" 
where prof_matricula = 101;

select * from Professor;

-- inserir dados na tabela Disciplina
insert into Disciplina (id_disc, nome_disc, carga_horaria) 
values (30, "Química", "40.00");
insert into Disciplina (id_disc, nome_disc, carga_horaria) 
values (45, "Português", "60.00");
insert into Disciplina (id_disc, nome_disc, carga_horaria) 
values (52, "Inglês", "40.00");

select * from Disciplina;


-- inserir dados na tabela Horario
insert into Horario (id_horario, hora_inicio, hora_fim, dia_semana) 
values (110, "09:40", "11:40", "segunda");
insert into Horario (id_horario, hora_inicio, hora_fim, dia_semana) 
values (120, "07:20", "09:20", "quarta");
insert into Horario (id_horario, hora_inicio, hora_fim, dia_semana) 
values (130, "13:00", "15:00", "quinta");

select * from Horario;

-- inserir dados na tabela Frequencia
insert into Frequencia (id_freq, quant_falta, quant_presenca) 
values (75, 4, 36);
insert into Frequencia (id_freq, quant_falta, quant_presenca) 
values (74, 10, 30);
insert into Frequencia (id_freq, quant_falta, quant_presenca) 
values (73, 2, 58);

select * from Frequencia;

-- inserir dados na tabela Aula
insert into Aula (id_aula, id_disc, id_turma, prof_matricula) 
values (400, 30, 2, 101);
insert into Aula (id_aula, id_disc, id_turma, prof_matricula) 
values (401, 45, 3, 102);
insert into Aula (id_aula, id_disc, id_turma, prof_matricula) 
values (402, 52, 1, 100);

select * from Aula;

-- inserir dados na tabela HorarioAula
insert into HorarioAula (id_HorarioAula, id_freq, id_horario, id_aula) 
values (220, 74, 120, 401);
insert into HorarioAula (id_HorarioAula, id_freq, id_horario, id_aula) 
values (230, 73, 130, 402);
insert into HorarioAula (id_HorarioAula, id_freq, id_horario, id_aula) 
values (240, 75, 110, 400);

select * from HorarioAula;


-- Teste de consultas no Banco de Dados

-- listar todas as turmas
select * from turma;

-- listar os professores cuja formação é 'Letras'
select * from Professor
where formacao = 'Letras';

-- atualizar a carga horária da disciplina de inglês
update Disciplina 
set carga_horaria = '50.00'
where nome_disc = 'Inglês';

-- listar o nome do professor e o id da aula que ele ministra
select Professor.nome, Aula.id_aula
from Aula
join Professor
on Aula.prof_matricula = Professor.prof_matricula;

-- listar o nome das disciplinas e turmas
select Disciplina.nome_disc, Turma.nome_turma
from Aula
join Disciplina
on Aula.id_disc = Disciplina.id_disc
join Turma
on Aula.id_turma = Turma.id_turma;

-- listar a quantidade de presenças e faltas em cada aula
select Aula.id_aula, Frequencia.quant_presenca, Frequencia.quant_falta
from HorarioAula
join Frequencia
on HorarioAula.id_freq = Frequencia.id_freq
join Aula
on HorarioAula.id_aula = Aula.id_aula;
