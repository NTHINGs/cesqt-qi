<?php


if(!class_exists('Orgs_CESQT_Table')){
    require_once( CESQT_PLUGIN_PATH . 'admin-templates/Orgs_CESQT_Table.php' );
}
if(!class_exists('CESQT_Individuales')){
    require_once( CESQT_PLUGIN_PATH . 'admin-templates/CESQT_Individuales.php' );
}
/**
 * cesqt Tabbed Settings Page
 */

add_action( 'admin_menu', 'cesqt_qi_admin' );

function cesqt_qi_admin() {
    add_menu_page(
        'Cuestionario Calidad de Vida Laboral',     // page title
        'CESQT',     // menu title
        'cesqt',   // capability
        'cuestionario-cesqt',     // menu slug
		'render_cesqt_qi_admin', // callback function
		'dashicons-universal-access'
    );

    add_submenu_page(
        null,
        'Resultados De Tu Organización', //page title
        'Resultados De Tu Organización', //menu title
        'cesqt', //capability,
        'resultados-cesqt-organizacionales',//menu slug
        'render_cesqt_graficas' //callback function
    );

    add_submenu_page(
        'cuestionario-cesqt',
        'Resultados Individuales',
        'Resultados Individuales',
        'cesqt',
        'resultados-cesqt-individuales',
        'render_cesq_admin_individuales'
    );

    add_submenu_page(
        null,
        'Resultados Individuales',
        'Resultados Individuales',
        'cesqt',
        'render-cesqt-individuales',
        'render_cesq_individuales'
    );

    add_submenu_page(
        null,
        'Resultados Individual',
        'Resultados Individual',
        'cesqt',
        'render-cesqt-individual',
        'render_cesq_individual'
    );
}


function cesqt_admin_tabs( $current = 'INFORMACION', $area = NULL ) {
    global $wpdb;
    $areastring = '';
    if ($area != NULL ) {
        $areastring = '&area=' . $area;
    }
    if( isset($_GET['org_id']) ){
        $org_id = $_GET['org_id'];
    } else {
        $current_user = wp_get_current_user();
        $org_id = get_user_meta($current_user->ID, 'hash', true);
    }
    $table_grupos = $wpdb->prefix . "cesqt_grupos";
    $grupos = $wpdb->get_results(
        "SELECT * FROM $table_grupos", 
        'ARRAY_A'
    );
    ob_start();
    echo '<div id="icon-themes" class="icon32"><br></div>';
    echo '<h2 class="nav-tab-wrapper">';
    foreach( $grupos as $index => $row ){
        $class = ( $row['nombre'] == $current ) ? ' nav-tab-active' : '';
        echo '<a class="nav-tab'. $class. '" href="?page=resultados-cesqt-organizacionales&tab=' . $row['nombre'] . '&org_id=' . $org_id . $areastring . '">' . $row['nombrelimpio'] . '</a>';
    }
    echo '</h2>';
    ob_end_flush();
}

function render_cesqt_qi_admin() {
    if (current_user_can('cesqt') && !current_user_can('cesqt_admin')) {
        // Render pagina de organizacion
        $current_user = wp_get_current_user();
        $org_id = get_user_meta($current_user->ID, 'hash', true);
        render_cesqt_graficas($org_id);
        
	} elseif (current_user_can('cesqt_admin')) {
        // Render pagina de todas las organizaciones
        global $title;
        ob_start();
        print '<div class="wrap">';
        print '<h1>' . $title . '</h1>';
        print '</div>';
        render_cesqt_table_orgs();
        ob_end_flush();
	}
    
}

function render_cesqt_graficas($org_id=NULL) {
    $area = NULL;
    if( isset($_GET['area']) && $_POST['area'] != 'todas' ){
        $area = $_GET['area'];
    }
    if( isset($_POST['area']) && $_POST['area'] != 'todas' ){
        $area = $_POST['area'];
    }
    if( isset($_GET['org_id']) ){
        $org_id = $_GET['org_id'];
    }
    global $wpdb;
    $table_areas = $wpdb->prefix . "areasorgareas";
    $areas = $wpdb->get_results(
        "SELECT * FROM $table_areas WHERE organizacion = '{$org_id}'",
        'ARRAY_A'
    );
    ob_start();
    if($org_id != NULL) {
        $title = get_users(array('meta_key' => 'hash', 'meta_value' => $org_id))[0]->display_name;
        ?>
            <div class="wrap">
                <h2><?php echo $title; ?></h2>
                <p>Tu link para compartir el cuestionario de resiliencia a tus empleados es: </p>
                <a href="/cuestionario-cesqt/?org_id=<?php echo $org_id;?>"><?php echo get_site_url();?>/cuestionario-cesqt/?org_id=<?php echo $org_id;?></a>
                <form method="post">
                    <label for="area">Filtrar por área</label>
                    <select id="area" name="area">
                        <option value="todas">
                            Todas
                        </option>
                        <?php
                            foreach( $areas as $index => $row ) {
                                ?>
                                <option value="<?php print $row['nombre']; ?>">
                                    <?php print $row['nombre']; ?>
                                </option>
                                <?php
                            }
                        ?>
                    </select>
                    <?php submit_button('Filtrar'); ?>
                </form>
                <script>
                    var area = '<?php print $area; ?>' + '';
                    if (area === '') {
                        area = 'todas';
                    }
                    document.getElementById("area").value = area;
                </script>
                <?php	
                    if ( isset ( $_GET['tab'] ) ) cesqt_admin_tabs($_GET['tab'], $area); else cesqt_admin_tabs('INFORMACION', $area);
                    if ( isset ( $_GET['tab'] ) ) $tab = $_GET['tab']; else $tab = 'INFORMACION'; 
                    
                    cesqt_qi_admin_graficas($tab, $org_id, $area);
                ?>
            </div>
        <?php
    } else {
        print 'ERROR ORG_ID NO ESTA DEFINIDO';
    }
    ob_end_flush();
}

