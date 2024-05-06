<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?= the_title() ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/montserrat:n4:default;source-sans-pro:n2:default.js" type="text/javascript"></script>
<?php 
    wp_head(  );
?>
</head>

<body>
<div id="mainWrapper">
 
  <header class="header"> 
    <div id="logo"><?php the_custom_logo() ?> </div>
      <?php wp_nav_menu( ['menu' => 'Main'] )?>
    <div id="headerLinks"><a href="http://localhost/зарегистрироваться/" title="Нажмите ПКМ">Зарегистрироваться/Войти</a><a href="#" title="Корзина">Корзина</a></div>
  </header>