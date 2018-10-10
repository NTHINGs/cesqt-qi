-- ****************** CESQT QI ******************;
-- ***************************************************;
-- ************************************** %TABLE_PREFIX%registros

CREATE TABLE %TABLE_PREFIX%registros
(
 id               INT NOT NULL AUTO_INCREMENT ,
 fechaaplicacion  DATETIME NOT NULL ,
 organizacion     INT NOT NULL ,

PRIMARY KEY (id)
)%CHARSET_COLLATE%;





-- ************************************** %TABLE_PREFIX%grupos

CREATE TABLE %TABLE_PREFIX%grupos
(
 id           INT NOT NULL AUTO_INCREMENT ,
 nombre       VARCHAR(50) ,
 descripcion  VARCHAR(1000) ,

PRIMARY KEY (id)
)%CHARSET_COLLATE%;





-- ************************************** %TABLE_PREFIX%preguntas

CREATE TABLE %TABLE_PREFIX%preguntas
(
 id                 INT NOT NULL AUTO_INCREMENT ,
 pregunta           VARCHAR(500) NOT NULL ,
 grupo              INT NOT NULL,
 inversa            TINYINT NOT NULL ,

PRIMARY KEY (id),
KEY fkIdx_20 (grupo),
CONSTRAINT FK_20 FOREIGN KEY fkIdx_20 (grupo) REFERENCES %TABLE_PREFIX%grupos (id) ON DELETE CASCADE ON UPDATE CASCADE
)%CHARSET_COLLATE%;





-- ************************************** %TABLE_PREFIX%posibles_respuestas

CREATE TABLE %TABLE_PREFIX%posibles_respuestas
(
 id           INT NOT NULL AUTO_INCREMENT ,
 tipo         CHAR NOT NULL,
 valor        INT ,
 label        VARCHAR(100) NOT NULL ,
 pregunta     INT NOT NULL ,

PRIMARY KEY (id),
KEY fkIdx_21 (pregunta),
CONSTRAINT FK_21 FOREIGN KEY fkIdx_21 (pregunta) REFERENCES %TABLE_PREFIX%preguntas (id) ON DELETE CASCADE ON UPDATE CASCADE
)%CHARSET_COLLATE%;





-- ************************************** %TABLE_PREFIX%resultados

CREATE TABLE %TABLE_PREFIX%resultados
(
 id               INT NOT NULL AUTO_INCREMENT ,
 pregunta         INT NOT NULL ,
 registro         INT NOT NULL ,
 respuesta        INT NOT NULL ,
 respuesta_string VARCHAR(45) ,

PRIMARY KEY (id),
KEY fkIdx_15 (pregunta),
CONSTRAINT FK_15 FOREIGN KEY fkIdx_15 (pregunta) REFERENCES %TABLE_PREFIX%preguntas (id) ON DELETE CASCADE ON UPDATE CASCADE,
KEY fkIdx_18 (registro),
CONSTRAINT FK_18 FOREIGN KEY fkIdx_18 (registro) REFERENCES %TABLE_PREFIX%registros (id) ON DELETE CASCADE ON UPDATE CASCADE
)%CHARSET_COLLATE%;





