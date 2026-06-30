CREATE TABLE aluno 
( 
 matricula INT PRIMARY KEY,  
 idturma INT,  
 idnotificacao INT,  
 nome VARCHAR,  
 email VARCHAR,  
 avatar VARCHAR,  
 nivel INT,  
 pontuacao FLOAT,  
 saldo FLOAT,  
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
 idprofessor INT,  
 nome VARCHAR,  
 serie INT,  
 ano_letivo INT,  
); 

CREATE TABLE livro 
( 
 isbn INT PRIMARY KEY,  
 idautor INT,  
 titulo VARCHAR,  
 genero ENUM,  
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
 idprofessor INT,  
 titulo VARCHAR,  
 descricao VARCHAR,  
 imagem VARCHAR,  
); 

CREATE TABLE evento 
( 
 id_evento INT PRIMARY KEY,  
 idcomunidade INT,  
 titulo VARCHAR,  
 descricao VARCHAR,  
 data DATETIME,  
 recompensa FLOAT,  
); 

CREATE TABLE aviso 
( 
 id_aviso INT PRIMARY KEY,  
 idprofessor INT,  
 idturma INT,  
 assunto VARCHAR,  
 mensagem VARCHAR,  
 data DATETIME,  
); 

CREATE TABLE item 
( 
 id_item INT PRIMARY KEY,  
 nome VARCHAR,  
 descricao VARCHAR,  
 valor FLOAT,  
 imagem VARCHAR,  
); 

CREATE TABLE notificacao 
( 
 id_notificacao INT PRIMARY KEY,  
 titulo VARCHAR,  
 descricao VARCHAR,  
 remetente INT,  
 destinatario INT,  
 lida BOOLEAN,  
 data_leitura DATETIME,  
 data_recebimento DATETIME,  
); 

CREATE TABLE Rel 
( 
 matricula INT PRIMARY KEY,  
 id_comunidade INT PRIMARY KEY,  
); 

CREATE TABLE leitura 
( 
 matricula INT PRIMARY KEY,  
 isbn INT PRIMARY KEY,  
); 

CREATE TABLE loja 
( 
 id_item INT PRIMARY KEY,  
 matricula INT PRIMARY KEY,  
); 

ALTER TABLE aluno ADD FOREIGN KEY(idturma) REFERENCES turma (idturma)
ALTER TABLE aluno ADD FOREIGN KEY(idnotificacao) REFERENCES notificacao (idnotificacao)
ALTER TABLE turma ADD FOREIGN KEY(idprofessor) REFERENCES professor (idprofessor)
ALTER TABLE livro ADD FOREIGN KEY(idautor) REFERENCES autor (idautor)
ALTER TABLE comunidade ADD FOREIGN KEY(idprofessor) REFERENCES professor (idprofessor)
ALTER TABLE evento ADD FOREIGN KEY(idcomunidade) REFERENCES comunidade (idcomunidade)
ALTER TABLE aviso ADD FOREIGN KEY(idprofessor) REFERENCES professor (idprofessor)
ALTER TABLE aviso ADD FOREIGN KEY(idturma) REFERENCES turma (idturma)
ALTER TABLE Rel ADD FOREIGN KEY(matricula) REFERENCES aluno (matricula)
ALTER TABLE Rel ADD FOREIGN KEY(id_comunidade) REFERENCES comunidade (id_comunidade)
ALTER TABLE leitura ADD FOREIGN KEY(matricula) REFERENCES aluno (matricula)
ALTER TABLE leitura ADD FOREIGN KEY(isbn) REFERENCES livro (isbn)
ALTER TABLE loja ADD FOREIGN KEY(id_item) REFERENCES item (id_item)
ALTER TABLE loja ADD FOREIGN KEY(matricula) REFERENCES aluno (matricula)
