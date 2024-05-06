<?php
/*
Template Name: Шестой Пост
Template Post Type: post
*/
?>

<?php 
    get_header();
?>

<article class="productInfo"><!-- Each individual product description -->
          <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent6.jpg"></div>
          <p class="price"><strong>Кирха Розенау</strong></p>
          <p class="price">50$</p>
          <p class="productContent">Кирху Розенау начали строить в июне 1914, но начавшаяся Первая мировая война заставила отложить.

          <em>Адрес: г. Калининград, ул. Клары Назаровой, 24. В 10:00.</em>
          <em>Экскурсия: Сказки старого Калининграда.</em>
          </p>
        </article>

<?php
    get_footer();
?>