function render_cesqt_table_orgs($tipo = NULL) {
    print '<div id="poststuff">';

    print '<form method="post">';
    // resultados-cesqt-individuales
    $wp_list_table = NULL;
    if( isset($_POST['s']) ){
        $wp_list_table = new Orgs_CESQT_Table($_POST['s'], $tipo);
    } else {
        $wp_list_table = new Orgs_CESQT_Table(NULL, $tipo);
    }
    $wp_list_table->prepare_items();
    $wp_list_table->search_box( 'Buscar', 'search_id' ); 
    $wp_list_table->display();
    print '</form>';
    print '</div>';
}

function cesqt_qi_admin_graficas($grupo, $org_id, $area) {
    // labels = ['Bajo', 'Alto'];
    // data = [4, 1];
    global $wpdb;
    $table_grupos = $wpdb->prefix . "cesqt_grupos";
    $title = $wpdb->get_var("SELECT nombrelimpio FROM $table_grupos WHERE nombre='$grupo' ");
    echo '<h1>' . $title . '</h1>';
    if ($grupo == 'INFORMACION' || $grupo == 'ALCOHOLISMO_Y_TABAQUISMO') {
        construir_datos_grafica_especial($grupo, $org_id, $area);
    } else {
        $chart_data = construir_datos_grafica($grupo, $org_id, $area);
        $variables = array(
            '%LABELS%',
            '%DATA%',
            '%COLORS%',
        );
        $values = array(
            json_encode($chart_data['labels']), 
            json_encode($chart_data['data']),
            json_encode($chart_data['colors']),
        );
        echo str_replace($variables, $values, file_get_contents(  CESQT_PLUGIN_PATH . "templates/cesqt_qi_admin_graficas.html" ));
    }
}

