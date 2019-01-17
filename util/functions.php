<?php
/**
 * Functions PHP
 *
 *
 * @package	 cesqt-qi
 * @since    1.0.0
 */

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