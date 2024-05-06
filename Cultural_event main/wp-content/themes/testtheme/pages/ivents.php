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
    <div class="productRow"><!-- Each product row contains info of 3 elements -->
     <article class="productInfo"> <!-- Each individual product description -->
         <div><img alt="sample" src="<?= get_template_directory_uri(  ) . '/assets/images/ivent1.jpeg' ?>"></div>
         <p class="price"><strong>Куршская коса</strong></p>
         <p class="price"><strong>50$</strong></p> 
         <p class="productContent">Куршская коса, по мнению большинства туристов, считается главной достопримечательностью.

         <em>Адрес: пос. Рыбачий, ул. Лесная, 7. В 10:00.</em>
         <em>Экскурсия: На Куршскую косу через форты и замки.</em> 
         </p>
         <form action="http://localhost/2023/10/03/%d0%bf%d0%b5%d1%80%d0%b2%d1%8b%d0%b9-%d0%bf%d0%be%d1%81%d1%82/">
           <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ЛКМ">
         </form>
       </article>
       <article class="productInfo"> <!-- Each individual product description -->
         <div><img alt="sample" src="<?= get_template_directory_uri(  ) . '/assets/images/ivent2.jpeg' ?>"></div>
         <p class="price"><strong>Танцующий лес</strong></p>
         <p class="price"><strong>50$</strong></p> 
         <p class="productContent">Сосновый лес, находящийся на Куршской косе, был высажен 60 лет назад для того, чтобы укрепить пески.

         <em>Координаты на карте: 55.1797754504411. В 10:00.</em>
         <em>Экскурсия: Куршская коса для детей и взрослых.</em>
         </p>
         <form action="http://localhost/2023/10/03/%d0%b2%d1%82%d0%be%d1%80%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82/">
           <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ЛКМ">
         </form>
       </article>
     </div>
       
     <div class="productRow"> 
       <!-- Each product row contains info of 3 elements -->
       <article class="productInfo"> <!-- Each individual product description -->
         <div><img alt="sample" src="<?= get_template_directory_uri(  ) . '/assets/images/ivent3.jpg' ?>"></div>
         <p class="price"><strong>Замок "Нессельбек</strong></p>
         <p class="price"><strong>50$</strong></p> 
         <p class="productContent">Нессельбек — это средневековый рыцарский замок, воссозданный по старинным чертежам в 2011 году.

         <em>Адрес: пос. Орловка, пер. Центральный, 7. В 10:00.</em>
         <em>Экскурсия: Калининград сквозь столетия.</em>
         </p>
         <form action="http://localhost/2023/10/03/%d1%82%d1%80%d0%b5%d1%82%d0%b8%d0%b9-%d0%bf%d0%be%d1%81%d1%82/">
           <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ЛКМ">
         </form>
       </article>
       <article class="productInfo"> <!-- Each individual product description -->
         <div><img alt="sample" src="<?= get_template_directory_uri(  ) . '/assets/images/ivent4.jpg' ?>"></div>
         <p class="price"><strong>Рыбная деревня</strong></p>
         <p class="price"><strong>50$</strong></p> 
         <p class="productContent">Рыбная деревня в Калининграде лишь подражает архитектуре Кенигсберга, ведь построена она около 10 лет назад.

         <em>Адрес: г. Калининград, ул. Октябрьская, 2а. В 10:00.</em>
         <em>Экскурсия: Полюбить Калининград за 3 часа.</em>
         </p>
         <form action="http://localhost/2023/10/03/%d1%87%d0%b5%d1%82%d0%b2%d0%b5%d1%80%d1%82%d1%8b%d0%b9-%d0%bf%d0%be%d1%81%d1%82/">
           <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ЛКМ">
         </form>
       </article>
     </div>
       
     <div class="productRow">
     <article class="productInfo"> <!-- Each individual product description -->
         <div><img alt="sample" src="<?= get_template_directory_uri(  ) . '/assets/images/ivent5.jpg' ?>"></div>
         <p class="price"><strong>Фридландские</strong></p>
         <p class="price"><strong>50$</strong></p> 
         <p class="productContent">Фридландские ворота середины XIX века стали последними из семи ворот Кенигсберга.

         <em>Адрес: г. Калининград, ул. Дзержинского, 30. В 10:00.</em>
         <em>Экскурсия: Подземный Кёнигсберг: легенды старого города.</em>
         </p>
         <form action="http://localhost/2023/10/03/%d0%bf%d1%8f%d1%82%d1%8b%d0%b9-%d0%bf%d0%be%d1%81%d1%82/">
           <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ЛКМ">
         </form>
       </article>
       <article class="productInfo"> <!-- Each individual product description -->
         <div><img alt="sample" src="<?= get_template_directory_uri(  ) . '/assets/images/ivent6.jpg' ?>"></div>
         <p class="price"><strong>Кирха Розенау</strong></p>
         <p class="price"><strong>50$</strong></p> 
         <p class="productContent">Кирху Розенау начали строить в июне 1914, но начавшаяся Первая мировая война заставила.

         <em>Адрес: г. Калининград, ул. Клары Назаровой, 24. В 10:00.</em>
         <em>Экскурсия: Сказки старого Калининграда.</em>
         </p>
         <form action="http://localhost/2023/10/03/%d1%88%d0%b5%d1%81%d1%82%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82/">
           <input type="submit" name="button" value="Подробнее"  class="buyButton" title="Нажмите ЛКМ">
         </form>
       </article>
    </div>
</section>

<?php
    get_footer();
?>