function construir_datos_grafica_especial($grupo, $org_id, $area) {
    global $wpdb;
    $table_resultados = $wpdb->prefix . "cesqt_resultados RS";
    $table_preguntas = $wpdb->prefix . "cesqt_preguntas P";
    $table_registros = $wpdb->prefix . "cesqt_registros R";
    if ($grupo == 'INFORMACION') {

        ?>
        <div id="result-container" style="width: 100%;">
            <h2>Sexo</h2>
            <div>
                <canvas id="sexo" width="400" height="400"></canvas>
            </div>
            <h2>Edad</h2>
            <p><?php echo get_promedio_pregunta($org_id, 2, $area);?></p>

            <h2>Estado Civil</h2>
            <div>
                <canvas id="estado_civil" width="400" height="400"></canvas>
            </div>

            <h2>Hijos</h2>
            <p>Número de hijos promedio: <?php echo get_promedio_pregunta($org_id, 4, $area);?></p>
            <p>Número de hijos viviendo en casa promedio: <?php echo get_promedio_pregunta($org_id, 5, $area);?></p>

            <h2>Tipo De Contrato</h2>
            <div>
                <canvas id="tipo_contrato" width="400" height="400"></canvas>
            </div>

            <h2>Años De Experiencia</h2>
            <div>
                <canvas id="años_de_experiencia" width="400" height="400"></canvas>
            </div>

            <h2>Último Grado de Estudio</h2>
            <div>
                <canvas id="grados_estudio" width="400" height="400"></canvas>
            </div>
        </div>

        <script>
            var ctx_sexo = document.getElementById("sexo").getContext("2d");
            ctx_sexo.canvas.height = 400;
            ctx_sexo.canvas.width = document.getElementById('result-container').innerWidth;
            var grafica_sexo = new Chart(ctx_sexo, {
                type: 'pie',
                data: {
                    labels:  ['Masculino', 'Femenino'],
                    datasets: [{
                        data: JSON.parse('<?php echo json_encode(array(get_resultados_pregunta_exactos($org_id, 1, 1, $area), get_resultados_pregunta_exactos($org_id, 1, 2, $area)));?>'),
                        backgroundColor: [
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 99, 132, 0.2)',
                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 99, 132, 0.2)',
                        ],
                        borderWidth: 1
                    }]
                }
            });

            var ctx_estado_civil = document.getElementById("estado_civil").getContext("2d");
            ctx_estado_civil.canvas.height = 400;
            ctx_estado_civil.canvas.width = document.getElementById('result-container').innerWidth;
            var grafica_estado_civil = new Chart(ctx_estado_civil, {
                type: 'pie',
                data: {
                    labels:  ['Con Pareja Estable', 'Sin Pareja Estable'],
                    datasets: [{
                        data: JSON.parse('<?php echo json_encode(array(get_resultados_pregunta_exactos($org_id, 3, 1, $area), get_resultados_pregunta_exactos($org_id, 3, 2, $area)));?>'),
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                        ],
                        borderWidth: 1
                    }]
                }
            });

            var ctx_tipo_contrato = document.getElementById("tipo_contrato").getContext("2d");
            ctx_tipo_contrato.canvas.height = 400;
            ctx_tipo_contrato.canvas.width = document.getElementById('result-container').innerWidth;
            var grafica_tipo_contrato = new Chart(ctx_tipo_contrato, {
                type: 'pie',
                data: {
                    labels:  [
                        'Contrato Por Tiempo Indefinido', 
                        'Contrato Por Tiempo Determinado', 
                        'Contrato A Prueba',
                        'Contrato Por Hora',
                        'Contrato De Capacitación Inicial',
                    ],
                    datasets: [{
                        data: JSON.parse('<?php 
                            echo json_encode(
                                array(
                                    get_resultados_pregunta_exactos($org_id, 6, 1, $area), 
                                    get_resultados_pregunta_exactos($org_id, 6, 2, $area),
                                    get_resultados_pregunta_exactos($org_id, 6, 3, $area),
                                    get_resultados_pregunta_exactos($org_id, 6, 4, $area),
                                    get_resultados_pregunta_exactos($org_id, 6, 5, $area),
                                )
                            );
                            ?>'),
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)'
                        ],
                        borderWidth: 1
                    }]
                }
            });

            var ctx_años_de_experiencia = document.getElementById("años_de_experiencia").getContext("2d");
            ctx_años_de_experiencia.canvas.height = 400;
            ctx_años_de_experiencia.canvas.width = document.getElementById('result-container').innerWidth;
            var grafica_años_de_experiencia = new Chart(ctx_años_de_experiencia, {
                type: 'bar',
                data: {
                    labels:  [
                        'Años Promedio En La Profesión', 
                        'Años Promedio En La Organización', 
                        'Años Promedio En El Puesto De Trabajo', 
                    ],
                    datasets: [{
                        label: 'Años',
                        data: JSON.parse('<?php 
                            echo json_encode(
                                array(
                                    get_promedio_pregunta($org_id, 7, $area),
                                    get_promedio_pregunta($org_id, 8, $area),
                                    get_promedio_pregunta($org_id, 9, $area),
                                )
                            );
                            ?>'),
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                        ],
                        borderWidth: 1
                    }]
                }
            });

            var ctx_grados_estudio = document.getElementById("grados_estudio").getContext("2d");
            ctx_grados_estudio.canvas.height = 400;
            ctx_grados_estudio.canvas.width = document.getElementById('result-container').innerWidth;
            var grafica_grados_estudio = new Chart(ctx_grados_estudio, {
                type: 'pie',
                data: {
                    labels:  [
                        'Ninguno', 
                        'Primaria', 
                        'Secundaria', 
                        'Preparatoria', 
                        'Licenciatura', 
                        'Maestría', 
                        'Doctorado', 
                    ],
                    datasets: [{
                        data: JSON.parse('<?php 
                            echo json_encode(
                                array(
                                    get_resultados_pregunta_exactos($org_id, 10, 1, $area), 
                                    get_resultados_pregunta_exactos($org_id, 10, 2, $area),
                                    get_resultados_pregunta_exactos($org_id, 10, 3, $area),
                                    get_resultados_pregunta_exactos($org_id, 10, 4, $area),
                                    get_resultados_pregunta_exactos($org_id, 10, 5, $area),
                                    get_resultados_pregunta_exactos($org_id, 10, 6, $area),
                                    get_resultados_pregunta_exactos($org_id, 10, 7, $area),
                                )
                            );
                            ?>'),
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(102, 154, 255, 0.2)',
                            'rgba(154, 255, 102, 0.2)',
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(102, 154, 255, 0.2)',
                            'rgba(154, 255, 102, 0.2)',
                        ],
                        borderWidth: 1
                    }]
                }
            });
        </script>
        <?php
    } elseif ($grupo == 'ALCOHOLISMO_Y_TABAQUISMO') {
        ?>
        <div id="result-container" style="width: 100%;">
            <h2>Fumadores Y Bebedores</h2>
            <div>
                <canvas id="fumadores_bebedores" width="400" height="400"></canvas>
            </div>
            <h2>Fuman Al Día</h2>
            <div>
                <canvas id="cantidad_fumar" width="400" height="400"></canvas>
            </div>
            <h2>Beben Al Día</h2>
            <p><?php echo get_promedio_pregunta($org_id, 125, $area);?> Unidades</p>
            
            <h2>¿Han Sentido Necesidad De Reducir Su Consumo De Alcohol?</h2>
            <p><?php echo get_promedio_pregunta($org_id, 126, $area);?> Personas</p>

            <h2>Personas Que Durante Los Últimos 3 Meses Han Constatado Algún Cambio En Sus Hábitos De Consumo De Alcohol</h2>
            <div>
                <canvas id="personas_cambio_habitos" width="400" height="400"></canvas>
            </div>
        </div>

        <script>
            var ctx_fumadores_bebedores = document.getElementById("fumadores_bebedores").getContext("2d");
            ctx_fumadores_bebedores.canvas.height = 400;
            ctx_fumadores_bebedores.canvas.width = document.getElementById('result-container').innerWidth;
            var grafica_fumadores_bebedores = new Chart(ctx_fumadores_bebedores, {
                type: 'bar',
                data: {
                    labels:  ['Fumadores', 'Bebedores'],
                    datasets: [{
                        label: 'Personas',
                        data: JSON.parse('<?php echo json_encode(array(get_resultados_pregunta_exactos($org_id, 120, 1, $area), get_resultados_pregunta_exactos($org_id, 124, 1, $area)));?>'),
                        backgroundColor: [
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 99, 132, 0.2)',
                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 99, 132, 0.2)',
                        ],
                        borderWidth: 1
                    }]
                }
            });

            var ctx_cantidad_fumar = document.getElementById("cantidad_fumar").getContext("2d");
            ctx_cantidad_fumar.canvas.height = 400;
            ctx_cantidad_fumar.canvas.width = document.getElementById('result-container').innerWidth;
            var grafica_cantidad_fumar = new Chart(ctx_cantidad_fumar, {
                type: 'bar',
                data: {
                    labels:  ['Cigarros', 'Puros', 'Pipas'],
                    datasets: [{
                        label: 'Al Día',
                        data: JSON.parse('<?php echo json_encode(array(
                                get_promedio_pregunta($org_id, 121, $area),
                                get_promedio_pregunta($org_id, 122, $area),
                                get_promedio_pregunta($org_id, 123, $area),
                            ));?>'),
                        backgroundColor: [
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                        ],
                        borderWidth: 1
                    }]
                }
            });

            var ctx_personas_cambio_habitos = document.getElementById("personas_cambio_habitos").getContext("2d");
            ctx_personas_cambio_habitos.canvas.height = 400;
            ctx_personas_cambio_habitos.canvas.width = document.getElementById('result-container').innerWidth;
            var grafica_personas_cambio_habitos = new Chart(ctx_personas_cambio_habitos, {
                type: 'bar',
                data: {
                    labels:  ['Consume Menos De Lo Habitual', 'Consume Igual Que Siempre', 'Consume Más De Lo Habitual'],
                    datasets: [{
                        label: 'Personas',
                        data: JSON.parse('<?php echo json_encode(array(
                                get_resultados_pregunta_exactos($org_id, 127, 0, $area),
                                get_resultados_pregunta_exactos($org_id, 127, 1, $area),
                                get_resultados_pregunta_exactos($org_id, 127, 2, $area),
                            ));?>'),
                        backgroundColor: [
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                        ],
                        borderWidth: 1
                    }]
                }
            });
        </script>
        <?php
    }
}

