<?php
/*
Template Name: Пятый пост
Template Post Type: post
*/
?>

<?php
    get_header();
?>

<article class="productInfo"> <!-- Each individual product description -->
    <div><img alt="sample" src="<?php bloginfo('template_url')?>/assets/images/ivent5.jpg"></div>
    <p class="price"><strong>Фридландские ворота</strong></p>
    <p class="productContent">Фридландские ворота середины XIX века стали последними из семи ворот Кенигсберга.

    <em>Адрес: г. Калининград, ул. Дзержинского, 30. В 10:00.</em>
    <em>Экскурсия: Подземный Кёнигсберг: легенды старого города.</em>
    </p>
    <form action="">
    <input type="button" name="button" value="Далее" class="buyButton">
    </form>
</article>

<?php
    get_footer();
?>