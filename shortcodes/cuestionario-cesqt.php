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
            $table_name = $wpdb->prefix . "cesqt_preguntas";
            $preguntas = array();
            $tipos_pregunta = $wpdb->get_results(
                "SELECT DISTINCT tipo FROM $table_name", 
                'ARRAY_A'
            );

            foreach($tipos_pregunta as $index => $row) {
                $preguntas[$row['tipo']] = json_encode($wpdb->get_results(
                    "SELECT * FROM $table_name WHERE tipo = '{$row['tipo']}'",
                    'ARRAY_A'
                ));
            }

            $variables = array(
                "%REQUEST_URI%",
                "%PREGUNTAS%",
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
                $preguntas,
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
                    );
                    $tipos = array(
                        '%d',
                        '%d',
                    )

                    if (is_int($value) == true) {
                        $respuesta['respuesta'] = $value;
                        $tipos[2] = '%d';
                    } else {
                        $respuesta['respuesta_string'] = $value;
                        $tipos[2] = '%s';
                    }
                    $wpdb->insert( $resultados_table_name, $respuesta, $tipos);
                }
            }
            echo 'Formulario enviado correctamente';
            // echo do_shortcode('[resultados-cuestionario-cesqt registro_id="' . $registro_id . '"]');
        }
    }
}
