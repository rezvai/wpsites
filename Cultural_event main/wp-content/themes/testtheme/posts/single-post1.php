<?php
/*
Template Name: Первый пост
Template Post Type: post
*/
?>

<?php
    get_header();
?>

<article class="productInfo"> <!-- Each individual product description -->
    <div><img alt="sample" src="<?php bloginfo('template_url')?>/assets/images/ivent1.jpeg"></div>
    <p class="price"><strong>Куршская коса</strong></p>
    <p class="productContent">Куршская коса, по мнению большинства туристов, считается главной достопримечательностью Калининграда.

    <em>Адрес: пос. Рыбачий, ул. Лесная, 7.</em>
    <em>Экскурсия: На Куршскую косу через форты и замки</em>
    </p>
    <form action="">
    <input type="button" name="button" value="Далее" class="buyButton">
    </form>
</article>

<?php
    get_footer();
?>