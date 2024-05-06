<?php 
/*
Template Name: Мероприятия
Template Post Type: page
*/
?>

<?php 
    get_header();
?>

<section class="mainContent">
		

     <div class="jumbotron">
     <?php echo do_shortcode('[metaslider id="30"]'); ?>
 </div>
     <div class="productRow"><!-- Each product row contains info of 3 elements -->
       <article class="productInfo"><!-- Each individual product description -->
         <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent1.jpg"></div>
         <p class="price"><strong>Куршская коса</strong></p>
         <p class="price">50$</p>
         <p class="productContent">Куршская коса, по мнению большинства туристов, считается главной достопримечательностью Калининграда.

         <em>Адрес: пос. Рыбачий, ул. Лесная, 7. В 10:00.</em>
         <em>Экскурсия: На Куршскую косу через форты и замки.</em>
         </p>
         <a href="http://localhost?action=add&id=" class="buyButton" title="Нажмите ПКМ">Записаться</a>
         <form action="http://localhost/2023/10/13/первый-пост/">
             <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ПКМ">
         </form>
       </article>
       <article class="productInfo"><!-- Each individual product description -->
         <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent2.jpg"></div>
         <p class="price"><strong>Танцующий лес</strong></p>
         <p class="price">50$</p>
         <p class="productContent">Сосновый лес, находящийся на Куршской косе, был высажен 60 лет назад для того, чтобы укрепить пески.

         <em>Координаты на карте: 55.1797754504411. В 10:00.</em>
         <em>Экскурсия: Куршская коса для детей и взрослых.</em>
         </p>
         <a href="http://localhost?action=add&id=" class="buyButton" title="Нажмите ПКМ">Записаться</a>
         <form action="http://localhost/2023/10/13/второй-пост/">
             <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ПКМ">
         </form>
       </article>
     </div>
       
     <div class="productRow"> 
       <!-- Each product row contains info of 3 elements -->
       <article class="productInfo"><!-- Each individual product description -->
         <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent3.jpg"></div>
         <p class="price"><strong>Замок "Нессельбек"</strong></p>
         <p class="price">50$</p>
         <p class="productContent">Нессельбек — это средневековый рыцарский замок, воссозданный по старинным чертежам в 2011 году.

         <em>Адрес: пос. Орловка, пер. Центральный, 7. В 10:00.</em>
         <em>Экскурсия: Калининград сквозь столетия.</em>
         </p>
         <a href="http://localhost?action=add&id=" class="buyButton" title="Нажмите ПКМ">Записаться</a>
         <form action="http://localhost/2023/10/13/третий-пост/">
             <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ПКМ">
         </form>
       </article>
       <article class="productInfo"><!-- Each individual product description -->
         <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent4.jpg"></div>
         <p class="price"><strong>Рыбная деревня</strong></p>
         <p class="price">50$</p>
         <p class="productContent">Как бы то ни было, но такой комплекс гораздо больше вписывается в архитектурный ансамбль Калининграда.

         <em>Адрес: г. Калининград, ул. Октябрьская, 2а. В 10:00.</em>
         <em>Экскурсия: Полюбить Калининград за 3 часа.</em>
         </p>
         <a href="http://localhost?action=add&id=" class="buyButton" title="Нажмите ПКМ">Записаться</a>
         <form action="http://localhost/2023/10/13/четвертый-пост/">
             <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ПКМ">
         </form>
       </article>
     </div>
       
     <div class="productRow">
     <article class="productInfo"><!-- Each individual product description -->
         <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent5.jpg"></div>
         <p class="price"><strong>Фридландские ворота</strong></p>
         <p class="price">50$</p>
         <p class="productContent">Фридландские ворота середины XIX века стали последними из семи ворот Кенигсберга. В начале XX столетия.

         <em>Адрес: г. Калининград, ул. Дзержинского, 30. В 10:00.</em>
         <em>Экскурсия: Подземный Кёнигсберг: легенды старого.</em>
         </p>
         <a href="http://localhost?action=add&id=" class="buyButton" title="Нажмите ПКМ">Записаться</a>
         <form action="http://localhost/2023/10/13/пятый-пост/">
             <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ПКМ">
         </form>
       </article>
       <article class="productInfo"><!-- Each individual product description -->
         <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent6.jpg"></div>
         <p class="price"><strong>Кирха Розенау</strong></p>
         <p class="price">50$</p>
         <p class="productContent">Кирху Розенау начали строить в июне 1914, но начавшаяся Первая мировая война заставила отложить.

         <em>Адрес: г. Калининград, ул. Клары Назаровой, 24. В 10:00.</em>
         <em>Экскурсия: Сказки старого Калининграда.</em>
         </p>
         <a href="http://localhost?action=add&id=" class="buyButton" title="Нажмите ПКМ">Записаться</a>
         <form action="http://localhost/2023/10/13/шестой-пост/">
             <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ПКМ">
         </form>
       </article>
     </div>
   </section>

<?php 
    get_footer();
?>