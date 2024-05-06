<?php 
add_action('wp_enqueue_scripts', 'add_own_styles');//Хук для подключения стилей
add_theme_support('custom-logo');//Подключение касмтомного логотипа
add_theme_support('menus');//Подключение меню
add_action('login_head', 'rechange_admin_logo');//Подключение хука изменения стилей на страницы входа в амдинку WP

//Функция подключения стилей
function add_own_styles() {
    //Подключение стилей
    wp_enqueue_style('eCommerce-styles', get_template_directory_uri(  ) . '/assets/eCommerceAssets/styles/eCommerceStyle.css');
    wp_enqueue_style('Bootstrap-styles', get_template_directory_uri(  ) . '/assets/css/bootstrap-4.4.1.css');
    wp_enqueue_style('main-styles', get_stylesheet_uri(  ));

    //Подключение скриптов
    wp_enqueue_script( 'jquery-scripts', get_template_directory_uri(  ) . 'assets/js/jquery-3.4.1.min.js', array(), null, true );
    wp_enqueue_script( 'poper-scripts', get_template_directory_uri(  ) . 'assets/js/popper.min.js', array(), null, true );
    wp_enqueue_script( 'bootstrap-scripts', get_template_directory_uri(  ) . 'assets/js/bootstrap-4.4.1.js', array('jquery-scripts', 'poper-scripts'), null, true);
}
//Функция замены логотипа входа в админку WP
function rechange_admin_logo() {
    echo '<style text="text/css">
    h1 a {
        background-image: url('. get_template_directory_uri(  ) .'/assets/images/custom-logo.png) !important;
    }
</style>';
}
?>

