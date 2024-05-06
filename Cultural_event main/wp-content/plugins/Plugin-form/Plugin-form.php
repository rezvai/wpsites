<style>
    .plugin_form_forma {
        margin-bottom: 125px;
        margin-top: 125px;
    }

    .plugin_form_row {
        display: flex;
    }

    .column__form {
        display: flex;
        flex-direction: column;
        margin: 15 auto;
    }

    .container__button {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
</style>

<?php
/*
Plugin Name: Plugin-form
Description: Плагин предоставляет возможности регистрации пользователя
*/
?>

<?php
error_reporting(0);
//Функция создания верстки для формы регистрации
function plugin_form_registration_forma() {
    echo '
<form action="' . $_SERVER['REQUEST_URI'] . '" method="post" class="plugin_form_forma">
    <div class="plugin_form_row">
        <div class="column__form">
            <label for="">Введите имя</label>
            <input type="text" name="username" placeholder="Введитя имя" value="' . (isset($_POST['username']) ? $username : null) . '" required>
        </div>

        <div class="column_form">
            <label for="">Выберите аватар</label>
            <input type="file" name="avatar" style="padding-right: 220px">            
        </div>
    </div>

    <div class="plugin_form_row">
        <div class="column__form">
            <label for="">Введите логин</label>  
            <input type="text" name="login" placeholder="Введите фамилию" value="' . (isset($_POST['login']) ? $login : null) . '" required>
        </div>
        <div class="column__form">
            <label for="">Введите пароль</label>
            <input type="password" name="password" placeholder="Пароль" value="' . (isset($_POST['password']) ? $password : null) . '" requierd>
        </div> 
    </div>

    <div class="plugin_form_row">
        <div class="column__form">
            <label for="">Введите почту</label>
            <input type="email" name="email" placeholder="Введите почту" value="' . (isset($_POST['email']) ? $email : null) . '" required>
        </div>
        <div class="column__form">
            <label for="">Повторите пароль</label>
            <input type="password" name="passwordconfirm" placeholder="Пароль" value="' . (isset($_POST['passwordconfirm']) ? $passwordconfirm : null) . '" required>
        </div>    
    </div>
    <div class="container__button">
        <div class="plugin_form_row">
            <label>Принимаю согласие</label>
            <input type="checkbox" required>
        </div>    
    

        <input type="submit" name="submit" value="Зарегистрироваться">
    </div>
    
    
    
</form>
';
}
function plugin_form_registration_function() {
    $database = mysqli_connect("localhost", "Cultural_event", "12345", "pluginformbd") or die('Не удалось подключться к базе данных.'); //Подключение БД
    if(isset($_POST['submit'])) { //Проверка отправки формы
        //Запись пост переменных
        $username = $_POST['username'];
        $login = $_POST['login'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $passwordconfirm = $_POST['passwordconfirm'];
        if ($password == $passwordconfirm) { //Проверка пароля
            mysqli_query($database, "INSERT INTO registration (username, login, email, password) VALUES ('$username', '$login', '$email', '$password')") or die("Данные не зашли в БД."); //SQL запрос в БД
            //Редирект на страницу входа
            echo '
            <script language="javascript">
                 window.location.replace("http://localhost/login");
            </script>'; 
        }
        else {
            echo "Пароли не совпадают.";
        }  
        }
        
    plugin_form_registration_forma();
}

add_shortcode( "cr_plugin_form_registration", "plugin_form_registration_shortcode" ); //Создание шорткода регистрации
//Функция вызова сессии
function plugin_form_registration_shortcode() {
    ob_start();
    plugin_form_registration_function();
    return ob_get_clean();
}
//Функция создания формы входа
function plugin_form_login_forma() {
    echo '
<form action="' . $_SERVER['REQUEST_URI'] . '" method="post" class="plugin_form_forma">
    <div class="column__form">
        <label for="">Логин</label>
        <input type="text" placeholder="Введите логин" required>
    </div>
    
    <div class="column__form">
        <label for="">Пароль</label>
        <input type="password" placeholder="Введите пароль" required>
    </div>
    
    <div class="container__button">
        <input type="submit" value="Войти"> 
    </div>
</form>    
    ';
}

add_shortcode("cr_plugin_form_login", "plugin_form_login_shortcode");//Создание шорткода входа
//Функция вызова сессии
function plugin_form_login_shortcode() {
    ob_start();
    plugin_form_login_forma();
    return ob_get_clean();
}
?>
