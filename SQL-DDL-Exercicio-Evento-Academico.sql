/* DDL */

CREATE TABLE tb_categoria(
    id INT PRIMARY KEY NOT NULL,
    descricao VARCHAR(40) NOT NULL
);

CREATE TABLE tb_atividade(
    id INT PRIMARY KEY NOT NULL,
    descricao VARCHAR(40) NOT NULL,
    preco FLOAT NOT NULL,
    cat_id SERIAL,
    FOREIGN KEY(cat_id) REFERENCES tb_categoria(id)
);

CREATE TABLE tb_bloco(
    id INT PRIMARY KEY NOT NULL,
    inicio TIMESTAMP NOT NULL,
    fim TIMESTAMP NOT NULL,
    ativ_id SERIAL,
    FOREIGN KEY(ativ_id) REFERENCES tb_atividade(id)
);

CREATE TABLE tb_participante(
    id INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    ativ_id SERIAL,
    FOREIGN KEY(ativ_id) REFERENCES tb_atividade(id)
);

CREATE TABLE tb_participacao(
    parti_id INT,
    ativ_id INT,
    PRIMARY KEY(parti_id) REFERENCES tb_participante(parti_id),
    FOREIGN KEY(ativ_id) REFERENCES tb_atividade(id)
);