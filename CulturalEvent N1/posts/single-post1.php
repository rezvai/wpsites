<?php
/*
Template Name: Первый Пост
Template Post Type: post
*/
?>

<?php 
    get_header();
?>

<article class="productInfo"><!-- Each individual product description -->
          <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent1.jpg"></div>
          <p class="price"><strong>Куршская коса</strong></p>
          <p class="price">50$</p>
          <p class="productContent">Куршская коса, по мнению большинства туристов, считается главной достопримечательностью Калининграда.

          <em>Адрес: пос. Рыбачий, ул. Лесная, 7. В 10:00.</em>
          <em>Экскурсия: На Куршскую косу через форты и замки.</em>
          </p>
        </article>

<?php
    get_footer();
?>