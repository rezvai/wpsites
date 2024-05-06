<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки базы данных
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры базы данных: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'testtheme' );

/** Имя пользователя базы данных */
define( 'DB_USER', 'root' );

/** Пароль к базе данных */
define( 'DB_PASSWORD', '' );

/** Имя сервера базы данных */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '-:L6kEOujR_l#%TDMZ?jFFi?W[qKHp.&}UEld:>%e8j;@z.0;7_&67Zf[E$~{INY' );
define( 'SECURE_AUTH_KEY',  '4|JxEqLlep6M*0tk|_<,5Mg@re.n@nrLix w{BT$[C{n)zsET04H#CjD!H^.+mc:' );
define( 'LOGGED_IN_KEY',    ']GsSMmtc+B?|$@v_`>QadYqi6rj9MOo,4-QKx~FN2fx}g]@CN`ejmO@u/Qa #tr^' );
define( 'NONCE_KEY',        ']9Vv}oz0w?)zUm<!.x%[d1[o7`Ey+:>[J`&`gFM+KGJH8_9>}(MC5/HI>8(e|-!E' );
define( 'AUTH_SALT',        '.BkE)6KA.-SPK(`>a1ZA(6VHPwzO.P&X7*w1Sq!$:/hPuxc/W>Fc/S?yTA .nh~%' );
define( 'SECURE_AUTH_SALT', ':FP3VE[)f9%,%wGE9k|~Eyu:&UZeQjOcsMfbw9V8lB1vFKhSBi#I>oquE;KJ0L>B' );
define( 'LOGGED_IN_SALT',   '57`RPA;el$}+OhvExU0&M2&Nv|s}+M#A(X&Fvx)?<IwV4jnJwlwd9@9__r>zGO6B' );
define( 'NONCE_SALT',       'ONde}qM;dcr$YN6zneg|7^`T#hN{,VUBs[LT)Oo/-Y617!)!em:L=ic5j^duBgW3' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
