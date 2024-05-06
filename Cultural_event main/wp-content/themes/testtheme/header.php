<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php the_title(); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.-->
<script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/montserrat:n4:default;source-sans-pro:n2:default.js" type="text/javascript"></script>
<?php
    wp_head();
?>
</head>

<body>
<div id="mainWrapper">
 
  <header style="display: flex"> 
    <!-- This is the header content. It contains Logo and links -->
    <div id="logo" title="Нажмите ЛКМ"><?php the_custom_logo(); ?></div>
    <div class="header__menu-main">
      <?php wp_nav_menu( ['menu' => 'Main'] ); ?>
    </div>
    <div id="headerLinks">
    <a href="http://localhost/%d0%b7%d0%b0%d1%80%d0%b5%d0%b3%d0%b8%d1%81%d1%82%d1%80%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d1%82%d1%8c%d1%81%d1%8f/" title="Login/Register">Войти/Регистрация</a>
    <a href="http://localhost/404-2" title="Корзина">Корзина</a>
    </div>
  </header>
  