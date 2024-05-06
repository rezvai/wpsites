<?php 
/*
Template Name: Войти
Template Post Type: page
*/
?>

<?php 
    get_header();
?>
<?= do_shortcode( '[cr_plugin_form_login]' )?>
<?php 
    get_footer();
?>