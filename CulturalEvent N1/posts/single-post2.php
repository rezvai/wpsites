<?php
/*
Template Name: Второй Пост
Template Post Type: post
*/
?>

<?php 
    get_header();
?>

<article class="productInfo"><!-- Each individual product description -->
          <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent2.jpg"></div>
          <p class="price"><strong>Танцующий лес</strong></p>
          <p class="price">50$</p>
          <p class="productContent">Сосновый лес, находящийся на Куршской косе, был высажен 60 лет назад для того, чтобы укрепить пески.

          <em>Координаты на карте: 55.1797754504411. В 10:00.</em>
          <em>Экскурсия: Куршская коса для детей и взрослых.</em>
          </p>
        </article>

<?php
    get_footer();
?>