function get_resultados_pregunta_exactos($org_id, $pregunta, $respuesta, $area) {
    global $wpdb;
    $table_resultados = $wpdb->prefix . "cesqt_resultados RS";
    $table_preguntas = $wpdb->prefix . "cesqt_preguntas P";
    $table_registros = $wpdb->prefix . "cesqt_registros R";
    
    $areasql = '';
    if ($area != NULL) {
        $areasql = " AND R.area = '$area'";
    }
    $cantidad = (int)$wpdb->get_var(
        "SELECT COUNT(*) FROM $table_resultados, $table_preguntas, $table_registros
        WHERE RS.pregunta = P.id 
        AND RS.registro = R.id 
        AND R.organizacion = '$org_id'
        AND RS.pregunta = $pregunta
        AND RS.respuesta = $respuesta" . $areasql
    );

    if ($cantidad > 0) {
        return $cantidad;
    } else {
        return 0;
    }
}

function get_promedio_pregunta($org_id, $pregunta, $area) {
    global $wpdb;
    $table_resultados = $wpdb->prefix . "cesqt_resultados RS";
    $table_preguntas = $wpdb->prefix . "cesqt_preguntas P";
    $table_registros = $wpdb->prefix . "cesqt_registros R";

    $areasql = '';
    if ($area != NULL) {
        $areasql = " AND R.area = '$area'";
    }

    $cantidad = (int)$wpdb->get_var(
        "SELECT COUNT(*) FROM $table_resultados, $table_preguntas, $table_registros
        WHERE RS.pregunta = P.id 
        AND RS.registro = R.id 
        AND R.organizacion = '$org_id'
        AND RS.pregunta = $pregunta" . $areasql
    );
    
    $suma = (int)$wpdb->get_var(
        "SELECT SUM(RS.respuesta) FROM $table_resultados, $table_preguntas, $table_registros
        WHERE RS.pregunta = P.id 
        AND RS.registro = R.id 
        AND R.organizacion = '$org_id'
        AND RS.pregunta = $pregunta" . $areasql
    );
    
    if ($cantidad > 0) {
        return $suma / $cantidad;
    } else {
        return 0;
    }
}


