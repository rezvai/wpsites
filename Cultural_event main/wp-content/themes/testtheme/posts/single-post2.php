<?php
/*
Template Name: Второй пост
Template Post Type: post
*/
?>

<?php
    get_header();
?>

<article class="productInfo"> <!-- Each individual product description -->
    <div><img alt="sample" src="<?php bloginfo('template_url')?>/assets/images/ivent2.jpeg"></div>
    <p class="price"><strong>Танцующий лес</strong></p>
    <p class="productContent">Сосновый лес, находящийся на Куршской косе, был высажен 60 лет назад для того, чтобы укрепить пески.

    <em>Координаты на карте: 55.1797754504411. В 10:00.</em>
    <em>Экскурсия: Куршская коса для детей и взрослых.</em>
    </p>
    <form action="">
    <input type="button" name="button" value="Далее" class="buyButton">
    </form>
</article>

<?php
    get_footer();
?>