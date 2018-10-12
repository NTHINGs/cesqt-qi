<?php
/**
 * Mostrar formulario para cuestionario para calidad de vida laboral
 *
 * [cuestionario-cesqt]
 *
 * @package	 cesqt-qi
 * @since    1.0.0
 */
if ( ! function_exists( 'cuestionario_cesqt_shortcode' ) ) {
	// Add the action.
	add_action( 'plugins_loaded', function() {
		// Add the shortcode.
		add_shortcode( 'cuestionario-cesqt', 'cuestionario_cesqt_shortcode' );
	});

	/**
	 * cuestionario-cesqt shortcode.
	 *
	 * @return string
	 * @since  1.0.0
	 */
	function cuestionario_cesqt_shortcode() {
        ob_start();
        cesqt_guardar_cuestionario();
        if ( !isset( $_POST['submitted'] ) ) {
            render_html_form_cuestionario_cesqt();
        }
        return ob_get_clean();
    }
    
    function render_html_form_cuestionario_cesqt() {

        if (!isset($_GET['org_id'])) {
            echo 'LINK DE ORGANIZACION INCORRECTO';
        } else {
            global $wpdb;
            $table_grupos = $wpdb->prefix . "cesqt_grupos";
            $table_preguntas = $wpdb->prefix . "cesqt_preguntas";
            $table_posibles_respuestas = $wpdb->prefix . "cesqt_posibles_respuestas";
            $preguntas = array();
            $tipos_pregunta = $wpdb->get_results(
                "SELECT * FROM $table_grupos", 
                'ARRAY_A'
            );

            foreach($tipos_pregunta as $index => $row) {
                $tipo_array = array();
                $tipo_array['preguntas'] = $wpdb->get_results(
                    "SELECT id, pregunta, inversa FROM $table_preguntas WHERE grupo = '{$row['id']}'",
                    'ARRAY_A'
                );

                foreach($tipo_array['preguntas'] as $index2 => $row2) {
                    $tipo_array['preguntas'][$index2]['posibles_respuestas'] = $wpdb->get_results(
                        "SELECT tipo, valor, label FROM $table_posibles_respuestas WHERE pregunta = '{$row2['id']}'",
                        'ARRAY_A'
                    );
                }
                $tipo_array['descripcion'] = $row['descripcion'];

                $preguntas[$row['nombre']] = $tipo_array;
            }

            $variables = array(
                "%REQUEST_URI%",
                "%DATA%",
                "%ORG_ID%",
                "%ORG_NAME%"
            );
            $organizacion = get_users(
                array(
                    'role' => 'empresa',
                    'hash' => $_GET['org_id'],
                )
            )[0]->display_name;
            $values = array(
                esc_url( $_SERVER['REQUEST_URI'] ),
                json_encode($preguntas),
                $_GET['org_id'],
                $organizacion
            );
            echo str_replace($variables, $values, file_get_contents( plugin_dir_path( __DIR__ ) . "/templates/cuestionario-cesqt.html" ));
        }
    }

    function cesqt_guardar_cuestionario() {
        if ( isset( $_POST['submitted'] ) ) {
            global $wpdb;

            $table_name = $wpdb->prefix . "cesqt_registros";
            $values = array(
                'fechaaplicacion'    => current_time( 'mysql' ),
                'organizacion'       => $_POST['organizacion'],
            );
            $wpdb->insert( $table_name, $values);

            $registro_id = $wpdb->insert_id;

            $resultados_table_name = $wpdb->prefix . "cesqt_resultados";
            foreach($_POST as $key => $value) {
                if (strpos($key, 'pregunta_')>=0) {
                    $pregunta = array_pop(explode('pregunta_', $key));
                    $respuesta = array(
                        'pregunta'         => $pregunta,
                        'registro'         => $registro_id,
                        'respuesta'        => $value,
                    );
                    $tipos = array(
                        '%d',
                        '%d',
                        '%d',
                    );

                    $wpdb->insert( $resultados_table_name, $respuesta, $tipos);
                }
            }
            echo 'Formulario enviado correctamente';
            // echo do_shortcode('[resultados-cuestionario-cesqt registro_id="' . $registro_id . '"]');
        }
    }
}
