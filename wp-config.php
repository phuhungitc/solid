<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'comma_solid');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ',4[%$yaXOj#CR.02D,K&bzA{E0(/wBbsh!vEt@fK78E!!&GA%D;itNrHSCErkEr}');
define('SECURE_AUTH_KEY',  'Yxn5$NWA$xyi>/9WTGZ@}RQjvYo;G}<Ov@tyO$%p*#IFGpI9@|}Uo 4>>0}O!@j%');
define('LOGGED_IN_KEY',    'Uo7a[d,e7zMnbceiVEw/21CM=tF<F<0vPZYB& BEAu/HMGG{{8.e!G*70LG<wQlw');
define('NONCE_KEY',        'g=>z6s]69t` d(2lt?+*:V2tGCQ{6U>U{caTvDG!ny(Z@hXNX^w26p~FvT??D~fu');
define('AUTH_SALT',        ' OqR^*-F%v]A&~Ae;#<,7OfQ)VW)h*o 5Rz#q:k9 5NG0a`<D i+PH2 q_8OW=^9');
define('SECURE_AUTH_SALT', '~Dw;iLYK`;H4RT|LdcrD:3:lNs!T4#Z]Hh/x$tEpT[IRQ-pC[0*;_?E_!n/CRgs$');
define('LOGGED_IN_SALT',   'VmIrNX-v{W+2|II>-1KZF!eM*,yGdsi5qf]cLb5exx71eJN)3 Qk/yLYDh.d=3L>');
define('NONCE_SALT',       'b~<Lp>Kv12AR?]|),g?Yto_IX1,eE&Qj[$;U|:DIpQVo8@?voUn+_(=F%mHJxLp,');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'cms_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/**** SECURITY WP
 * https://codex.wordpress.org/Editing_wp-config.php
 * Add before require_once(ABSPATH . 'wp-settings.php');
 ****/
define('FS_METHOD','direct'); // define('FS_METHOD', 'ftpext' );
define('FS_CHMOD_DIR', ( 0755 & ~ umask() ) );
define('FS_CHMOD_FILE', ( 0644 & ~ umask() ) );
define('DISALLOW_FILE_EDIT', true);
//define('DISALLOW_FILE_MODS', true);
define('WP_POST_REVISIONS', 10); // define('WP_POST_REVISIONS', false);
// define('DISABLE_WP_CRON', true );
define( 'AUTOMATIC_UPDATER_DISABLED', true );
if ( WP_DEBUG ) {
    define( 'WP_DEBUG_LOG', true );
    define( 'WP_DEBUG_DISPLAY', true );
}
define('OTGS_DISABLE_AUTO_UPDATES', true);
define('EMPTY_TRASH_DAYS', 30 ); // 30 days
define('WP_AUTO_UPDATE_CORE', false );
define('EM_WMPL_FORCE_RECURRENCES', true); // Only uncomment when you are using WPML plugin.

define('WP_SITEURL', 'http://' . $_SERVER['SERVER_NAME']);
define('WP_HOME', 'http://' . $_SERVER['SERVER_NAME']);

define('WP_CONTENT_FOLDERNAME', 'apps');
define('WP_CONTENT_DIR', ABSPATH . WP_CONTENT_FOLDERNAME) ;
define('WP_CONTENT_URL', WP_SITEURL . '/' . WP_CONTENT_FOLDERNAME);
define('WP_TEMP_DIR', WP_CONTENT_DIR .  '/uploads');

define('CUSTOM_USER_TABLE', $table_prefix.'custom_users' );
define('CUSTOM_USER_META_TABLE', $table_prefix.'custom_usermeta' );

// define('COOKIEPATH', preg_replace( '|https?://[^/]+|i', '', get_option( 'home' ) . '/' ) );
// define('SITECOOKIEPATH', preg_replace( '|https?://[^/]+|i', '', get_option( 'siteurl' ) . '/' ) );
// define('PLUGINS_COOKIE_PATH', preg_replace( '|https?://[^/]+|i', '', WP_PLUGIN_URL ) );
// define('TEMPLATEPATH', get_template_directory() );
// define('STYLESHEETPATH', get_stylesheet_directory() );
// define('ADMIN_COOKIE_PATH', SITECOOKIEPATH . 'wp-admin' ); // define('ADMIN_COOKIE_PATH', SITECOOKIEPATH . 'apps-admin' );
define('USER_COOKIE', 'appsuser_' . md5(WP_SITEURL));
define('PASS_COOKIE', 'appspass_' . md5(WP_SITEURL));
define('AUTH_COOKIE', 'apps_' . md5(WP_SITEURL));
define('SECURE_AUTH_COOKIE', 'apps_sec_' . md5(WP_SITEURL));
define('LOGGED_IN_COOKIE', 'apps_logged_in_' . md5(WP_SITEURL));
define('TEST_COOKIE', 'apps_test_cookie_' . md5(WP_SITEURL));
/* SECURITY WP */

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
