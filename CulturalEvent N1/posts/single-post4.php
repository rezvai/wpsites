<?php
/*
Template Name: четвертый Пост
Template Post Type: post
*/
?>

<?php 
    get_header();
?>

<article class="productInfo"><!-- Each individual product description -->
          <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent4.jpg"></div>
          <p class="price"><strong>Рыбная деревня</strong></p>
          <p class="price">50$</p>
          <p class="productContent">Как бы то ни было, но такой комплекс гораздо больше вписывается в архитектурный ансамбль Калининграда.

          <em>Адрес: г. Калининград, ул. Октябрьская, 2а. В 10:00.</em>
          <em>Экскурсия: Полюбить Калининград за 3 часа.</em>
          </p>
        </article>

<?php
    get_footer();
?>