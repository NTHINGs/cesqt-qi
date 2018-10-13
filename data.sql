-- ------------GRUPOS------------
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('INFORMACION', 'Información', 'En esta parte del cuestionario debe reflejar algunos datos personales. Con estos datos NO SE PRETENDE IDENTIFICARLE. Su objetivo es poder agrupar sus respuestas con la de otros profesionales de características similares a las suyas para ver si estas variables (por ejemplo: sexo, edad, antigüedad, tipo de servicio, etc. ) influyen sobre los niveles de estrés');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('ILUSION_POR_EL_TRABAJO', 'Ilusión Por El Trabajo', 'A continuación hay algunas afirmaciones en relación a su trabajo y sobre las consecuencias que se derivan de esa relación para usted como profesional y como persona. Piense con qué frecuencia le surgen a usted esas ideas o con qué frecuencia las siente, teniendo en cuenta la escala que se le presenta a continuación. Para responder rodee con un círculo la alternativa (el número) que más se ajusta a su situación:');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('INDOLENCIA', 'Indolencia');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('DESGASTE_PSIQUICO', 'Desgaste Psíquico');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('CULPA', 'Culpa');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('DESENCANTO_PROFESIONAL', 'Desencanto Profesional');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('AUTONOMIA', 'Autonomía');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('CONFLICTO_DE_ROL', 'Conflicto de Rol');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('AMBIGUEDAD_DE_ROL', 'Ambigüedad de Rol');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('SOBRECARGA_LABORAL', 'Sobrecarga Laboral');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('APOYO_SOCIAL', 'Apoyo Social');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('CONFLICTOS_INTERPERSONALES', 'Conflictos Interpersonales');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('INEQUIDAD', 'Inequidad');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`) VALUES ('FEEDBACK', 'Feedback');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('PROXIMA_PROMOCION', 'Próxima Promoción', 'Conteste la siguiente pregunta:');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('DEPRESION', 'Depresion', 'Las siguientes preguntas tienen que ver con su estado de salud y su con su estado de ánimo en general. Marque la opción que mejor refleje la frecuencia con la que le ocurre la frase en su situación actual.');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('PROBLEMAS_DE_SALUD', 'Problemas de Salud', 'Las siguientes preguntas tienen que ver con su estado de salud o problemas personales pero relacionado exclusivamente con el trabajo. ¿Ha experimentado alguna de las siguientes situaciones durante las últimas semanas en relación con su trabajo? Si es así, ¿con qué frecuencia?');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('ALCOHOLISMO_Y_TABAQUISMO', 'Alcoholismo y Tabaquismo', 'A continuación encontrará una serie de preguntas más personales. Por favor recuerde que el cuestionario es anónimo y que su objetivo no es evaluar a los personas de forma individual, sino a la organización en su conjunto. No obstante, y debido a que las organizaciones se componen de personas, necesitamos obtener algunos datos de las mismas para poder desarrollar programas de intervención. Pero estos datos serán tratados siempre a nivel estadístico, y en ningún caso se pretende obtener de ellos el diagnóstico o evaluación de un individuo, por ello le pedimos que responda con sinceridad a las preguntas.');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('VALORES_PERSONALES', 'Valores Personales', 'Las frases siguientes hacen referencia a los valores humanos. Piense detenidamente en la importancia que tiene en su vida cada uno de estos valores y conteste según su criterio redondeando al número que más se ajuste de la escala siguiente al grado de importancia que tiene para usted. Antes de responder lea las 18 frases y después puntúe cada una.');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('SATISFACCION_LABORAL', 'Satisfacción Laboral', 'Habitualmente nuestro trabajo y los distintos aspectos del mismo nos producen satisfacción o insatisfacción en algún grado. Califique de acuerdo con las siguientes alternativas el grado de satisfacción o insatisfacción que le producen los distintos aspectos de su trabajo.');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('RECURSOS', 'Recursos', 'Las afirmaciones que siguen tienen que ver con la disponibilidad de recursos (materiales y humanos) necesarios para los profesionales que atienden a personas. Para responder, eliga la opción que mejor refleje su situación de acuerdo con la siguiente escala. Valore en qué grado en su unidad dispone de:');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('AUTOEFICACIA' , 'Autoeficacia', 'A continuación aparecen una serie de afirmaciones que tienen que ver con la percepción de su competencia. Para responder a ellas, eliga la opción que más se ajuste al grado de acuerdo con su percepción según la escala que se le presenta a continuación.');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('ABSENTISMO', 'Absentismo', 'Las preguntas que encontrará a continuación tratan de su motivación para asistir al trabajo. Use la siguiente escala para responder:');
INSERT INTO wp_cesqt_grupos(`nombre`, `nombrelimpio`, `descripcion`) VALUES ('ABANDONO', 'Abandono', 'Valore las dos siguientes preguntas con una escala de 6 puntos en la que (6) supone completamente seguro de dejarlo y (1) supone completamente seguro de permanecer en el actual. Los puntos intermedios de la escala representan alternativas situadas entre los dos extremos.');




-- ------------PREGUNTAS------------
-- INFORMACION
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Sexo', 1);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Edad',1);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Estado civil',1);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Número de hijos',1);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Cuántos hijos viven con usted?',1);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Tipo de contrato',1);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Años que lleva en esta profesión',1);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Años que lleva en esta organización',1);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Años que lleva en este puesto de trabajo',1);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ultimo grado de estudio',1);
-- INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿En qué puesto trabaja actualmente?',1);
-- SINDROME_QUEMARSE
-- ILUSION_POR_EL_TRABAJO
-- INDOLENCIA
-- DESGASTE_PSIQUICO
-- CULPA
-- 11-30
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Mi trabajo no supone un reto estimulante.', 2);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('No me apetece atender a algunos clientes.', 3);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Creo que muchos clientes son insoportables', 3);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me preocupa el trato que he dado a algunas personas en el trabajo.', 5);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Veo mi trabajo como una fuente de realización personal.', 2);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Creo que los familiares de los clientes son unos pesados.', 3);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Pienso que trato con indiferencia a algunos clientes.', 3);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Pienso que estoy saturado/a por el trabajo.', 4);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me siento culpable por alguna de mis actitudes en el trabajo.', 5);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Pienso que mi trabajo me aporta cosas positivas.', 2);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me apetece ser irónico/a con algunos clientes.', 3);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me siento agobiado/a por el trabajo.', 4);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Tengo remordimientos por algunos de mis comportamientos en el trabajo.', 5);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Etiqueto o clasifico a los clientes según su comportamiento.', 3);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Mi trabajo me resulta gratificante.', 2);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Pienso que debería pedir disculpas a alguien por mi comportamiento.', 5);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me siento cansado/a físicamente en el trabajo.', 4);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me siento desgastado/a emocionalmente.', 4);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me siento ilusionado/a por mi trabajo.', 2);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me siento mal por algunas cosas que he dicho en el trabajo.', 5);
-- DESENCANTO_PROFESIONAL
-- 31 - 38
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('No me apetece hacer ciertas cosas de mi trabajo.', 6);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Estoy harto/a de mi trabajo', 6);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me siento decepcionado/a por lo que es mi trabajo.', 6);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Creo que merezco algo mejor que este trabajo.', 6);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Hay momentos en los que me gustaría desaparecer de mi trabajo.', 6);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Pienso que estoy estancado/a y no progreso en mi trabajo.', 6);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Creo que algunas cosas que hago en mi trabajo no sirven para nada.', 6);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Pienso que mi empresa me está utilizando.', 6);
-- AUTONOMIA
-- 39 - 43
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('En este trabajo poseo independencia para decidir cómo hacerlo.', 7);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('El trabajo me proporciona posibilidades de utilizar mi iniciativa.', 7);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Para hacer mi trabajo dependo de lo que me dice o me manda mi supervisor/a.', 7);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Considero que mi trabajo me proporciona suficiente autonomía.', 7);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Puedo determinar mi ritmo de trabajo.', 7);
-- CONFLICTO_DE_ROL
-- 44 - 48
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Tengo que hacer cosas de forma diferente a como pienso que deben hacerse.', 8);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Se me pide que realice funciones y tareas para las que no estoy autorizado/a.', 8);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Tengo que trabajar con dos o más grupos que hacen las cosas de manera bastante diferente.', 8);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Recibo demandas incompatibles de dos o más personas.', 8);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Se me asignan tareas/funciones sin los recursos y medios materiales necesarios para realizarlas.', 8);
-- AMBIGUEDAD_DE_ROL
-- 49 - 53
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Conozco el grado de autoridad que tengo en mi trabajo.', 9);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Los objetivos y metas de mi trabajo son claros y están planificados.', 9);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Conozco cuáles son mis responsabilidades en el trabajo.', 9);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Conozco los criterios con los que me evalúan.', 9);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Sé exactamente lo que se espera de mí en el trabajo.', 9);
-- SOBRECARGA_LABORAL
-- 54 - 59
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Cuando está trabajando, ¿se encuentra con situaciones especialmente duras?', 10);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido que hacer más de una cosa a la vez?', 10);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido problemas con su trabajo debido a que se ha ido complicando progresivamente?', 10);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Le es posible trabajar con un ritmo relajado?', 10);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Le ocurre que no tiene tiempo suficiente para completar su trabajo?', 10);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Piensa que tiene que hacer un trabajo demasiado difícil para usted?', 10);
-- APOYO_SOCIAL
-- 60 - 67
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Se siente apreciado en el trabajo por su supervisor/a directo?', 11);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Se siente apreciado/a en el trabajo por sus compañeros?', 11);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Se siente apreciado/a en el trabajo por la dirección del centro?', 11);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué frecuencia le ayuda su supervisor/a cuando surgen problemas en el trabajo?', 11);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué frecuencia le ayudan sus compañeros/as cuando surgen problemas en el trabajo?', 11);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué frecuencia le ayuda la dirección del centro cuando surgen problemas en el trabajo?', 11);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Se siente respaldado/a por su familia cuando surgen problemas en el trabajo?', 11);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Se siente respaldado/a por los “usuarios” del centro cuando surgen problemas?', 11);
-- CONFLICTOS_INTERPERSONALES
-- 68 - 73
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué frecuencia tiene conflictos con su supervisor/a?', 12);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué frecuencia tiene conflictos con sus compañeros/as?', 12);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué frecuencia tiene conflictos con los clientes?', 12);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué frecuencia tiene conflictos con los familiares de los clientes?', 12);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué frecuencia tiene conflictos con la dirección del centro o de la organización?', 12);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué frecuencia tiene conflictos con otros trabajadores del centro?', 12);
-- INEQUIDAD
-- 74 - 78
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Pongo más en mi trabajo de lo que obtengo a cambio de él.', 13);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Recibo bastantes recompensas por los cuidados y atenciones que doy a los clientes.', 13);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me dejo la piel en el trabajo comparado con lo que recibo a cambio.', 13);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('No veo que se me recompense mucho a cambio de los esfuerzos que pongo en mi trabajo.', 13);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Presto mucha atención a los clientes pero obtengo poco agradecimiento a cambio.', 13);
-- FEEDBACK
-- 79 - 86
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('La organización me facilita datos favorables sobre la realización de mi trabajo.', 14);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Mi supervisor/a me felicita cuando hago bien mi trabajo.', 14);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Mi supervisor/a me hace saber cuando no está contento/a con mi trabajo.', 14);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('La organización me informa cuando mi rendimiento es deficiente.', 14);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Mis compañeros/as me dicen cuando estoy haciendo un buen trabajo.', 14);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Mis compañeros/as me hacen comentarios cuando mi rendimiento es deficiente.', 14);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('La organización me expresa satisfacción por mi rendimiento en el trabajo.', 14);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Mi supervisor me dice cuando hago algo equivocado.', 14);
-- PROXIMA_PROMOCION
-- 87
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Cuándo espera que se produzca su próxima promoción?', 15);
-- DEPRESION
-- 88 - 107
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me siento triste y deprimido/a.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Por las mañanas me siento mejor que por las tardes.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Frecuentemente tengo ganas de llorar y a veces lloro.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me cuesta mucho dormir o duermo mal por las noches.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ahora tengo tanto apetito como antes.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Todavía me siento atraído/a por el sexo hacia otras personas.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Creo que estoy adelgazando.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Estoy estreñido/a.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Tengo palpitaciones.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me canso por cualquier cosa.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Mi cabeza está tan despejada como antes.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Hago las cosas con la misma facilidad que antes.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me siento agitado/a e intranquilo/a y no puedo estar quieto/a.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Tengo esperanza y confianza en el futuro.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me siento más irritable que habitualmente.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Encuentro fácil tomar decisiones.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me creo útil y necesario/a para la gente.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Encuentro agradable vivir, mi vida es plena.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Creo que sería mejor para los demás si me muriera.', 16);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me gustan las mismas cosas que habitualmente me agradaban.', 16);
-- PROBLEMAS_DE_SALUD
-- 108 - 119
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Le ha preocupado que, sin estar haciendo ningún esfuerzo, se le cortara la respiración?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha sentido bruscamente palpitaciones o pinchazos en el pecho?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido dolores o molestias en el estómago?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido alguna crisis de ansiedad?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido ausencias, mareos o vértigos?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido jaquecas o dolores de cabeza?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido algún problema de salud a causa de su trabajo?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido dificultades para dormir?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido contracturas o dolores musculares?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido problemas con su pareja debido al trabajo?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido problemas con otro miembro de su familia debido al trabajo?', 17);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Ha tenido problemas con amigos o conocidos?', 17);
-- ALCOHOLISMO_Y_TABAQUISMO
-- 120 - 127
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Fuma?', 18);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('En caso afirmativo, ¿cuántos cigarrillos al día?', 18);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Cuántos puros al día?', 18);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Cuántos pipas al día?', 18);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Bebe alcohol?', 18);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('En caso afirmativo, ¿cuántas unidades promedio al día? (Considerando 1 unidad = 1 tercio de cerveza, o un vaso de vino, o una copa de licor, o un vaso de algún combinado con alcohol)', 18);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Has sentido alguna vez la necesidad de reducir su consumo de alcohol?', 18);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Durante los últimos 3 meses, ¿ha constatado algún cambio en sus hábitos de consumo de alcohol?', 18);
-- VALORES_PERSONALES
-- 128 - 145
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser ambicioso (tener aspiraciones y trabajar duro para conseguirlas).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser tolerante (abierto, razonable).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser competente (capaz, eficaz).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser alegre (divertido).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser limpio (aseado, pulcro).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser valiente (defender tus creencias).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser indulgente (saber perdonar a los demás).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser servicial (trabajar por el bienestar de los demás).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser honesto (sincero, honrado, no mentir).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser creativo(imaginativo, emprendedor).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser independiente (autosuficiente).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser intelectual (reflexionar, meditar).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser lógico (racional, consistente).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser cariñoso.', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser obediente (respetuoso).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser educado (cortés).', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser responsable.', 19);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Ser equilibrado (autodisciplinado, autocontrolado).', 19);
-- SATISFACCION_LABORAL
-- 146 - 151
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Las oportunidades que le ofrece su trabajo de hacer las cosas que le gustan.', 20);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('El salario que usted recibe.', 20);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('La limpieza e higiene de su lugar de trabajo.', 20);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Las oportunidades de promoción que tiene.', 20);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('La supervisión que ejercen sobre usted.', 20);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Su participación en las decisiones de su departamento o sección.', 20);
-- RECURSOS
-- 152 - 158
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Recursos tecnológicos.', 21);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Personal para cubrir las necesidades del servicio.', 21);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Material de uso habitual.', 21);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Áreas de descanso adecuadas.', 21);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Medidas de protección adecuadas.', 21);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Los trabajadores disponen de autoridad o influencia.', 21);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('La administración se preocupa de los problemas de su colectivo profesional.', 21);
-- AUTOEFICACIA
-- 159 - 166
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Puedo resolver problemas difíciles de mi trabajo si me esfuerzo lo suficiente.', 22);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Me resulta fácil persistir en lo que me he propuesto en mi trabajo hasta llegar a alcanzar mis metas.', 22);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Tengo confianza en que podría manejar eficazmente acontecimientos inesperados de mi trabajo.', 22);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Gracias a mis cualidades y recursos puedo superar situaciones imprevistas de mi trabajo.', 22);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Cuando me encuentro en dificultades puedo realizar mi trabajo tranquilo/a porque cuento con las habilidades necesarias para manejar situaciones difíciles.', 22);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Venga lo que venga, por lo general soy capaz de manejarlo.', 22);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Si me encuentro en una situación difícil en el trabajo, generalmente se me ocurre qué debo hacer.', 22);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('Al tener que hacer frente a un problema de mi trabajo, generalmente se me ocurren varias alternativas de cómo resolverlo.', 22);
-- ABSENTISMO 
-- 167 - 172
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Comunicaría que se encuentra enfermo/a, cuando no se encuentra demasiado bien, para no ir al trabajo?', 23);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Comunicaría que se encuentra enfermo/a aunque se encuentre bien porque no desea ir a trabajar?', 23);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Comunicaría que se encuentra enfermo/a para no ir a trabajar por importantes razones privadas?', 23);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Comunicaría que se encuentra enfermo/a cuando se siente deprimido?', 23);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Cuántos días en los últimos 12 meses ha faltado al trabajo?', 23);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('De esos días, ¿cuántos días considera que han sido por problemas de salud o accidentes derivados del trabajo?', 23);
-- ABANDONO
-- 173 - 174
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué grado de certeza desearía dejar esta empresa en el plazo de un año y cambiar a otro puesto en el querealizara las mismas tareas y funciones?', 24);
INSERT INTO wp_cesqt_preguntas(`pregunta`, `grupo`) VALUES ('¿Con qué grado de certeza desearía dejar su profesión en el plazo de un año?', 24);





-- ------------POSIBLES RESPUESTAS------------
-- R = Radio
-- O = Abierta
-- S = Dropdown con opciones
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Hombre', 1);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Mujer', 1);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `label`, `pregunta`) VALUES ('O', 'Años', 2);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Con pareja estable', 3);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Sin pareja estable', 3);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `label`, `pregunta`) VALUES ('O', 'Hijos', 4);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `label`, `pregunta`) VALUES ('O', 'Hijos', 5);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Contrato por Tiempo Indefinido', 6);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Contrato por Tiempo Determinado o Fijo', 6);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Contrato a Prueba', 6);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Contrato por Hora', 6);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, 'Contrato de Capacitación Inicial', 6);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `label`, `pregunta`) VALUES ('O', 'Años', 7);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `label`, `pregunta`) VALUES ('O', 'Años', 8);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `label`, `pregunta`) VALUES ('O', 'Años', 9);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Ninguno', 10);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Primaria', 10);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Secundaria', 10);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Preparatoria', 10);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, 'Licenciatura', 10);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, 'Maestría', 10);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, 'Doctorado', 10);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 11);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 11);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 11);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 11);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 11);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 12);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 12);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 12);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 12);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 12);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 13);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 13);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 13);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 13);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 13);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 14);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 14);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 14);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 14);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 14);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 15);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 15);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 15);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 15);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 15);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 16);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 16);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 16);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 16);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 16);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 17);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 17);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 17);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 17);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 17);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 18);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 18);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 18);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 18);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 18);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 19);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 19);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 19);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 19);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 19);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 20);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 20);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 20);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 20);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 20);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 21);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 21);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 21);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 21);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 21);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 22);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 22);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 22);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 22);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 22);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 23);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 23);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 23);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 23);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 23);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 24);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 24);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 24);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 24);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 24);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 25);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 25);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 25);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 25);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 25);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 26);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 26);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 26);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 26);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 26);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 27);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 27);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 27);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 27);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 27);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 28);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 28);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 28);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 28);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 28);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 29);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 29);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 29);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 29);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 29);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 30);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 30);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 30);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 30);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 30);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 31);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 31);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 31);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 31);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 31);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 32);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 32);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 32);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 32);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 32);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 33);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 33);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 33);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 33);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 33);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 34);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 34);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 34);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 34);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 34);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 35);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 35);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 35);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 35);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 35);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 36);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 36);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 36);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 36);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 36);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 37);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 37);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 37);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 37);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 37);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 38);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 38);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 38);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 38);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 38);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 39);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 39);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 39);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 39);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 39);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 40);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 40);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 40);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 40);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 40);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 41);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 41);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 41);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 41);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 41);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 42);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 42);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 42);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 42);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 42);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 43);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 43);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 43);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 43);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 43);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 44);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 44);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 44);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 44);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 44);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 45);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 45);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 45);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 45);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 45);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 46);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 46);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 46);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 46);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 46);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 47);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 47);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 47);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 47);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 47);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 48);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 48);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 48);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 48);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 48);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 49);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Raramente: algunas veces al año', 49);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 49);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Frecuentemente: algunas veces por semana', 49);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy frecuentemete: todos los días', 49);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 50);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Raramente: algunas veces al año', 50);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 50);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Frecuentemente: algunas veces por semana', 50);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy frecuentemete: todos los días', 50);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 51);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Raramente: algunas veces al año', 51);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 51);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Frecuentemente: algunas veces por semana', 51);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy frecuentemete: todos los días', 51);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 52);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Raramente: algunas veces al año', 52);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 52);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Frecuentemente: algunas veces por semana', 52);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy frecuentemete: todos los días', 52);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 53);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Raramente: algunas veces al año', 53);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 53);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Frecuentemente: algunas veces por semana', 53);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy frecuentemete: todos los días', 53);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 54);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 54);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 54);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 54);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 54);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 55);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 55);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 55);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 55);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 55);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 56);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 56);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 56);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 56);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 56);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 57);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Raramente: algunas veces al año', 57);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 57);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Frecuentemente: algunas veces por semana', 57);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy frecuentemete: todos los días', 57);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 58);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 58);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 58);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 58);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 58);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 59);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 59);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 59);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 59);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 59);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 60);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 60);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 60);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 60);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 60);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 61);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 61);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 61);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 61);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 61);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 62);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 62);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 62);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 62);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 62);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 63);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 63);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 63);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 63);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 63);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 64);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 64);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 64);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 64);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 64);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 65);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 65);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 65);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 65);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 65);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 66);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 66);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 66);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 66);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 66);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 67);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 67);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 67);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 67);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 67);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 68);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 68);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 68);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 68);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 68);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 69);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 69);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 69);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 69);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 69);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 70);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 70);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 70);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 70);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 70);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 71);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 71);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 71);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 71);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 71);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 72);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 72);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 72);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 72);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 72);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 73);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 73);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 73);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 73);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 73);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 74);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 74);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 74);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 74);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 74);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 75);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Raramente: algunas veces al año', 75);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 75);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Frecuentemente: algunas veces por semana', 75);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy frecuentemete: todos los días', 75);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 76);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 76);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 76);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 76);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 76);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 77);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 77);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 77);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 77);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 77);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 78);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 78);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 78);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 78);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 78);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 79);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 79);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 79);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 79);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 79);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 80);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 80);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 80);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 80);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 80);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 81);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 81);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 81);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 81);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 81);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 82);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 82);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 82);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 82);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 82);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 83);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 83);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 83);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 83);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 83);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 84);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 84);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 84);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 84);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 84);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 85);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 85);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 85);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 85);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 85);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 86);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente: algunas veces al año', 86);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces: algunas veces al mes', 86);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente: algunas veces por semana', 86);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy frecuentemete: todos los días', 86);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 87);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Más de 5 años', 87);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Antes de 5 años', 87);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Antes de 1 años', 87);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'No lo sé', 87);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 88);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 88);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 88);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 88);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 89);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 89);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 89);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 89);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 90);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 90);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 90);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 90);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 91);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 91);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 91);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 91);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Raramente', 92);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Algunas veces', 92);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Frecuentemente', 92);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Siempre', 92);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Raramente', 93);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Algunas veces', 93);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Frecuentemente', 93);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Siempre', 93);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 94);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 94);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 94);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 94);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 95);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 95);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 95);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 95);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 96);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 96);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 96);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 96);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 97);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 97);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 97);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 97);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Raramente', 98);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Algunas veces', 98);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Frecuentemente', 98);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Siempre', 98);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Raramente', 99);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Algunas veces', 99);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Frecuentemente', 99);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Siempre', 99);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 100);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 100);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 100);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 100);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Raramente', 101);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Algunas veces', 101);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Frecuentemente', 101);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Siempre', 101);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 102);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 102);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 102);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 102);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Raramente', 103);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Algunas veces', 103);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Frecuentemente', 103);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Siempre', 103);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Raramente', 104);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Algunas veces', 104);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Frecuentemente', 104);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Siempre', 104);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Raramente', 105);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Algunas veces', 105);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Frecuentemente', 105);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Siempre', 105);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 106);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algunas veces', 106);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 106);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Siempre', 106);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Raramente', 107);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Algunas veces', 107);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Frecuentemente', 107);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Siempre', 107);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 108);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 108);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 108);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 108);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 108);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 109);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 109);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 109);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 109);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 109);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 110);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 110);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 110);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 110);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 110);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 111);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 111);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 111);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 111);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 111);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 112);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 112);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 112);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 112);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 112);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 113);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 113);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 113);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 113);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 113);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 114);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 114);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 114);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 114);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 114);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 115);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 115);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 115);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 115);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 115);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 116);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 116);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 116);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 116);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 116);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 117);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 117);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 117);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 117);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 117);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 118);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 118);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 118);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 118);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 118);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nunca', 119);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Raramente', 119);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'A veces', 119);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Frecuentemente', 119);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy Frecuentemente', 119);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'No', 120);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Sí', 120);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `label`, `pregunta`) VALUES ('O', 'Cigarrillos', 121);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `label`, `pregunta`) VALUES ('O', 'Puros', 122);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `label`, `pregunta`) VALUES ('O', 'Pipas', 123);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'No', 124);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Sí', 124);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `label`, `pregunta`) VALUES ('O', 'Considerando 1 unidad = 1 tercio de cerveza, o un vaso de vino, o una copa de licor, o un vaso de algún combinado con alcohol', 125);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'No', 126);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Sí', 126);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Consumo menos de lo habitual', 127);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Consumo igual que siempre', 127);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Consumo más de lo habitual', 127);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 128);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 128);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 128);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 128);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 128);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 128);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 128);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 128);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 128);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 128);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 128);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 129);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 129);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 129);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 129);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 129);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 129);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 129);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 129);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 129);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 129);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 129);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 130);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 130);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 130);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 130);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 130);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 130);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 130);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 130);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 130);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 130);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 130);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 131);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 131);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 131);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 131);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 131);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 131);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 131);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 131);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 131);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 131);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 131);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 132);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 132);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 132);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 132);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 132);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 132);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 132);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 132);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 132);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 132);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 132);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 133);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 133);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 133);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 133);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 133);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 133);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 133);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 133);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 133);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 133);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 133);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 134);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 134);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 134);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 134);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 134);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 134);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 134);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 134);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 134);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 134);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 134);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 135);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 135);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 135);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 135);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 135);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 135);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 135);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 135);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 135);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 135);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 135);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 136);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 136);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 136);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 136);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 136);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 136);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 136);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 136);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 136);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 136);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 136);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 137);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 137);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 137);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 137);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 137);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 137);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 137);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 137);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 137);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 137);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 137);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 138);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 138);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 138);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 138);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 138);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 138);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 138);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 138);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 138);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 138);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 138);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 139);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 139);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 139);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 139);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 139);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 139);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 139);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 139);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 139);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 139);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 139);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 140);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 140);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 140);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 140);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 140);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 140);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 140);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 140);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 140);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 140);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 140);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 141);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 141);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 141);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 141);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 141);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 141);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 141);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 141);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 141);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 141);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 141);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 142);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 142);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 142);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 142);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 142);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 142);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 142);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 142);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 142);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 142);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 142);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 143);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 143);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 143);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 143);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 143);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 143);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 143);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 143);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 143);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 143);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 143);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 144);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 144);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 144);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 144);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 144);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 144);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 144);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 144);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 144);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 144);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 144);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada importante 0', 145);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '1', 145);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '2', 145);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '3', 145);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '4', 145);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '5', 145);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '6', 145);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 7, '7', 145);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 8, '8', 145);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 9, '9', 145);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 10, '10 Muy importante', 145);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy insatisfecho', 146);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Insatisfecho', 146);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Indiferente', 146);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Satisfecho', 146);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy satisfecho', 146);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy insatisfecho', 147);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Insatisfecho', 147);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Indiferente', 147);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Satisfecho', 147);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy satisfecho', 147);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy insatisfecho', 148);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Insatisfecho', 148);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Indiferente', 148);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Satisfecho', 148);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy satisfecho', 148);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy insatisfecho', 149);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Insatisfecho', 149);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Indiferente', 149);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Satisfecho', 149);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy satisfecho', 149);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy insatisfecho', 150);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Insatisfecho', 150);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Indiferente', 150);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Satisfecho', 150);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy satisfecho', 150);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Muy insatisfecho', 151);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Insatisfecho', 151);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Indiferente', 151);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Satisfecho', 151);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Muy satisfecho', 151);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada', 152);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Poco', 152);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algo', 152);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Bastante', 152);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Mucho', 152);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada', 153);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Poco', 153);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algo', 153);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Bastante', 153);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Mucho', 153);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada', 154);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Poco', 154);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algo', 154);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Bastante', 154);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Mucho', 154);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada', 155);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Poco', 155);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algo', 155);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Bastante', 155);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Mucho', 155);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada', 156);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Poco', 156);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algo', 156);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Bastante', 156);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Mucho', 156);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada', 157);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Poco', 157);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algo', 157);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Bastante', 157);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Mucho', 157);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Nada', 158);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Poco', 158);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Algo', 158);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Bastante', 158);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Mucho', 158);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Totalmente en desacuerdo', 159);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'En desacuerdo', 159);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Ni de acuerdo ni en desacuerdo', 159);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'De acuerdo', 159);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Totalmente de acuerdo', 159);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Totalmente en desacuerdo', 160);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'En desacuerdo', 160);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Ni de acuerdo ni en desacuerdo', 160);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'De acuerdo', 160);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Totalmente de acuerdo', 160);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Totalmente en desacuerdo', 161);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'En desacuerdo', 161);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Ni de acuerdo ni en desacuerdo', 161);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'De acuerdo', 161);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Totalmente de acuerdo', 161);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Totalmente en desacuerdo', 162);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'En desacuerdo', 162);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Ni de acuerdo ni en desacuerdo', 162);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'De acuerdo', 162);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Totalmente de acuerdo', 162);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Totalmente en desacuerdo', 163);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'En desacuerdo', 163);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Ni de acuerdo ni en desacuerdo', 163);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'De acuerdo', 163);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Totalmente de acuerdo', 163);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Totalmente en desacuerdo', 164);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'En desacuerdo', 164);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Ni de acuerdo ni en desacuerdo', 164);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'De acuerdo', 164);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Totalmente de acuerdo', 164);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Totalmente en desacuerdo', 165);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'En desacuerdo', 165);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Ni de acuerdo ni en desacuerdo', 165);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'De acuerdo', 165);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Totalmente de acuerdo', 165);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Totalmente en desacuerdo', 166);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'En desacuerdo', 166);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'Ni de acuerdo ni en desacuerdo', 166);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'De acuerdo', 166);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Totalmente de acuerdo', 166);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Siempre', 167);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Probablemente sí', 167);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'No lo sé', 167);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Probablemente no', 167);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 167);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Siempre', 168);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Probablemente sí', 168);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'No lo sé', 168);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Probablemente no', 168);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 168);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Siempre', 169);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Probablemente sí', 169);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'No lo sé', 169);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Probablemente no', 169);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 169);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Siempre', 170);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Probablemente sí', 170);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'No lo sé', 170);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Probablemente no', 170);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 170);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Siempre', 171);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Probablemente sí', 171);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'No lo sé', 171);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Probablemente no', 171);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 171);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 0, 'Siempre', 172);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, 'Probablemente sí', 172);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, 'No lo sé', 172);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, 'Probablemente no', 172);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, 'Nunca', 172);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '1 Completamente seguro de permanecer', 173);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '2', 173);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '3', 173);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '4', 173);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '5', 173);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '6 Completamente seguro de dejarlo', 173);

INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 6, '1 Completamente seguro de permanecer', 174);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 5, '2', 174);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 4, '3', 174);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 3, '4', 174);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 2, '5', 174);
INSERT INTO wp_cesqt_posibles_respuestas(`tipo`, `valor`, `label`, `pregunta`) VALUES ('S', 1, '6 Completamente seguro de dejarlo', 174);