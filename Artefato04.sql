create database FrequenciaProfessor;

use FrequenciaProfessor;

create table Turma (
	id_turma int primary key auto_increment,
    nome_turma varchar(45) not null
);

create table Disciplina (
	id_disc int primary key auto_increment,
    carga_horaria decimal(10, 2),
    nome_disc varchar(45) not null
);

create table Professor (
	prof_matricula int primary key auto_increment,
    nome varchar(45) not null,
    formacao varchar(45)
);

create table Aula (
	id_aula int primary key auto_increment,
	id_turma int not null references Turma(id_turma),
    id_disc int not null references Disciplina(id_disc),
    prof_matricula int not null references Professor(prof_matricula)
);

create table Horario (
	id_horario int primary key auto_increment,
    hora_inicio time not null,
    hora_fim time not null,
    dia_semana varchar(20) not null
);

create table Frequencia (
	id_freq int primary key auto_increment,
    quant_falta int,
    quant_presenca int
);

create table HorarioAula (
	id_HorarioAula int primary key auto_increment,
    id_horario int not null references Horario(id_horario),
    id_freq int not null references Frequencia(id_freq),
    id_aula int not null references Aula(id_aula)
);
