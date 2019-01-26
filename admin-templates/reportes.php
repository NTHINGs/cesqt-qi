<?php
/**
 * JS para construir el reporte imprimible
 *
 *
 * @package	 cesqt-qi
 * @since    1.0.0
 */
require_once( CESQT_PLUGIN_PATH . 'util/functions.php' );

function cesqt_imprimir_reporte($org_id, $area) {
    ?>
        <button type="button" class="button button-primary" onclick="imprimir()">Imprimir</button>
        <script>
            function getDataUri(url) {
                if (url) {
                    return new Promise((resolve, reject) => {
                        let extension = url.split('.').pop();
                        let type = 'png';
                        switch (extension) {
                            case 'jpg':
                            case 'jpeg':
                                type = 'jpeg';
                                break;
                        }
                        let image = new Image();

                        image.onload = function () {
                            let canvas = document.createElement('canvas');
                            canvas.width = this.naturalWidth; // or 'width' if you want a special/scaled size
                            canvas.height = this.naturalHeight; // or 'height' if you want a special/scaled size
                            canvas.getContext('2d').drawImage(this, 0, 0);
                            resolve(canvas.toDataURL('image/' + type));
                        };

                        image.src = url;
                    });
                }
            }
            function imprimir() {
                (async () => {
                    let doc = new jsPDF({
                        orientation: 'landscape',
                        pageFormat: 'a4'
                    });
                    doc.autoTableSetDefaults({
                        headStyles: {
                            fillColor: [80, 18, 70],
                            textColor: 255
                        }
                    });

                    doc.addImage(await getDataUri('/wp-content/plugins/resiliencia-qi/logo.png'), 10, 10, 30, 20);
                    doc.setFontSize(24);
                    doc.text('Resultados CESQT', 45, 25);
                    doc.text('Información Personal', 10, 40);
                    doc.setFontSize(15);
                    doc.text('Sexo', 10, 50);
                    doc.autoTable({
                        startY: 55,
                        head: [
                            ['Masculino', 'Femenino']
                        ],
                        body: ['<?php print get_resultados_pregunta_exactos($org_id, 1, 1, $area); ?>', '<?php print get_resultados_pregunta_exactos($org_id, 1, 2, $area); ?>'],
                    });
                    doc.text('Edad', 10, doc.previousAutoTable.finalY + 5);
                    doc.setFontSize(12);
                    doc.text('<?php print get_promedio_pregunta($org_id, 2, $area); ?>', 10, doc.previousAutoTable.finalY + 15);
                    doc.setFontSize(15);
                    doc.text('Estado Civil', 10, doc.previousAutoTable.finalY + 25);
                    doc.autoTable({
                        startY: doc.previousAutoTable.finalY + 30,
                        head: [
                            ['Con Pareja Estable', 'Sin Pareja Estable']
                        ],
                        body: [
                            [
                                '<?php print get_resultados_pregunta_exactos($org_id, 3, 1, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 3, 2, $area); ?>'
                            ]
                        ],
                    });
                    doc.text('Hijos', 10, doc.previousAutoTable.finalY + 5);
                    doc.setFontSize(12);
                    doc.text('Número de hijos promedio: <?php print get_promedio_pregunta($org_id, 4, $area);?>', 10, doc.previousAutoTable.finalY + 15);
                    doc.text('Número de hijos viviendo en casa promedio: <?php echo get_promedio_pregunta($org_id, 5, $area);?>', 10, doc.previousAutoTable.finalY + 25);
                    doc.setFontSize(15);
                    doc.text('Tipo De Contrato', 10, doc.previousAutoTable.finalY + 35);
                    doc.autoTable({
                        startY: doc.previousAutoTable.finalY + 40,
                        head: [
                            [
                                'Contrato Por Tiempo Indefinido', 
                                'Contrato Por Tiempo Determinado', 
                                'Contrato A Prueba',
                                'Contrato Por Hora',
                                'Contrato De Capacitación Inicial',
                            ]
                        ],
                        body: [
                            [
                                '<?php print get_resultados_pregunta_exactos($org_id, 6, 1, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 6, 2, $area); ?>',
                                '<?php print get_resultados_pregunta_exactos($org_id, 6, 3, $area); ?>',
                                '<?php print get_resultados_pregunta_exactos($org_id, 6, 4, $area); ?>',
                                '<?php print get_resultados_pregunta_exactos($org_id, 6, 5, $area); ?>',
                                '<?php print get_resultados_pregunta_exactos($org_id, 6, 6, $area); ?>',
                            ]
                        ],
                    });
                    doc.text('Años De Experiencia', 10, doc.previousAutoTable.finalY + 5);
                    doc.autoTable({
                        startY: doc.previousAutoTable.finalY + 10,
                        head: [
                            [
                                'Años Promedio En La Profesión', 
                                'Años Promedio En La Organización', 
                                'Años Promedio En El Puesto De Trabajo', 
                            ]
                        ],
                        body: [
                            [
                                '<?php print get_promedio_pregunta($org_id, 7, $area); ?>', 
                                '<?php print get_promedio_pregunta($org_id, 8, $area); ?>', 
                                '<?php print get_promedio_pregunta($org_id, 9, $area); ?>', 
                            ]
                        ],
                    });
                    doc.text('Último Grado de Estudio', 10, doc.previousAutoTable.finalY + 5);
                    doc.autoTable({
                        startY: doc.previousAutoTable.finalY + 10,
                        head: [
                            [
                                'Ninguno', 
                                'Primaria', 
                                'Secundaria', 
                                'Preparatoria', 
                                'Licenciatura', 
                                'Maestría', 
                                'Doctorado', 
                            ]
                        ],
                        body: [
                            [
                                '<?php print get_resultados_pregunta_exactos($org_id, 10, 1, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 10, 2, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 10, 3, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 10, 4, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 10, 5, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 10, 6, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 10, 7, $area); ?>', 
                            ]
                        ],
                    });

                    doc.setFontSize(24);
                    doc.text('Alcoholismo y Tabaquismo', 10, doc.previousAutoTable.finalY + 10);
                    doc.setFontSize(15);
                    doc.text('Fumadores Y Bebedores', 10, doc.previousAutoTable.finalY + 20);
                    doc.autoTable({
                        startY: doc.previousAutoTable.finalY + 25,
                        head: [
                            [
                                'Fumadores',  
                                'Bebedores',  
                            ]
                        ],
                        body: [
                            [
                                '<?php print get_resultados_pregunta_exactos($org_id, 120, 1, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 124, 1, $area); ?>', 
                            ]
                        ],
                    });
                    doc.text('Fuman Al Día', 10, doc.previousAutoTable.finalY + 5);
                    doc.autoTable({
                        startY: doc.previousAutoTable.finalY + 10,
                        head: [
                            [
                                'Cigarros',  
                                'Puros',
                                'Pipas',
                            ]
                        ],
                        body: [
                            [
                                '<?php print get_promedio_pregunta($org_id, 121, $area); ?>', 
                                '<?php print get_promedio_pregunta($org_id, 122, $area); ?>', 
                                '<?php print get_promedio_pregunta($org_id, 123, $area); ?>', 
                            ]
                        ],
                    });
                    doc.text('Beben Al Día', 10, doc.previousAutoTable.finalY + 5);
                    doc.setFontSize(12);
                    doc.text('<?php echo get_promedio_pregunta($org_id, 125, $area);?> Unidades', 10, doc.previousAutoTable.finalY + 15);
                    doc.setFontSize(15);
                    doc.text('¿Han Sentido Necesidad De Reducir Su Consumo De Alcohol?', 10, doc.previousAutoTable.finalY + 25);
                    doc.setFontSize(12);
                    doc.text('<?php echo get_promedio_pregunta($org_id, 126, $area);?> Personas', 10, doc.previousAutoTable.finalY + 35);
                    doc.setFontSize(15);
                    doc.text('Personas Que Durante Los Últimos 3 Meses Han Constatado Algún Cambio En Sus Hábitos De Consumo De Alcohol', 10, doc.previousAutoTable.finalY + 45);
                    doc.autoTable({
                        startY: doc.previousAutoTable.finalY + 50,
                        head: [
                            ['Consume Menos De Lo Habitual', 'Consume Igual Que Siempre', 'Consume Más De Lo Habitual']
                        ],
                        body: [
                            [
                                '<?php print get_resultados_pregunta_exactos($org_id, 127, 0, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 127, 1, $area); ?>', 
                                '<?php print get_resultados_pregunta_exactos($org_id, 127, 2, $area); ?>', 
                            ]
                        ],
                    });

                    <?php
                        global $wpdb;
                        $table_grupos = $wpdb->prefix . "cesqt_grupos";
                        $grupos = $wpdb->get_results(
                            "SELECT * FROM $table_grupos", 
                            'ARRAY_A'
                        );
                        foreach( $grupos as $index => $row ){
                            if ($row['nombre'] != 'INFORMACION' && $row['nombre'] != 'ALCOHOLISMO_Y_TABAQUISMO' ) {
                                $datos = construir_datos_grafica($row['nombre'], $org_id, $area);
                                ?>
                                doc.setFontSize(24);
                                if ("<?php print $row['nombre']; ?>" === 'ILUSION_POR_EL_TRABAJO') {
                                    doc.text("Sindrome De Quemarse Por El Trabajo", 10, doc.previousAutoTable.finalY + 10);
                                    doc.text("<?php print $row['nombrelimpio']; ?>", 10, doc.previousAutoTable.finalY + 20);
                                } else if ("<?php print $row['nombre']; ?>" === 'DESENCANTO_PROFESIONAL') {
                                    doc.text("Riesgos Psicosociales", 10, doc.previousAutoTable.finalY + 10);
                                    doc.text("<?php print $row['nombrelimpio']; ?>", 10, doc.previousAutoTable.finalY + 20);

                                } else {
                                    doc.text("<?php print $row['nombrelimpio']; ?>", 10, doc.previousAutoTable.finalY + 10);
                                }
                                doc.setFontSize(15);
                                doc.autoTable({
                                    startY: doc.previousAutoTable.finalY + 15,
                                    head: [
                                        <?php
                                            print json_encode($datos['labels']);
                                        ?>
                                    ],
                                    body: [
                                        <?php
                                            print json_encode($datos['data']);
                                        ?>
                                    ],
                                });
                                <?php
                            }
                        }
                    ?>
                    doc.save('resultados_cesqt.pdf');
                })();
            }
        </script>
    <?php
}