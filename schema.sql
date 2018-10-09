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






-- ************************************** %TABLE_PREFIX%preguntas

CREATE TABLE %TABLE_PREFIX%preguntas
(
 id       INT NOT NULL AUTO_INCREMENT ,
 pregunta VARCHAR(500) NOT NULL ,
 tipo     VARCHAR(45) NOT NULL ,
 inversa  TINYINT NOT NULL ,
PRIMARY KEY (id)
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





