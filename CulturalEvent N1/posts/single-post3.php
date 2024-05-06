<?php
/*
Template Name: Третий Пост
Template Post Type: post
*/
?>

<?php 
    get_header();
?>

<article class="productInfo"><!-- Each individual product description -->
          <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent3.jpg"></div>
          <p class="price"><strong>Замок "Нессельбек"</strong></p>
          <p class="price">50$</p>
          <p class="productContent">Нессельбек — это средневековый рыцарский замок, воссозданный по старинным чертежам в 2011 году.

          <em>Адрес: пос. Орловка, пер. Центральный, 7. В 10:00.</em>
          <em>Экскурсия: Калининград сквозь столетия.</em>
          </p>
        </article>

<?php
    get_footer();
?>