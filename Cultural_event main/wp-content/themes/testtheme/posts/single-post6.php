<?php
/*
Template Name: Шестой пост
Template Post Type: post
*/
?>

<?php
    get_header();
?>

<article class="productInfo"> <!-- Each individual product description -->
    <div><img alt="sample" src="<?php bloginfo('template_url')?>/assets/images/ivent6.jpg"></div>
    <p class="price"><strong>Кирха Розенау</strong></p>
    <p class="productContent">Кирху Розенау начали строить в июне 1914, но начавшаяся Первая мировая война заставила.

    <em>Адрес: г. Калининград, ул. Клары Назаровой, 24. В 10:00.</em>
    <em>Экскурсия: Сказки старого Калининграда.</em>
    </p>
    <form action="">
    <input type="button" name="button" value="Далее" class="buyButton">
    </form>
</article>

<?php
    get_footer();
?>