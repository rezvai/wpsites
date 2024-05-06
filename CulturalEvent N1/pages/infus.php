<?php 
/*
Template Name: Напишите нам
Template Post Type: page
*/
?>

<?php 
    get_header();
?>

<form action="">
    <label for="">Имя</label>
    <input type="text" placeholder="Введите имя">

    <label for="">Адрес электронной почты</label>
    <input type="email" placeholder="Введите почту">

    <label for="">Номер телефона</label>
    <input type="tel" placeholder="Введите телефон">

    <label for="">Способ получения ответа на сообщение</label>
    <label for="">почт</label>
    <input type="checkbox">
    <label for="SMS"></label>
    <input type="checkbox">
    <label for="">Сообщение в соц.сети</label>
    <input type="checkbox">

    <label for="">Сообщение</label>
    <input type="text">

    <input type="submit" value="Отправить" class="buyButton">
</form>

<?php 
    get_footer();
?>