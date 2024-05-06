<?php
    get_header();
?>
  <div id="content">
    <section class="sidebar"> 
      <!-- This adds a sidebar with 1 searchbox,2 menusets, each with 4 links -->
      <input type="text"  id="search" value="Поиск"  title="Нажмите ЛКМ">      
      <label for="customRange1" class="form-label"><strong>Фильтр</strong></label>
      <input type="range" class="form-range" id="customRange1" title="Перетащите ползунок" value="3" min="1" max="30" oninput="this.nextElementSibling.value = this.value">
      <output><strong>3</strong></output>
      <div id="menubar">
        <nav class="menu">
          <h2><strong>Экскурсии</strong></h2>
          <hr>
          <ul>
            <!-- List of links under menuset 1 -->
            <li>
                <div class="container__excursion">
                  <img src="<?= get_template_directory_uri(  ) . '/assets/images/excursion1.jpg'?>">
                  <p><strong>Турниры</strong>
                  <br>
                  9 сентября с 12:00 до 19:00...
                  </p>
                  <form action="http://localhost/%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f/">
                      <input type="submit" value="Показать" class="button__excursion" title="Нажмите ЛКМ">
                  </form>
                </div>
          </li>
            <li>
            <div class="container__excursion">
                  <img src="<?= get_template_directory_uri(  ) . '/assets/images/excursion2.jpg'?>">
                  <p><strong>Турниры</strong>
                  <br>
                  9 сентября с 12:00 до 19:00...
                  </p>
                  <form action="http://localhost/%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f/">
                      <input type="submit" value="Показать" class="button__excursion"  title="Нажмите ЛКМ">
                  </form>
                </div>
            </li>
            <li>
            <div class="container__excursion">
                  <img src="<?= get_template_directory_uri(  ) . '/assets/images/excursion3.jpeg'?>" alt="">
                  <p><strong>Турниры</strong>
                  <br>
                  9 сентября с 12:00 до 19:00...
                  </p>
                  <form action="http://localhost/%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f/">
                      <input type="submit" value="Показать" class="button__excursion" title="Нажмите ЛКМ">
                  </form>
                </div>
            </li>
            <li class="notimp">
            <div class="container__excursion">
                  <img src="<?= get_template_directory_uri(  ) . '/assets/images/excursion4.jpg'?>" alt="">
                  <p><strong>Турниры</strong>
                  <br>
                  9 сентября с 12:00 до 19:00...
                  </p>
                  <form action="http://localhost/%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f/">
                      <input type="submit" value="Показать" class="button__excursion" title="Нажмите ЛКМ">
                  </form> 
                </div>
            </li>
          </ul>
        </nav>
        <nav class="menu">
          <h2>Ближайшие</h2>
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
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        </nav>
        <img class="map__sidebar" src="<?php bloginfo('template_url')?>/assets/images/Stupino_map.jpg" alt="">
      </div>
    </section>

    <section class="mainContent">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#" title="Нажмите ЛКМ">Школьник</a></li>
          <li class="breadcrumb-item"><a href="#" title="Нажмите ЛКМ">Педагог</a></li>
          <li class="breadcrumb-item"  aria-current="page" title="Нажмите ЛКМ"><a href="#">Студент</a></li>
        </ol>
      </nav>
      <div class="jumbotron">
        <?php echo do_shortcode('[metaslider id="32"]'); ?>
      </div>
      <?php $database = mysqli_connect("localhost", "Cultural_event", "12345", "cart"); ?>
      <h2 class="product__row-title">Мероприятия</h2>
      <hr class="product__row-hr">
      <div class="productRow"><!-- Each product row contains info of 3 elements -->
      <article class="productInfo"> <!-- Each individual product description -->
          <div><img alt="sample" src="<?= get_template_directory_uri(  ) . '/assets/images/ivent1.jpeg' ?>"></div>
          <p class="price"><strong>Куршская коса</strong></p>
          <p class="price"><strong>50$</strong></p> 
          <p class="productContent">Куршская коса, по мнению большинства туристов, считается главной достопримечательностью.

          <em>Адрес: пос. Рыбачий, ул. Лесная, 7. В 10:00.</em>
          <em>Экскурсия: На Куршскую косу через форты и замки.</em> 
          </p>
          <a href="http://localhost?action=add&id=1" class="buyButton">Записаться</a>
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
          <a href="http://localhost?action=add&id=2" class="buyButton">Записаться</a>
          <form action="http://localhost/2023/10/03/%d0%b2%d1%82%d0%be%d1%80%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82/">
            <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ЛКМ">
          </form>
          
        </article>
      </div>
      <h2 class="product__row-title">Концерты</h2>
      <hr class="product__row-hr">
      <div class="productRow"> 
        <!-- Each product row contains info of 3 elements -->        
        <article class="productInfo"> <!-- Each individual product description -->
          <div><img alt="sample" src="<?= get_template_directory_uri(  ) . '/assets/images/ivent3.jpg' ?>"></div>
          <p class="price"><strong>Замок Нессельбек</strong></p>
          <p class="price"><strong>50$</strong></p> 
          <p class="productContent">Нессельбек — это средневековый рыцарский замок, воссозданный по старинным чертежам в 2011 году.

          <em>Адрес: пос. Орловка, пер. Центральный, 7. В 10:00.</em>
          <em>Экскурсия: Калининград сквозь столетия.</em>
          </p>
          <a href="http://localhost?action=add&id=3" class="buyButton">Записаться</a>
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
          <a href="http://localhost?action=add&id=4" class="buyButton">Записаться</a>
          <form action="http://localhost/2023/10/03/%d1%87%d0%b5%d1%82%d0%b2%d0%b5%d1%80%d1%82%d1%8b%d0%b9-%d0%bf%d0%be%d1%81%d1%82/">
            <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ЛКМ">
          </form>
        </article>
      </div>
      <h2 class="product__row-title">Праздники</h2>
      <hr class="product__row-hr">
      <div class="productRow">
      <article class="productInfo"> <!-- Each individual product description -->
          <div><img alt="sample" src="<?= get_template_directory_uri(  ) . '/assets/images/ivent5.jpg' ?>"></div>
          <p class="price"><strong>Фридландские</strong></p>
          <p class="price"><strong>50$</strong></p> 
          <p class="productContent">Фридландские ворота середины XIX века стали последними из семи ворот Кенигсберга.

          <em>Адрес: г. Калининград, ул. Дзержинского, 30. В 10:00.</em>
          <em>Экскурсия: Подземный Кёнигсберг: легенды старого города.</em>
          </p>
          <a href="http://localhost?action=add&id=5" class="buyButton">Записаться</a>
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
          <a href="http://localhost?action=add&id=6" class="buyButton">Записаться</a>
          <form action="http://localhost/2023/10/03/%d1%88%d0%b5%d1%81%d1%82%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82/">
            <input type="submit" name="button" value="Подробнее"  class="buyButton" title="Нажмите ЛКМ">
          </form>
        </article>
      </div>
      <?php        
       if (isset($_GET['action']) && $_GET['action'] == 'add') {
          $id = intval($_GET['id']);
          $sql_add = "UPDATE cart_first SET quantity = 1, incart = true WHERE id_product = $id";
          mysqli_query($database, $sql_add);
        } ?>

      <div class="container__advertise">
        <h1>Объявления</h1>
          <div class="advertises">
            <div class="advertise">
              <h2><strong>Фестиваль «Цветочный джем» 2023 году</strong></h2>
              <p>С 20 июля по 10 сентября 2023 года в Москве пройдет фестиваль «Цветочный джем», в рамках которого на центральных площадках.
                <details>
                  <summary>ПОКАЗАТЬ</summary>
                  Каждый представляет собой уникальный ландшафтный проект, разработанный оргкомитетом фестиваля. Кураторами проектов стали ведущие российские ландшафтные дизайнеры и архитекторы — лауреаты конкурса «Цветочный джем» прошлых лет. Источник — kudamoscow.ru, лучшие события Москвы.
                </details>
              </p>
              <input type="submit" value="Показать" class="button__excursion" title="Нажмите ЛКМ">
            </div>
            <div class="advertise">
                <h2><strong>Третьяковская галерея в Лаврушинском</strong></h2>
                <p>Третьяковская галерея — самый известный художественный музей в столице, основанный купцом Павлом Третьяковым в 1856 г.
                  <details>
                    <summary>ПОКАЗАТЬ</summary>
                    Это крупное государственное учреждение культуры, в состав которого входят несколько музеев, главным из которых остается музейный комплекс в Лаврушинском переулке. Крупнейшее в мире собрание русской живописи, графики и скульптуры выросло из частных коллекций братьев Павла и Сергея Третьяковых. Источник — kudamoscow.ru, лучшие события Москвы.
                  </details>
                </p>
                <input type="submit" value="Показать" class="button__excursion" title="Нажмите ЛКМ">
            </div>
            <div class="advertise">
                <h2><strong>Семейный парк активного отдыха завтра</strong></h2>
                <p>«Мисти Парк» — это огромное пространство с развлечениями на любой вкус, крутыми шоу-программами и семейным рестораном.
                  <details>
                    <summary>ПОКАЗАТЬ</summary>
                    Дети здесь не заскучают целый день, а родители отдохнут от повседневных забот и сэкономят на билете: для взрослых вход в парк бесплатный.
                  </details>
                </p>
                <input type="submit" value="Показать" class="button__excursion" title="Нажмите ЛКМ">
            </div>
        </div>
      </div>
    </section>
  </div>
<?php
    get_footer();
?>

