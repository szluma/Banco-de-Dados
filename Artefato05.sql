use FrequenciaProfessor;

-- inserir dados nas turmas
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

-- inserir dados em professor
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

-- inserir dados em Disciplina
insert into Disciplina (id_disc, nome_disc, carga_horaria) 
values (30, "Química", 40);
insert into Disciplina (id_disc, nome_disc, carga_horaria) 
values (31, "Português", "60");
insert into Disciplina (id_disc, nome_disc, carga_horaria) 
values (32, "Inglês", "40");

select * from Disciplina;


-- inserir dados em Horario
insert into Horario (id_horario, hora_inicio, hora_fim, dia_semana) 
values (110, "", "Pedagoga");
insert into Professor (prof_matricula, nome, formacao)  
values (111, "Danisio", "Matemática");
insert into Professor (prof_matricula, nome, formacao)  
values (112, "Lara", "Letras");

select * from Professor;