function construir_datos_grafica($grupo, $org_id, $area) {
    global $wpdb;
    $table_grupos = $wpdb->prefix . "cesqt_grupos G";
    $table_preguntas = $wpdb->prefix . "cesqt_preguntas P";
    $table_registros = $wpdb->prefix . "cesqt_registros R";
    $table_resultados = $wpdb->prefix . "cesqt_resultados RS";

    $cantidad_preguntas = (int)$wpdb->get_var(
        "SELECT COUNT(*) FROM $table_preguntas, $table_grupos
        WHERE P.grupo = G.id
        AND G.nombre = '$grupo'"
    );

    $areasql = '';
    if ($area != NULL) {
        $areasql = " AND R.area = '$area'";
    }

    $registros = $wpdb->get_results(
        "SELECT id FROM $table_registros WHERE organizacion = '$org_id'" . $areasql,
        'ARRAY_A'
    );

    $chart_data = array();
    switch($grupo) {
        case 'ILUSION_POR_EL_TRABAJO':
        case 'INDOLENCIA':
        case 'DESGASTE_PSIQUICO':
        case 'CULPA':
            $chart_data['labels'] = array('Nivel Alto', 'Nivel Bajo');
            $chart_data['data'] = array(0, 0);
            $chart_data['colors'] = array('rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)');
            foreach( $registros as $index => $row ){
                $sumatoria_respuestas_grupo_persona = (int)$wpdb->get_var(
                    "SELECT SUM(RS.respuesta) FROM 
                        $table_resultados, 
                        $table_preguntas, 
                        $table_registros, 
                        $table_grupos
                    WHERE RS.pregunta = P.id 
                    AND RS.registro = R.id 
                    AND P.grupo = G.id
                    AND G.nombre = '$grupo'
                    AND RS.registro = {$row['id']}" . $areasql
                );
        
                $media = $sumatoria_respuestas_grupo_persona / $cantidad_preguntas;
        
                if ($media >= 2) {
                    $chart_data['data'][0]++;
                } else {
                    $chart_data['data'][1]++;
                }
            }
            break;
        default:
            // Niveles entre 0 y 1.5 son bajos, entre 1.6 y 2 son moderados y arriba de 2 alto
            $chart_data['labels'] = array('Nivel Alto', 'Nivel Moderado', 'Nivel Bajo');
            $chart_data['data'] = array(0, 0, 0);
            $chart_data['colors'] = array('rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)');
            foreach( $registros as $index => $row ){
                $sumatoria_respuestas_grupo_persona = (int)$wpdb->get_var(
                    "SELECT SUM(RS.respuesta) FROM 
                        $table_resultados, 
                        $table_preguntas, 
                        $table_registros, 
                        $table_grupos
                    WHERE RS.pregunta = P.id 
                    AND RS.registro = R.id 
                    AND P.grupo = G.id
                    AND G.nombre = '$grupo'
                    AND RS.registro = {$row['id']}" . $areasql
                );
        
                $media = $sumatoria_respuestas_grupo_persona / $cantidad_preguntas;
        
                if ($media >= 2) {
                    $chart_data['data'][0]++;
                } elseif ($media >= 1.6 && $media < 2) {
                    $chart_data['data'][1]++;
                } else {
                    $chart_data['data'][2]++;
                }
            }
            
            break;
    }
    
    return $chart_data;
}


