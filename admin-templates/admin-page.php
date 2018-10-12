<?php

/**
 * cesqt Tabbed Settings Page
 */

add_action( 'admin_menu', 'cesqt_qi_admin' );

function cesqt_qi_admin() {
    $hook = add_menu_page(
        'Cuestionario Calidad de Vida Laboral',     // page title
        'Cuestionario Calidad de Vida Laboral',     // menu title
        'cesqt',   // capability
        'cuestionario-cesqt',     // menu slug
		'render_cesqt_qi_admin', // callback function
		'dashicons-universal-access'
    );
}


function cesqt_admin_tabs( $current = 'homepage' ) { 
    $tabs = array( 'homepage' => 'Home', 'general' => 'General', 'footer' => 'Footer' ); 
    $links = array();
    echo '<div id="icon-themes" class="icon32"><br></div>';
    echo '<h2 class="nav-tab-wrapper">';
    foreach( $tabs as $tab => $name ){
        $class = ( $tab == $current ) ? ' nav-tab-active' : '';
        echo "<a class='nav-tab$class' href='?page=theme-settings&tab=$tab'>$name</a>";
        
    }
    echo '</h2>';
}

function render_cesqt_qi_admin() {
	global $pagenow;
	$settings = get_option( "cesqt_theme_settings" );
	$theme_data = get_theme_data( TEMPLATEPATH . '/style.css' );
	?>
	
	<div class="wrap">
		<h2><?php echo $theme_data['Name']; ?> Theme Settings</h2>
		
		<?php
			if ( 'true' == esc_attr( $_GET['updated'] ) ) echo '<div class="updated" ><p>Theme Settings updated.</p></div>';
			
			if ( isset ( $_GET['tab'] ) ) cesqt_admin_tabs($_GET['tab']); else cesqt_admin_tabs('homepage');
		?>

		<div id="poststuff">
			<form method="post" action="<?php admin_url( 'themes.php?page=theme-settings' ); ?>">
				<?php
				wp_nonce_field( "cesqt-settings-page" ); 
				
				if ( $pagenow == 'themes.php' && $_GET['page'] == 'theme-settings' ){ 
				
					if ( isset ( $_GET['tab'] ) ) $tab = $_GET['tab']; 
					else $tab = 'homepage'; 
					
					echo '<table class="form-table">';
					switch ( $tab ){
						case 'general' :
							?>
							<tr>
								<th><label for="cesqt_tag_class">Tags with CSS classes:</label></th>
								<td>
									<input id="cesqt_tag_class" name="cesqt_tag_class" type="checkbox" <?php if ( $settings["cesqt_tag_class"] ) echo 'checked="checked"'; ?> value="true" /> 
									<span class="description">Output each post tag with a specific CSS class using its slug.</span>
								</td>
							</tr>
							<?php
						break; 
						case 'footer' : 
							?>
							<tr>
								<th><label for="cesqt_ga">Insert tracking code:</label></th>
								<td>
									<textarea id="cesqt_ga" name="cesqt_ga" cols="60" rows="5"><?php echo esc_html( stripslashes( $settings["cesqt_ga"] ) ); ?></textarea><br/>
									<span class="description">Enter your Google Analytics tracking code:</span>
								</td>
							</tr>
							<?php
						break;
						case 'homepage' : 
							?>
							<tr>
								<th><label for="cesqt_intro">Introduction</label></th>
								<td>
									<textarea id="cesqt_intro" name="cesqt_intro" cols="60" rows="5" ><?php echo esc_html( stripslashes( $settings["cesqt_intro"] ) ); ?></textarea><br/>
									<span class="description">Enter the introductory text for the home page:</span>
								</td>
							</tr>
							<?php
						break;
					}
					echo '</table>';
				}
				?>
				<p class="submit" style="clear: both;">
					<input type="submit" name="Submit"  class="button-primary" value="Update Settings" />
					<input type="hidden" name="cesqt-settings-submit" value="Y" />
				</p>
			</form>
			
			<p><?php echo $theme_data['Name'] ?> theme by <a href="http://ilovecolors.com.ar/">ilovecolors.com.ar</a> | <a href="http://twitter.com/eliorivero">Follow me on Twitter</a>! | Join <a href="http://on.fb.me/cesqtfb">ilovecolors on Facebook</a>!</p>
		</div>

	</div>
<?php
}


?>