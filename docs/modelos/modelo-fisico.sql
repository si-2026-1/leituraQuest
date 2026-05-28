CREATE TABLE aluno 
( 
 matricula INT PRIMARY KEY,  
 id_turma INT,  
 nome VARCHAR,  
 email VARCHAR,  
 avatar VARCHAR,  
 nivel INT,  
 pontuacao INT,  
); 

CREATE TABLE professor 
( 
 id_professor INT PRIMARY KEY,  
 nome VARCHAR,  
 email VARCHAR,  
); 

CREATE TABLE turma 
( 
 id_turma INT PRIMARY KEY,  
 id_professor INT,  
 nome VARCHAR,  
 serie VARCHAR,  
 ano_letivo INT,  
); 

CREATE TABLE livro 
( 
 isbn INT PRIMARY KEY,  
 id_autor INT,  
 titulo VARCHAR,  
 genero VARCHAR,  
 descricao VARCHAR,  
 editora VARCHAR,  
 paginas INT,  
); 

CREATE TABLE autor 
( 
 id_autor INT PRIMARY KEY,  
 nome VARCHAR,  
 nacionalidade VARCHAR,  
); 

CREATE TABLE comunidade 
( 
 id_comunidade INT PRIMARY KEY,  
 id_professor INT,  
 titulo VARCHAR,  
 descricao VARCHAR,  
 imagem VARCHAR,  
); 

CREATE TABLE evento 
( 
 id_evento INT PRIMARY KEY,  
 id_comunidade INT,  
 titulo VARCHAR,  
 descricao VARCHAR,  
 data DATETIME,  
 recompensa INT,  
); 

CREATE TABLE aviso 
( 
 id_aviso INT PRIMARY KEY,  
 id_professor INT,  
 id_turma INT,  
 assunto VARCHAR,  
 mensagem VARCHAR,  
 data DATETIME,  
); 

CREATE TABLE aluno_comunidade 
( 
 matricula INT PRIMARY KEY,  
 id_comunidade INT PRIMARY KEY,  
); 

CREATE TABLE leitura 
( 
 matricula INT PRIMARY KEY,  
 isbn INT PRIMARY KEY,  
 progresso INT,  
 pontuacao INT,  
 data_inicio DATETIME,  
 data_fim DATETIME,  
); 

ALTER TABLE aluno ADD FOREIGN KEY(id_turma) REFERENCES turma (id_turma)
ALTER TABLE turma ADD FOREIGN KEY(id_professor) REFERENCES professor (id_professor)
ALTER TABLE livro ADD FOREIGN KEY(id_autor) REFERENCES autor (id_autor)
ALTER TABLE comunidade ADD FOREIGN KEY(id_professor) REFERENCES professor (id_professor)
ALTER TABLE evento ADD FOREIGN KEY(id_comunidade) REFERENCES comunidade (id_comunidade)
ALTER TABLE aviso ADD FOREIGN KEY(id_professor) REFERENCES professor (id_professor)
ALTER TABLE aviso ADD FOREIGN KEY(id_turma) REFERENCES turma (id_turma)
ALTER TABLE aluno_comunidade ADD FOREIGN KEY(matricula) REFERENCES aluno (matricula)
ALTER TABLE leitura ADD FOREIGN KEY(matricula) REFERENCES aluno (matricula)
ALTER TABLE leitura ADD FOREIGN KEY(isbn) REFERENCES livro (isbn)
