<?php
add_action('wp_enqueue_scripts', 'add_own_styles'); // Добавление хука, который подключает кастомные стили
add_theme_support('custom-logo'); // Подключение функции кастомных логотипов
add_theme_support('menus'); // Подключение функции меню
add_action('login_head', 'my_custom_logo'); //Добавление хука, для изменения стилей Wordpress`a

//Функция подключения кастомных стилей
function add_own_styles() {
    //Подключение стилей
    wp_enqueue_style('eCommerce-styles', get_template_directory_uri(  ) . '/assets/eCommerceAssets/styles/eCommerceStyle.css');
    wp_enqueue_style('bootstrap-styles', get_template_directory_uri(  ) . '/assets/css/bootstrap-4.4.1.css');
    wp_enqueue_style('main-styles', get_stylesheet_uri());
    //Подключение скриптов
    wp_enqueue_script('jquery-scripts', get_template_directory_uri(  ) . '/assets/js/jquery-3.4.1.min.js', array(), null, 'footer');
    wp_enqueue_script('popper-scripts', get_template_directory_uri(  ) . '/assets/js/popper.min.js', array('jquery-scripts'), null, 'footer');
    wp_enqueue_script('bootstrap-scripts', get_template_directory_uri(  ) . '/assets/js/bootstrap-4.4.1.js', array('jquery-scripts', 'popper-scripts'), null, 'footer');
    wp_enqueue_script('main-scripts', get_template_directory_uri(  ) . '/assets/js/main.js', array('jquery-scripts', 'popper-scripts', 'bootstrap-scripts'), null, 'footer');
}

//Функция изменения стилей, для добавления кастомного логотипа
function my_custom_logo() {
    echo '<style type="text/css">
    h1 a {
        background-image: url('. get_template_directory_uri(  ) .'/assets/images/custom-logo.png) !important;
        width: 100px !important;
        height: 100px !important;
    }
</style>';
}
?>


