CREATE TABLE pessoa (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENTO,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoa (nome, nascimento) VALUES ('Jessika', '1988-03-26')
INSERT INTO pessoa (nome, nascimento) VALUES ('Aline', '1993-04-16')
INSERT INTO pessoa (nome, nascimento) VALUES ('Joao', '1990-05-1-20')

SELECT nome, nascimento FROM pessoas

SELECT * FROM pessoa

UPDATE pessoa SET nome='Aline Franca' WHERE id=2

DELETE FROM pessoa WHERE id=1

SELECT * FROM pessoa WHERE id=1

DELETE FROM pessoa WHERE id=1

SELECT * FROM pessoa ORDER BY nome

SELECT * FROM pessoa ORDER BY nome DESC

SELECT COUNT(genero), genero FROM pessoa GROUP BY genero;

--Command Line commands

CREATE TABLE cursos(id_curso INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nome VARCHAR(10));

INSERT INTO cursos(nome) VALUES ('MySQL');

INSERT INTO cursos (nome) VALUES ('HTML');

SELECT * FROM cursos;

UPDATE cursos SET nome ='HTML5' WHERE id_curso=2;

DELETE FROM cursos WHERE id_curso=4;

ALTER TABLE cursos ADD carga_horaria INT(2);

UPDATE cursos SET carga_horaria=20;

UPDATE cursos SET carga_horaria=40 WHERE id_curso =2;

DROP TABLE cursos;

DROP DATABASE test;

SELECT * FROM pessoas JOIN cursos ON pessoa.fk_cursos = cursos.id_cursos

SELECT videos.title, author.name FROM pessoas JOIN cursos ON pessoa.fk_cursos = cursos.id_cursos

UPDATE videos SET fk_seo=2 WHERE id_video=1;

SELECT * FROM videos JOIN seo ON videos.fk_seo = seo.id_seo
 
SELECT videos.title, author.name, seo.category FROM videos JOIN seo ON videos.fk_seo = seo.id_seo
JOIN author ON videos.fk_author = author.id_author;

SELECT * from playlist JOIN videos_playlist ON playlist.id_playlist = videos_playlist.fk_playlist
JOIN videos ON videos.id_video = videos_playlist.fk_videos;
