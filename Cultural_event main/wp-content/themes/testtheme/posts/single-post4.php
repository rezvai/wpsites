<?php
/*
Template Name: Четвертый пост
Template Post Type: post
*/
?>

<?php
    get_header();
?>

<article class="productInfo"> <!-- Each individual product description -->
    <div><img alt="sample" src="<?php bloginfo('template_url')?>/assets/images/ivent4.jpg"></div>
    <p class="price"><strong>Рыбная деревня</strong></p>
    <p class="productContent">Рыбная деревня в Калининграде лишь подражает архитектуре Кенигсберга, ведь построена она около 10 лет назад.

    <em>Адрес: г. Калининград, ул. Октябрьская, 2а. В 10:00.</em>
    <em>Экскурсия: Полюбить Калининград за 3 часа.</em>
    </p>
    <form action="">
    <input type="button" name="button" value="Далее" class="buyButton">
    </form>
</article>

<?php
    get_footer();
?>