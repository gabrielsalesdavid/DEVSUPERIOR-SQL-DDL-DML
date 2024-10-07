/*DDL(
    CREATE,
    ALTER,
    DROP
)*/

CREATE TABLE tb_cargo(
    id INT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    nivel VARCHAR(10),
    salario FLOAT
);

CREATE TABLE tb_departamento(
    id INT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    sigla VARCHAR(10) NOT NULL
);

CREATE TABLE tb_funcionario(
    id INT,
    nome VARCHAR(30) NOT NULL,
    data_adm DATE,
    sexo CHAR(1),
    cod_cargo INT NOT NULL,
    cod_depto INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(cod_cargo) REFERENCES tb_cargo(id),
    FOREIGN KEY(cod_depto) REFERENCES tb_departamento(id)
);

DROP TABLE tb_funcionario;

ALTER TABLE tb_funcionario ADD data_nasc DATE;

/*DML(
    SELECT,
    INSERT,
    UPDATE,
    DELETE,
    CALL
)*/

/*DCL(
    GRANT,
    REVOKE
)*/

/*TCL(
    COMMIT,
    SAVEPOINT,
    ROLLBACK
)*/