function render_cesq_admin_individuales() {
    if (current_user_can('cesqt') && !current_user_can('cesqt_admin')) {
        // Render pagina de organizacion
        $current_user = wp_get_current_user();
        $org_id = get_user_meta($current_user->ID, 'hash', true);
        render_cesq_individuales($org_id);
        
	} elseif (current_user_can('cesqt_admin')) {
        // Render pagina de todas las organizaciones
        global $title;
        ob_start();
        print '<div class="wrap">';
        print '<h1>' . $title . '</h1>';
        print '</div>';
        render_cesqt_table_orgs('individuales');
        ob_end_flush();
	}
}

function render_cesq_individuales($org_id = null) {
    global $wpdb;
    $area = NULL;
    $table_areas = $wpdb->prefix . "areasorgareas";
    if( isset($_GET['org_id']) ){
        $org_id = $_GET['org_id'];
    }
    if( isset($_GET['area']) && $_POST['area'] != 'todas' ){
        $area = $_GET['area'];
    }
    if( isset($_POST['area']) && $_POST['area'] != 'todas' ){
        $area = $_POST['area'];
    }
    $areas = $wpdb->get_results(
        "SELECT * FROM $table_areas WHERE organizacion = '{$org_id}'",
        'ARRAY_A'
    );
    ob_start();
    ?>
    <div class="wrap">
        <h1>Resultados Individuales</h1>
    </div>
    <div id="poststuff">
        <form method="post">
            <label for="area">Filtrar por área</label>
            <select id="area" name="area">
                <option value="todas">
                    Todas
                </option>
                <?php
                    foreach( $areas as $index => $row ) {
                        ?>
                        <option value="<?php print $row['nombre']; ?>">
                            <?php print $row['nombre']; ?>
                        </option>
                        <?php
                    }
                ?>
            </select>
            <?php
                submit_button('Filtrar');
                $wp_list_table = NULL;
                if( isset($_POST['s']) ){
                    $wp_list_table = new CESQT_Individuales($_POST['s'], $org_id, $area);
                } else {
                    $wp_list_table = new CESQT_Individuales(NULL, $org_id, $area);
                }
                $wp_list_table->prepare_items();
                $wp_list_table->search_box( 'Buscar', 'search_id' ); 
                $wp_list_table->display();
            ?>
        </form>
        <script>
            var area = '<?php print $area; ?>' + '';
            if (area === '') {
                area = 'todas';
            }
            document.getElementById("area").value = area;
        </script>
    </div>
    <?php
    ob_end_flush();
}

