<?php 
/*
Template Name: Желаю посетить
Template Post Type: page
*/
?>

<?php 
    get_header();
?>

<?php
    $database = mysqli_connect("localhost", "Cultural_event", "12345", "cart");
    $sql_main = "SELECT * FROM cart_database";
    $query = mysqli_query($database, $sql_main);

    while($row = mysqli_fetch_array($query)) {
        if ($row['incart'] != false) {
            ?>
            <div class="productRow"><!-- Each product row contains info of 3 elements -->
        <article class="productInfo"><!-- Each individual product description -->
          <div><img alt="sample" src="<?=bloginfo( 'template_url' ) ?> . <?= $row['img'] ?>"></div>
          <p class="price"><?= $row['name'] ?></p>
          <p class="price"><?= $row['price'] ?></p>
          <p class="productContent"><?= $row['description'] ?></p>
          <p clas="productcontent"><a href="http://localhost/%d0%b6%d0%b5%d0%bb%d0%b0%d1%8e-%d0%bf%d0%be%d1%81%d0%b5%d1%82%d0%b8%d1%82%d1%8c?action=increase&id=<?= $row['id_product']?>">+</a><a href="http://localhost/%d0%b6%d0%b5%d0%bb%d0%b0%d1%8e-%d0%bf%d0%be%d1%81%d0%b5%d1%82%d0%b8%d1%82%d1%8c?action=reduce&id=<?= $row['id_product']?>">-</a><?= $row['quantity'] ?></p>
          <br><a href="http://localhost/%d0%b6%d0%b5%d0%bb%d0%b0%d1%8e-%d0%bf%d0%be%d1%81%d0%b5%d1%82%d0%b8%d1%82%d1%8c/?action=remove&id=<?= $row['id_product'] ?>" class="buyButton" title="Нажмите ПКМ">Удалить</a>
          <form action="http://localhost/%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f/">
              <input type="submit" name="button" value="Подробнее" class="buyButton" title="Нажмите ПКМ">
          </form>
        </article>
      </div>
            <?php
        }
    }

echo '<form action="' . $_SERVER['REQUEST_URI'] . '">
<input type="submit" value="Подтвердить" class="buyButton">
</form>';
if (isset($_GET['action']) && $_GET['action'] == 'remove') {
    $id = intval($_GET['id']);
    $sql_remove = "UPDATE cart_database SET incart = false, quantity = 0 WHERE id_product = $id";
    mysqli_query($database, $sql_remove);
}
if (isset($_GET['action']) && $_GET['action'] == 'increase') {
    $id = intval($_GET['id']);
    $sql_increase = "UPDATE cart_database SET quantity = `quantity` + 1 WHERE id_product = $id";
    mysqli_query($database, $sql_increase);
}
if (isset($_GET['action']) && $_GET['action'] == 'reduce') {
    $id = intval($_GET['id']);
    $sql_reduce = "UPDATE cart_database SET quantity = `quantity` - 1 WHERE id_product = $id";
    mysqli_query($database, $sql_reduce);
}
?>

<?php 

    get_footer();
?>

