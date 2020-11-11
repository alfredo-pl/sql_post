CREATE DATABASE post;

CREATE TABLE post (id INT PRIMARY KEY, username VARCHAR(25), 
date_creation DATE, contenido VARCHAR(200), descriptions VARCHAR(200));

INSERT INTO post (id, username, date_creation, contenido, descriptions)
VALUES (1,'Pamela','2020-10-10', '1er Contenido', 'Esta es la descripcion del primer post');

INSERT INTO post (id, username, date_creation, contenido, descriptions)
VALUES (2,'Carlos','2020-10-10', 'Primer Contenido', 'Esta es la descripcion del post de carlos');

INSERT INTO post (id, username, date_creation, contenido, descriptions)
VALUES (3,'Pamela','2020-10-10', 'segundo Contenido', 'Esta es la descripcion del segundo post de pamela');

ALTER TABLE post add titulo varchar(100);

UPDATE post SET titulo = 'Titulo uno' WHERE id=1;
UPDATE post SET titulo = 'Titulo de carlos' WHERE id=2;
UPDATE post SET titulo = '2do Titulo de pamela' WHERE id=3;


INSERT INTO post (id, username, date_creation, contenido, descriptions,titulo)
VALUES (4,'Pedro','2020-10-10', '1er Contenido de Pedro','Esta es la descripcion del primer post de Pedro','titulo del post de pedro');
INSERT INTO post (id, username, date_creation, contenido, descriptions, titulo)
VALUES (5,'Pedro','2020-10-10', '2do Contenido de Pedro','Esta es la descripcion del 2do post de Pedro','titulo del 2do post de pedro');

DELETE FROM post WHERE id = 2;


INSERT INTO post (id, username, date_creation, contenido, descriptions,titulo)
VALUES (6,'Carlos','2020-10-10', 'Nuevo contenido','Esta es la descripcion del nuevo contenido de carlos','titulo del post de carlos new');

CREATE TABLE comentarios (id INT , date_h TIMESTAMP, content VARCHAR(200), FOREIGN KEY (id) REFERENCES post(id));


INSERT INTO comentarios (id, date_h, content)
VALUES (1,'2020-10-11 12:10:25', 'algo del comentario');


INSERT INTO comentarios (id, date_h, content)
VALUES (1,'2020-10-11 12:12:35', 'respuesta del comentario');


INSERT INTO comentarios (id, date_h, content)
VALUES (6,'2020-10-11 12:13:35', 'comentario 1');

INSERT INTO comentarios (id, date_h, content)
VALUES (6,'2020-10-11 12:14:35', 'comentario 2');

INSERT INTO comentarios (id, date_h, content)
VALUES (6,'2020-10-11 12:15:35', 'comentario 3');

INSERT INTO comentarios (id, date_h, content)
VALUES (6,'2020-10-11 12:16:35', 'comentario 4');

INSERT INTO post (id, username, date_creation, contenido, descriptions,titulo)
VALUES (7,'Margarita','2020-10-11', 'Contenido de margarita','Esta es la descripcion del primer post de Pedro','titulo del post de margarita');

INSERT INTO comentarios (id, date_h, content)
VALUES (7,'2020-10-11 15:30:35', 'comentario para margarita 1');
INSERT INTO comentarios (id, date_h, content)
VALUES (7,'2020-10-11 15:31:35', 'comentario para margarita 2');
INSERT INTO comentarios (id, date_h, content)
VALUES (7,'2020-10-11 15:32:35', 'comentario para margarita 3');
INSERT INTO comentarios (id, date_h, content)
VALUES (7,'2020-10-11 15:33:35', 'comentario para margarita 4');
INSERT INTO comentarios (id, date_h, content)
VALUES (7,'2020-10-11 15:34:35', 'comentario para margarita 5');