function render_cesq_individual() {
    global $wpdb;
    $area = null;
    $areasql = '';
    if ($area != NULL) {
        $areasql = " AND R.area = '$area'";
    }

    $tipos = array(
        'ILUSION_POR_EL_TRABAJO'      => 'Ilusión Por El Trabajo',
        'INDOLENCIA'                  => 'Indolencia',
        'DESGASTE_PSIQUICO'           => 'Desgaste Psíquico',
        'CULPA'                       => 'Culpa',
        'DESENCANTO_PROFESIONAL'      => 'Desencanto Profesional',
        'AUTONOMIA'                   => 'Autonomía',
        'CONFLICTO_DE_ROL'            => 'Conflicto de Rol',
        'AMBIGUEDAD_DE_ROL'           => 'Ambigüedad de Rol',
        'SOBRECARGA_LABORAL'          => 'Sobrecarga Laboral',
        'APOYO_SOCIAL'                => 'Apoyo Social',
        'CONFLICTOS_INTERPERSONALES'  => 'Conflictos Interpersonales',
        'INEQUIDAD'                   => 'Inequidad',
        'FEEDBACK'                    => 'Feedback',
        'PROXIMA_PROMOCION'           => 'Próxima Promoción',
        'DEPRESION'                   => 'Depresión',
        'PROBLEMAS_DE_SALUD'          => 'Problemas de Salud',
        'VALORES_PERSONALES'          => 'Valores Personales',
        'SATISFACCION_LABORAL'        => 'Satisfacción Laboral',
        'RECURSOS'                    => 'Recursos',
        'AUTOEFICACIA'                => 'Autoeficacia',
        'ABSENTISMO'                  => 'Absentismo',
        'ABANDONO'                    => 'Abandono',
    );

    $table_resultados = $wpdb->prefix . "cesqt_resultados RS";
    $table_preguntas = $wpdb->prefix . "cesqt_preguntas P";
    $table_registros = $wpdb->prefix . "cesqt_registros R";

    ob_start();
    if( !isset($_GET['id']) ){
        print 'ERROR ID NO ESTA DEFINIDO';
    } else {
        ?>
        <style>
            h3 {
                font-size: 1.1em;
            }
            
        </style>
        <div class="wrap">
            <h1>Resultado Individual</h1>
        </div>

        <a style="margin-top: 20px;" href="<?php print add_query_arg( 'org_id', $_GET['org_id'], admin_url('admin.php?page=render-cesqt-individuales')); ?>"><- Volver a la lista </a>
        
        <div id="result-container" style="width: 100%;">
            <h2>Información Personal</h2>
            <h3>Sexo</h3>
            <p>
                <?php 
                    if (get_respuesta_cesqt($_GET['id'], 1) == 1) {
                        print 'Masculino';
                    } else {
                        print 'Femenino';
                    }
                ?>
            </p>
            <h3>Edad</h3>
            <p>
                <?php
                    print get_respuesta_cesqt($_GET['id'], 2);
                ?>
            </p>

            <h3>Estado Civil</h3>
            <p>
                <?php
                    if (get_respuesta_cesqt($_GET['id'], 3) == 1) {
                        print 'Con Pareja Estable';
                    } else {
                        print 'Sin Pareja Estable';
                    }
                ?>
            </p>

            <h3>Hijos</h3>
            <p>
                Número de hijos promedio: 
                <?php
                    print get_respuesta_cesqt($_GET['id'], 4);
                ?>
            </p>
            <p>
                Número de hijos viviendo en casa promedio: 
                <?php
                    print get_respuesta_cesqt($_GET['id'], 5);
                ?>
            </p>

            <h3>Tipo De Contrato</h3>
            <p>
                <?php
                    if (get_respuesta_cesqt($_GET['id'], 6) == 1) {
                        print 'Contrato Por Tiempo Indefinido';
                    } elseif (get_respuesta_cesqt($_GET['id'], 6) == 2) {
                        print 'Contrato Por Tiempo Determinado';
                    } elseif (get_respuesta_cesqt($_GET['id'], 6) == 3) {
                        print 'Contrato A Prueba';
                    } elseif (get_respuesta_cesqt($_GET['id'], 6) == 4) {
                        print 'Contrato Por Hora';
                    } elseif (get_respuesta_cesqt($_GET['id'], 6) == 5) {
                        print 'Contrato De Capacitación Inicial';
                    }
                ?>
            </p>

            <h3>Años De Experiencia</h3>
            <p>
                Años Promedio En La Profesión: 
                <?php
                    print get_respuesta_cesqt($_GET['id'], 7);
                ?>
            </p>
            <p>
                Años Promedio En La Organización: 
                <?php
                    print get_respuesta_cesqt($_GET['id'], 8);
                ?>
            </p>
            <p>
                Años Promedio En El Puesto De Trabajo: 
                <?php
                    print get_respuesta_cesqt($_GET['id'], 9);
                ?>
            </p>

            <h3>Último Grado de Estudio</h3>
            <p>
                <?php
                    if (get_respuesta_cesqt($_GET['id'], 10) == 1) {
                        print 'Ninguno';
                    } elseif (get_respuesta_cesqt($_GET['id'], 10) == 2) {
                        print 'Primaria';
                    } elseif (get_respuesta_cesqt($_GET['id'], 10) == 3) {
                        print 'Secundaria';
                    } elseif (get_respuesta_cesqt($_GET['id'], 10) == 4) {
                        print 'Preparatoria';
                    } elseif (get_respuesta_cesqt($_GET['id'], 10) == 5) {
                        print 'Licenciatura';
                    } elseif (get_respuesta_cesqt($_GET['id'], 10) == 6) {
                        print 'Maestría';
                    } elseif (get_respuesta_cesqt($_GET['id'], 10) == 7) {
                        print 'Doctorado';
                    }
                ?>
            </p>
        </div>
        <table class="wp-list-table widefat striped" style="margin-top: 20px;">
            <thead>
                <tr>
                    <th class="column-primary">Tipo</th>
                    <th>Resultados</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    foreach($tipos as $tipo => $tipo_nice) {
                ?>
                        <tr class="is-expanded">
                            <td class="column-primary" data-colname="Tipo"><strong><?php print $tipo_nice;?></strong></td>
                            <td data-colname="Resultados"><?php print cell($_GET['id'], $tipo, $areasql)?></td>
                        </tr>
                <?php
                    }
                ?>
            </tbody>
        </table>

        <div id="result-container" style="width: 100%;">
            <h2>Fuma o Bebe</h2>
            <p>
                Fuma: 
                <?php 
                    if (get_respuesta_cesqt($_GET['id'], 120) == 1) {
                        print 'Si';
                    } else {
                        print 'No';
                    }
                ?>
            </p>
            <p>
                Bebe: 
                <?php 
                    if (get_respuesta_cesqt($_GET['id'], 124) == 1) {
                        print 'Si';
                    } else {
                        print 'No';
                    }
                ?>
            </p>
            <p></p>
            <h2>Fuman Al Día</h2>
            <p>
                Cigarros: <?php print get_respuesta_cesqt($_GET['id'], 121); ?>
            </p>
            <p>
                Puros: <?php print get_respuesta_cesqt($_GET['id'], 122); ?>
            </p>
            <p>
                Pipas: <?php print get_respuesta_cesqt($_GET['id'], 123); ?>
            </p>
            <h2>Bebe Al Día</h2>
            <p><?php print get_respuesta_cesqt($_GET['id'], 125); ?> Unidades</p>
            
            <h2>¿Ha Sentido Necesidad De Reducir Su Consumo De Alcohol?</h2>
            <p>
                <?php 
                     if (get_respuesta_cesqt($_GET['id'], 126) == 1) {
                        print 'Si';
                    } else {
                        print 'No';
                    }
                ?>
            </p>

            <h2>¿Ha Constatado Algún Cambio En Sus Hábitos De Consumo De Alcohol?</h2>
            <p>
                <?php 
                    if (get_respuesta_cesqt($_GET['id'], 127) == 0) {
                        print 'Consumo Menos De Lo Habitual';
                    } elseif (get_respuesta_cesqt($_GET['id'], 127) == 1) {
                        print 'Consumo Igual Que Siempre';
                    } elseif (get_respuesta_cesqt($_GET['id'], 127) == 2) {
                        print 'Consumo Más De Lo Habitual';
                    }
                ?>
            </p>
        </div>
        <?php
    }
    ob_end_flush();
}

