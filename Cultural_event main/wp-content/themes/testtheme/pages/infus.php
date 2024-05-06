<script>
document.getElementsByClassName('contactform').addEventListener('submit', function(event) {
    event.preventDefault();
    // Ваш код для обработки формы здесь
});
</script>
<?php
/*
Template Name: Напишите нам
Template Post Type: page
*/
?>

<?php
    get_header();
?>
<?php
echo '<form action="' . $_SERVER['REQUEST_URI'] . '" method="POST" class="contactform">
<div class="contactcolumn">
    <label for="">Имя</label>
    <input type="text" name="formname" placeholder="Введите имя" value="' . (isset($_POST['formname']) ? $formname : null) . '" required>
</div>
<div class="contactcolumn">
    <label for="">Адрес электронной почты</label>
    <input type="email" name="formemail" placeholder="Введите почту" value="' . (isset($_POST['formemail']) ? $formemail : null) . '" required>
</div>
<div class="contactcolumn">
    <label for="">Номер телефона</label>
    <input type="tel" name="formtel" placeholder="Введите номер" value="' . (isset($_POST['formtel']) ? $formtel : null) . '" required>
</div>
<div>
    <label for="">Способ получения ответа на сообщение</label>
    <br>
    <input type="checkbox">
    <label for="">почта</label>
    <input type="checkbox">
    <label for="">SMS</label>
    <input type="checkbox">
    <label for="">Сообщение в соц.сети</label>
</div>
<div class="contactcolumn">
    <label for="">Сообщение</label>
    <input type="text" name="formmessage" placeholder="Введите сообщение" value="' . (isset($_POST['formmessage']) ? $formmessage : null) . '" required>
</div>
<input type="submit" name="submit" value="Отправить" class="button__excursion" style="width: 35%; align-self: center;">
</form>';
?>  
<?php do_shortcode('[cr_censor_plugin]'); ?>
<?php
    get_footer();
?>