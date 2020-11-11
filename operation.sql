CREATE DATABASE post;

CREATE TABLE post (id SMALLINT, username VARCHAR(25), 
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

