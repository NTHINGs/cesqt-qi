<?php
/**
 * Plugin Name:       CESQT QI
 * Plugin URI:        https://github.com/NTHINGs/cesqt-qi
 * Description:       Plugin hecho a la medida para manejar el cuestionario de calidad de vida laboral del Instituto QI.
 * Version:           1.0.0
 * Author:            Mauricio Martinez
 * Author URI:        https://github.com/NTHINGs
 * License:           MIT
 * License URI:       https://github.com/NTHINGs/cesqt-qi/blob/master/LICENSE
 * Text Domain:       cesqt-qi
 *
 * @link              https://github.com/NTHINGs/cesqt-qi
 * @package           cesqt-qi
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}

/**
 * Define global constants.
 *
 * @since 1.0.0
 */
// Plugin version.
if ( ! defined( 'ABS_VERSION_CESQT' ) ) {
	define( 'ABS_VERSION_CESQT', '1.0.0' );
}
if ( ! defined( 'CESQT_PLUGIN_PATH' ) ) {
	define( 'CESQT_PLUGIN_PATH',  plugin_dir_path( __FILE__ ) );
}
if ( ! defined( 'CESQT_PLUGIN_URL' ) ) {
	define( 'CESQT_PLUGIN_URL', plugin_dir_url( __FILE__ ) );
}
/**
 * Link.
 *
 * @since 1.0.0
 */
if ( file_exists( CESQT_PLUGIN_PATH . 'shortcodes/formulario-registro-empresa.php' ) ) {
	require_once( CESQT_PLUGIN_PATH . 'shortcodes/formulario-registro-empresa.php' );
}
if ( file_exists( CESQT_PLUGIN_PATH . 'shortcodes/cuestionario-cesqt.php' ) ) {
	require_once( CESQT_PLUGIN_PATH . 'shortcodes/cuestionario-cesqt.php' );
}
// if ( file_exists( CESQT_PLUGIN_PATH . 'shortcodes/resultados-cuestionario.php' ) ) {
// 	require_once( CESQT_PLUGIN_PATH . 'shortcodes/resultados-cuestionario.php' );
// }

if ( file_exists( CESQT_PLUGIN_PATH . 'admin-templates/admin-page.php' ) ) {
	require_once( CESQT_PLUGIN_PATH . 'admin-templates/admin-page.php' );
}

add_action('wp_enqueue_scripts','cesqt_qi_init');

function cesqt_qi_init() {
	wp_deregister_script('jquery');
	wp_enqueue_script('jquery', '//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js', array(), null, true);
	wp_register_script( 'popper', '//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js', array( 'jquery' ), '3.3.1', false );
	wp_enqueue_script( 'bootstrap', '//stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js', array( 'jquery', 'popper' ), '3.3.1', false );
	wp_enqueue_script( 'gijgo', '//cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js', array( 'jquery' ), '3.3.1', false );
	wp_enqueue_style( 'gijgo', '//cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css');
	wp_enqueue_script('chart', '//cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js', array(), null, false);
}

add_action( 'admin_enqueue_scripts', 'cesqt_qi_admin_init' );

function cesqt_qi_admin_init() {
	wp_enqueue_script('chart', '//cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js', array(), null, false);
}

// Crear Tablas en MySql
function cesqt_qi_create_plugin_database() {
    global $table_prefix, $wpdb;
	$charset_collate = $wpdb->get_charset_collate();
	$sql = str_replace(array("%TABLE_PREFIX%", "%CHARSET_COLLATE%"), array($table_prefix . "cesqt_", $charset_collate), file_get_contents( CESQT_PLUGIN_PATH . "/schema.sql" ));
	require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
	dbDelta($sql);
}
register_activation_hook( __FILE__, 'cesqt_qi_create_plugin_database' );
