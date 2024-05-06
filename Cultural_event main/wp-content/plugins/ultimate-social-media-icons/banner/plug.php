<?php
/* 
plugin name: plugin_form
name: Kostya
description: плагин
*/

function register_page(){
	
	echo '
	<style>
		.form-container{
			max-width: 35%;
			max-height: 450px;
			display: flex;
			flex-direction: row;
			flex-wrap: wrap;
			border: 2px solid red;
			padding: 20px;
			background-color: grey;
		}
		.form-container *{	
			margin-top: 15px;
			width:250px;
		}
		.form-control{
			background-color: blue;
			color: white;
		}
		.form-control::placeholder{
			color:white;
		}
		.form-control-btn{
			background-color: red;
			color:white;
			margin-left: 125px;
		}
	</style>
	<form action="http://BeautifulRussia/wp-content/plugins/plugin_form/functions/register_up.php" method="post">
	<div class="form-container">
	<div class="col">
		<label>Имя </label>
		<input type="text" placeholder="Введите имя" name="username" class="form-control">
	</div>
	<div class="col">
		<label>Фото</label>
		<input type="file" name="avatar" class="form-control">
	</div>
	<div class="col">
		<label>Логин</label>
		<input type="text" placeholder="Введите логин" name="login" class="form-control">
	</div>
	<div class="col">
		<label>Пароль</label>
		<input type="password" placeholder="Введите пароль" name="password" class="form-control">
	</div>
	<div class="col">
			<label>Почта</label>
			<input type="mail" placeholder="Введите почту" name="mail" class="form-control">
	</div>	
	<div class="col">
		<label>Подтверждение пароля</label>
		<input type="password" placeholder="повторите пароль" name="password_confirm" class="form-control">
	</div>
	<div class="col">
		<button type="submit" class="form-control-btn">Зарегистрироваться</button>
		<a href="">Войти</a>
	</div>
	</div>
	</form>
	';
	
	if(isset($_SESSION['msg'])){
		echo '<div>' . $_SESSION['msg'] . '</div';
		
		unset($_SESSION['msg']);
	}
}
	add_shortcode('register_page', 'register_page');


function auth_page(){
echo '
<style>
		.form-container{
			max-width: 35%;
			max-height: 450px;
			display: flex;
			flex-direction: row;
			flex-wrap: wrap;
			border: 2px solid red;
			padding: 20px;
			background-color: grey;
		}
		.form-container *{	
			margin-top: 15px;
			width:250px;
		}
		.form-control{
			background-color: blue;
			color: white;
		}
		.form-control::placeholder{
		color:white;
		}
		.form-control-btn{
			background-color: red;
			color:white;
			margin-left: 125px;
		}
		.auth{
		color: white;
		margin-left: 150px;
		}
	</style>
	
<form action="http://BeautifulRussia/wp-content/plugins/plugin_form/functions/auth_up.php" method="post">
<div class="form-container" >

<label>Логин</label>
<input type="text" placeholder="Введит логин" name="login" class="form-control">

<label>Пароль</label>
<input type="password" placeholder="Введит пароль" name="password" class="form-control" >';

	if(isset($_SESSION['msg'])){
		echo '<div>' . $_SESSION['msg'] . '</div';
		
		unset($_SESSION['msg']);
	}
	
	echo'
	<button type="submit" class="form-control-btn">Войти</button>
	<a class="auth" href="http://BeautifulRussia/">Зарегистрироваться</a>
	
	</div>

</form>';
	
}
add_shortcode('auth_page', 'auth_page');

<?php
$connect = mysqli_connect('localhost','root','','gta');


<?php session_start();

require 'connect.php';

$username= $_POST['username'];
$login= $_POST['login'];
$mail= $_POST['mail'];
$password= $_POST['password'];
$password_confirm= $_POST['password_confirm'];

if($password != $password_confirm){
	$_SESSION['msg'] = "пароли не совпадают";
	header("Location: http://BeautifilRussia/%d1%80%d0%b5%d0%b3%d0%b8%d1%81%d1%82%d1%80%d0%b0%d1%86%d0%b8%d1%8f-%d0%bd%d0%b0-%d1%81%d0%b0%d0%b9%d1%82/");
	
}
else{
$user = mysqli_query($connect,"INSERT INTO `users` (`id`, `username`, `login`, `mail`, `avatar`, `password`) VALUES (NULL, '$username', '$login', '$mail', NULL, '$password')");

	header("Location: http://beautifulrussia/вход/");
		  
}

<?php
session_start();
require 'connect.php';

	$login= $_POST['login'];
	$password= $_POST['password'];

$user = mysqli_query($connect,"SELECT * FROM `users` WHERE `login` = '$login' AND `password` = '$password'");

if(mysqli_num_rows($user)==1){
	$user = mysqli_fetch_assoc($user);
	$_SESSION['user'] = [
		'id' => $user['id'],
		'username' => $user['username'],
		'login' => $user['login'],
		'email' => $user['email'],
		'password' => $user['password'],
		];
	header("Location: http://BeautifulRussia/25-2/");

	
} else{
	$_SESSION['msg'] = "Неправильный логин или пароль";
		header("Location: http://BeautifulRussia/%d0%b2%d1%85%d0%be%d0%b4/");