function cell($id, $grupo = '', $areasql = '') {
    global $wpdb, $org_id;
    $table_grupos = $wpdb->prefix . "cesqt_grupos G";
    $table_preguntas = $wpdb->prefix . "cesqt_preguntas P";
    $table_registros = $wpdb->prefix . "cesqt_registros R";
    $table_resultados = $wpdb->prefix . "cesqt_resultados RS";

    $cantidad_preguntas = (int)$wpdb->get_var(
        "SELECT COUNT(*) FROM $table_preguntas, $table_grupos
        WHERE P.grupo = G.id
        AND G.nombre = '$grupo'"
    );

    switch($grupo) {
        case 'ILUSION_POR_EL_TRABAJO':
        case 'INDOLENCIA':
        case 'DESGASTE_PSIQUICO':
        case 'CULPA':
            $sumatoria_respuestas_grupo_persona = (int)$wpdb->get_var(
                "SELECT SUM(RS.respuesta) FROM 
                    $table_resultados, 
                    $table_preguntas, 
                    $table_registros, 
                    $table_grupos
                WHERE RS.pregunta = P.id
                AND RS.registro = R.id 
                AND P.grupo = G.id
                AND G.nombre = '$grupo'
                AND RS.registro = {$id}" . $areasql
            );
    
            $media = $sumatoria_respuestas_grupo_persona / $cantidad_preguntas;
    
            if ($media >= 2) {
                return "<span style='color: #28a745;'>Alto (" . number_format((float)$media, 2, '.', '')  . ")</span>";
            } else {
                return "<span style='color: #dc3545;'>Bajo (" . number_format((float)$media, 2, '.', '')  . ")</span>";
            }
            
            break;
        default:
            // Niveles entre 0 y 1.5 son bajos, entre 1.6 y 2 son moderados y arriba de 2 alto
            $sumatoria_respuestas_grupo_persona = (int)$wpdb->get_var(
                "SELECT SUM(RS.respuesta) FROM 
                    $table_resultados, 
                    $table_preguntas, 
                    $table_registros, 
                    $table_grupos
                WHERE RS.pregunta = P.id 
                AND RS.registro = R.id 
                AND P.grupo = G.id
                AND G.nombre = '$grupo'
                AND RS.registro = {$id}" . $areasql
            );
    
            $media = $sumatoria_respuestas_grupo_persona / $cantidad_preguntas;
    
            if ($media >= 2) {
                return "<span style='color: #28a745;'>Alto (" . number_format((float)$media, 2, '.', '')  . ")</span>";
            } elseif ($media >= 1.6 && $media < 2) {
                return "<span style='color: #007bff;'>Medio (" . number_format((float)$media, 2, '.', '')  . ")</span>";
            } else {
                return "<span style='color: #dc3545;'>Bajo (" . number_format((float)$media, 2, '.', '')  . ")</span>";
            }
            
            break;
    }
} 

function get_respuesta_cesqt($id, $pregunta) {
    global $wpdb;
    $table_resultados = $wpdb->prefix . "cesqt_resultados RS";
    return (int)$wpdb->get_var(
        "SELECT respuesta FROM $table_resultados
        WHERE registro = $id
        AND pregunta = $pregunta"
    );
}