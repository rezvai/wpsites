<?php
/*
Template Name: Пятый Пост
Template Post Type: post
*/
?>

<?php 
    get_header();
?>

<article class="productInfo"><!-- Each individual product description -->
          <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent5.jpg"></div>
          <p class="price"><strong>Фридландские ворота</strong></p>
          <p class="price">50$</p>
          <p class="productContent">Фридландские ворота середины XIX века стали последними из семи ворот Кенигсберга. В начале XX столетия.

          <em>Адрес: г. Калининград, ул. Дзержинского, 30. В 10:00.</em>
          <em>Экскурсия: Подземный Кёнигсберг: легенды старого.</em>
          </p>
        </article>

<?php
    get_footer();
?>