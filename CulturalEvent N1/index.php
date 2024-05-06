<?php
    get_header();
?>
  
  <div id="content">
    <section class="sidebar"> 
      <!-- This adds a sidebar with 1 searchbox,2 menusets, each with 4 links -->
      <input type="text"  id="search" value="Поиск">
      <label for="customRange1">Фильтр</label>
      <input type="range" class="custom-range" min="1" max="30" value="3" id="customRange1" oninput="this.nextElementSibling.value=this.value">
      <output>3</output>
      <div id="menubar">
        <nav class="menu">
          <h2><!-- Title for menuset 1 -->Экскурсии </h2>
          <hr>
          <ul>
            <!-- List of links under menuset 1 -->
            <li>
                <div class="container__excursion">
                    <img src="<?= bloginfo( 'template_url' )?>/assets/images/ivent1.jpg">
                    <h2><strong>ГУМ</strong></h2>
                    <p>На месте ГУМа в XIX веке располагались целые ряды...</p>
                    <form action="http://localhost/%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f/">
                        <input type="submit" class="buyButton" value="Показать">
                    </form>
                </div>

            </li>
            <li>
                <div class="container__excursion">
                    <img src="<?= bloginfo( 'template_url' )?>/assets/images/ivent1.jpg" alt="">
                    <h2><strong>ГУМ</strong></h2>
                    <p>На месте ГУМа в XIX веке располагались целые ряды...</p>
                    <form action="http://localhost/%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f/">
                        <input type="submit" class="buyButton" value="Показать">
                    </form>
                </div>
            </li>
            <li class="notimp">
                <div class="container__excursion">
                    <img src="<?= bloginfo( 'template_url' )?>/assets/images/ivent1.jpg" alt="">
                    <h2><strong>ГУМ</strong></h2>
                    <p>На месте ГУМа в XIX веке располагались целые ряды...</p>
                    <form action="http://localhost/%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f/">
                        <input type="submit" class="buyButton" value="Показать">
                    </form>
                </div>
            </li>
          </ul>
        </nav>
        <nav class="menu">
          <h2><strong>Ближайшие</strong></h2>
          <!-- Title for menuset 2 -->
          <hr>
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      
      
      <div class="card">
        
        <div class="card-body">
          <h5 class="card-title">Красная площадь</h5>
          <p class="card-text">Согласно одной из версий, к концу XV века возле Кремля скопилось много деревянных построек.</p>
          <a href="http://localhost/2023/10/06/%d1%81%d0%b5%d0%b4%d1%8c%d0%bc%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82/" class="btn btn-primary" style="background-color: rgba(146,146,146,1.00); border: none;">Подробнее</a>
        </div>
      </div>
      
    </div>
    <div class="carousel-item">
      <div class="card">
        
        <div class="card-body">
          <h5 class="card-title">Мавзолей</h5>
          <p class="card-text">После смерти 21 января 1924 года, тело Владимира Ленина забальзамировали, а на Красной площади.</p>
          <a href="http://localhost/2023/10/06/%d0%b2%d0%be%d1%81%d1%8c%d0%bc%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82/" class="btn btn-primary" style="background-color: rgba(146,146,146,1.00); border: none;">Подробнее</a>
        </div>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        </nav>
        <img src="<?= bloginfo( 'template_url' )?>/assets/images/map-stupino.jpg" alt="">
      </div>
    </section>
	  
    <section class="mainContent">
		
		 <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="#">Школьник</a></li>
      <li class="breadcrumb-item"><a href="#">Педагог</a></li>
      <li class="breadcrumb-item active" aria-current="page"><a href="">Студент</a></li>
    </ol>
  </nav>
	  <div class="jumbotron">
      <?php echo do_shortcode('[metaslider id="30"]'); ?>
  </div>
  <?php
      $database = mysqli_connect("localhost", "Cultural_event", "12345", "cart");
      $sql_main = "SELECT * FROM cart_database";
      $query = mysqli_query($database, $sql_main);
  ?>
      <div class="productRow"><!-- Each product row contains info of 3 elements -->
        <article class="productInfo"><!-- Each individual product description -->
          <div><img alt="sample" src="<?= bloginfo( 'template_url' )?>/assets/images/ivent1.jpg"></div>
          <p class="price"><strong>Куршская коса</strong></p>
          <p class="price">50$</p>
          <p class="productContent">Куршская коса, по мнению большинства туристов, считается главной достопримечательностью Калининграда.

          <em>Адрес: пос. Рыбачий, ул. Лесная, 7. В 10:00.</em>
          <em>Экскурсия: На Куршскую косу через форты и замки.</em>
          </p>
          <a href="http://localhost?action=add&id=1" class="buyButton" title="Нажмите ПКМ">Записаться</a>
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
          <a href="http://localhost?action=add&id=2" class="buyButton" title="Нажмите ПКМ">Записаться</a>
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
          <a href="http://localhost?action=add&id=3" class="buyButton" title="Нажмите ПКМ">Записаться</a>
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
          <a href="http://localhost?action=add&id=4" class="buyButton" title="Нажмите ПКМ">Записаться</a>
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
          <a href="http://localhost?action=add&id=5" class="buyButton" title="Нажмите ПКМ">Записаться</a>
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
          <a href="http://localhost?action=add&id=6" class="buyButton" title="Нажмите ПКМ">Записаться</a>
          <form action="http://localhost/2023/10/13/шестой-пост/">
              <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ПКМ">
          </form>
        </article>
      </div>
      <?php
      if (isset($_GET['action']) && $_GET['action'] == 'add') {
            $id = intval($_GET['id']);
            $sql_add = "UPDATE cart_database SET incart = true, quantity = 1 WHERE id_product = $id";
            mysqli_query($database, $sql_add);
      }
    ?>

    <h1>Объявления</h1>
    <div class="container__ads-main">
    <div class="container__ads">
        <h2>Детская программа</h2>
        <p>Музей Москвы 9 сентября в 19:00 в фойе корпуса № 1<details>
            <summary>ПОКАЗАТЬ</summary>
            проведет квиз «Узнавая Москву». Чтобы принять участие в игре, нужно заранее собрать команду и зарегистрироваться на сайте музея. Во время соревнования участники ответят на вопросы о популярных и исторических местах столицы, знаменитых личностях и событиях, связанных с ними. Три команды-победителя получат призы. Источник — kudamoscow.ru, лучшие события Москвы.
        </details></p>
        <button class="buyButton">ПОКАЗАТЬ</button>
        </div>
    <div class="container__ads">
        <h2>Музей-заповедник</h2>
        <p>Музей Москвы 9 сентября в 19:00 в фойе корпуса № 1<details>
            <summary>ПОКАЗАТЬ</summary>
            проведет квиз «Узнавая Москву». Чтобы принять участие в игре, нужно заранее собрать команду и зарегистрироваться на сайте музея. Во время соревнования участники ответят на вопросы о популярных и исторических местах столицы, знаменитых личностях и событиях, связанных с ними. Три команды-победителя получат призы. Источник — kudamoscow.ru, лучшие события Москвы.
        </details></p>
        <button class="buyButton">ПОКАЗАТЬ</button>
    </div>
    <div class="container__ads">
        <h2>Музей Москвы</h2>
        <p>Музей Москвы 9 сентября в 19:00 в фойе корпуса № 1<details>
            <summary>ПОКАЗАТЬ</summary>
            проведет квиз «Узнавая Москву». Чтобы принять участие в игре, нужно заранее собрать команду и зарегистрироваться на сайте музея. Во время соревнования участники ответят на вопросы о популярных и исторических местах столицы, знаменитых личностях и событиях, связанных с ними. Три команды-победителя получат призы. Источник — kudamoscow.ru, лучшие события Москвы.
        </details></p>
        <button class="buyButton">ПОКАЗАТЬ</button>
    </div>
    
    
    </div>
    </section>
  </div>
	
  
<?php
    get_footer( );
?>
