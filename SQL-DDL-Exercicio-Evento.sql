/* DML */
CREATE TABLE tb_local_nascimento(
    codigo INT PRIMARY KEY,
    cidade VARCHAR(10) NOT NULL,
    uf CHAR(2)
);

CREATE TABLE tb_aluno(
    codigo INT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    cod_nasc INT NOT NULL,
    FOREIGN KEY(cod_nasc) REFERENCES tb_local_nascimento(id)
);

CREATE TABLE tb_disciplina(
    codigo INT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL
);

CREATE TABLE tb_matricula(
    cod_aluno INT NOT NULL,
    cod_turma INT PRIMARY KEY,
    cod_disc INT NOT NULL,
    FOREIGN KEY(cod_aluno) REFERENCES tb_aluno(id),
    FOREIGN KEY(cod_disc) REFERENCES tb_disciplina(id)
);