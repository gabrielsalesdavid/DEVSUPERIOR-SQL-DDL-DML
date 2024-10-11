/* DDL */

CREATE TABLE tb_curso(
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(30) NOT NULL,
    carga_horaria INT NOT NULL,
    valor FLOAT NOT NULL,
    nota_prevista FLOAT NOT NULL,
    nota_minima FLOAT NOT NULL
);

CREATE TABLE tb_turma(
    id INT PRIMARY KEY NOT NULL,
    numero INT NOT NULL,
    inicio DATE NOT NULL,
    vagas INT NOT NULL,
    curso_id INT,
    FOREIGN KEY(curso_id) REFERENCES tb_curso(id)
);

CREATE TABLE tb_aluno(
    cpf VARCHAR PRIMARY KEY NOT NULL,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE NOT NULL
);

CREATE TABLE tb_matricula(
    turma_id INT NOT NULL,
    aluno_id INT NOT NULL,
    data_matricula DATE NOT NULL,
    prestacoes INT NOT NULL,
    PRIMARY KEY(turma_id, aluno_id),
    FOREIGN KEY(turma_id) REFERENCES tb_turma(id)
);

CREATE TABLE tb_avaliacao(
    id INT PRIMARY KEY NOT NULL,
    nota FLOAT NOT NULL,
    data_aval DATE NOT NULL,
    turma_id INT,
    FOREIGN KEY(turma_id) REFERENCES tb_turma(id)
);

CREATE TABLE tb_resultado(
    aluno_id INT,
    avaliacao_id INT,
    nota_obtida FLOAT NOT NULL,
    PRIMARY KEY(aluno_id, avalicao_id),
    FOREIGN KEY(aluno_id) REFERENCES tb_aluno(id),
    FOREIGN KEY(avaliacao_id) REFERENCES tb_avaliacao(id)
);