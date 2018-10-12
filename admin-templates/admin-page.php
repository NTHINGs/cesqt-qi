<?php

/**
 * cesqt Tabbed Settings Page
 */

add_action( 'admin_menu', 'cesqt_qi_admin' );

function cesqt_qi_admin() {
    $hook = add_menu_page(
        'Cuestionario Calidad de Vida Laboral',     // page title
        'CESQT',     // menu title
        'cesqt',   // capability
        'cuestionario-cesqt',     // menu slug
		'render_cesqt_qi_admin', // callback function
		'dashicons-universal-access'
    );
}


function cesqt_admin_tabs( $current = 'INFORMACION' ) {
    global $wpdb;
    $table_grupos = $wpdb->prefix . "cesqt_grupos";
    $grupos = $wpdb->get_results(
        "SELECT * FROM $table_grupos", 
        'ARRAY_A'
    );

    echo '<div id="icon-themes" class="icon32"><br></div>';
    echo '<h2 class="nav-tab-wrapper">';
    foreach( $grupos as $index => $row ){
        $class = ( $row['nombre'] == $current ) ? ' nav-tab-active' : ’;
        echo '<a class="nav-tab$class" href="?page=cuestionario-cesqt&tab=$tab">' . $row['nombrelimpio'] . '</a>';

    }
    echo '</h2>';
}

function render_cesqt_qi_admin() {
	global $title;
	?>
	
	<div class="wrap">
		<h2><?php echo $title; ?></h2>
		
		<?php			
            if ( isset ( $_GET['tab'] ) ) cesqt_admin_tabs($_GET['tab']); else cesqt_admin_tabs('INFORMACION');
            if ( isset ( $_GET['tab'] ) ) $tab = $_GET['tab']; else $tab = 'INFORMACION'; 
            switch($tab) {
                case 'INFORMACION' :
                    echo 'ESTOY EN INFORMACION';
                break;
            }
		?>
		

	</div>
<?php
}


?>