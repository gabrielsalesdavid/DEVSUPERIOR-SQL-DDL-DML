/* DML */

INSERT INTO tb_usuario(nome, email, nascimento, website, genero, telefone, foto_perfil_id) VALUES ('João Silva', 'joão@gmail.com', '1991-10-15', NULL, 'M', NULL, NULL);
INSERT INTO tb_usuario(nome, email, nascimento, website, genero, telefone, foto_perfil_id) VALUES ('Maria Alice', 'maria@gmail.com', '1999-04-15', 'youtube.com/alice', 'F', NULL, NULL);
INSERT INTO tb_usuario(nome, email, nascimento, website, genero, telefone, foto_perfil_id) VALUES ('Carlos Alves', 'carlos@yahoo.com', NULL, NULL, 'M', '997777-8383', NULL);
INSERT INTO tb_usuario(nome, email, nascimento, website, genero, telefone, foto_perfil_id) VALUES ('Ana Clara', 'clara@gmail.com', '1997-01-23', 'blog.clara.com', 'F', '88181-2820', NULL);

INSERT INTO tb_seguidores(seguidor_id, seguido_id) VALUES (1, 3);
INSERT INTO tb_seguidores(seguidor_id, seguido_id) VALUES (1, 4);
INSERT INTO tb_seguidores(seguidor_id, seguido_id) VALUES (3, 4);
INSERT INTO tb_seguidores(seguidor_id, seguido_id) VALUES (2, 4);

INSERT INTO tb_postagem(texto, instante, usuario_id) VALUES ('#partiu festa"', TIMESTAMP WITH TIME ZONE '2017-08-09T22:34:20Z', 4);
INSERT INTO tb_postagem(texto, instante, usuario_id) VALUES ('Bom dia pessoal!', TIMESTAMP WITH TIME ZONE '2017-08-10T13:50:00Z', 4);

INSERT INTO tb_album(titulo, instante_postagem, usuario_id) VALUES ('Férias de verão', TIMESTAMP WITH TIME ZONE '2017-01-13T16:50:13Z', 3);

INSERT INTO tb_foto(uri, instante_postagem, postagem_id, usuario_id, album_id) VALUES ('http://dominio.com/praia2.jpg', NULL, 3, 1);
INSERT INTO tb_foto(uri, instante_postagem, postagem_id, usuario_id, album_id) VALUES ('http://dominio.com/praia2.jpg', NULL, 3, 1);
