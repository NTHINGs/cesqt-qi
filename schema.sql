-- ****************** CESQT QI ******************;
-- ***************************************************;


-- ************************************** %TABLE_PREFIX%cesqt_registros

CREATE TABLE %TABLE_PREFIX%cesqt_registros
(
 id               INT NOT NULL AUTO_INCREMENT ,
 fechaaplicacion  DATETIME NOT NULL ,
 organizacion     INT NOT NULL ,

PRIMARY KEY (id)
)%CHARSET_COLLATE%;






-- ************************************** %TABLE_PREFIX%cesqt_preguntas

CREATE TABLE %TABLE_PREFIX%cesqt_preguntas
(
 id       INT NOT NULL AUTO_INCREMENT ,
 pregunta VARCHAR(500) NOT NULL ,
 tipo     VARCHAR(45) NOT NULL ,

PRIMARY KEY (id)
)%CHARSET_COLLATE%;






-- ************************************** %TABLE_PREFIX%cesqt_resultados

CREATE TABLE %TABLE_PREFIX%cesqt_resultados
(
 id               INT NOT NULL AUTO_INCREMENT ,
 pregunta         INT NOT NULL ,
 registro         INT NOT NULL ,
 respuesta        INT NOT NULL ,
 respuesta_string VARCHAR(45) ,

PRIMARY KEY (id),
KEY fkIdx_15 (pregunta),
CONSTRAINT FK_15 FOREIGN KEY fkIdx_15 (pregunta) REFERENCES %TABLE_PREFIX%cesqt_preguntas (id) ON DELETE CASCADE ON UPDATE CASCADE,
KEY fkIdx_18 (registro),
CONSTRAINT FK_18 FOREIGN KEY fkIdx_18 (registro) REFERENCES %TABLE_PREFIX%cesqt_registros (id) ON DELETE CASCADE ON UPDATE CASCADE
)%CHARSET_COLLATE%;





