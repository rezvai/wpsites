<?php 
/*
Plugin Name: Censor-plugin
Description: Днный плагин осуществляет валидацию контактной формы и фильтрует ее
*/
?>

<?php 
function censor_plugin_validation_data() {
    $message = $_POST['formmessage'];
    $name = $_POST['formname'];

    preg_replace("/.*?\./", '', $message);
    preg_replace("/.*?\./", '', $name);

    $name = str_split($name, ' ');
    $message = str_split($message, ' ');

    foreach ($name as $word):
        if (strtolower($word) == "козёл" || strtolower($word) == "козел" || strtolower($word) == "дурак") {
            $word = str_repeat('*', strlen($word));
        } 
    endforeach;

    foreach ($message as $word):
        if (strtolower($word) == "козёл" || strtolower($word) == "козел" || strtolower($word) == "дурак") {
            $word = str_repeat('*', strlen($word));
        } 
    endforeach;
}

add_shortcode( "cr_censor_plugin", "censor_plugin_shortcode" );

function censor_plugin_shortcode() {
    return censor_plugin_validation_data();
}
?>