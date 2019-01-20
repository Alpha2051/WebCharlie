<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'carthagina');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '2xhY2.w#X--6GLZkohv+`CCYgnW5-3=.A0Use-[7/=f%%=mj#//Nz8tu~?rN51Uw');
define('SECURE_AUTH_KEY',  '9)pspcs6:^Ix>f3$D2H-^&G;3}iCFd_@= .b5zD} TlC4S#ft(X?,Hq?rZ!EP`E=');
define('LOGGED_IN_KEY',    ':o>8N]fj?o)L#G!EC*Au*-d0|z@ItS:YV)VYEsj1JY6qjG|p}P1+;z45:dk{nlZ`');
define('NONCE_KEY',        '4V9i&, L#ZDteSiWUV{;$hm,{-)rANp.[%gdsLma~z^pc(o-4~~f ]6jL$lKu+H=');
define('AUTH_SALT',        'uhlRCd#mqM<k8Ed)i9| ,udns bp^&s9c5*?BZZZq[YW/N&vWE*,%4UUpYl bg9_');
define('SECURE_AUTH_SALT', '@fY[lQ<_VCJE|}E&$mN[Oj7N&gFYn4dgJ5T`yu$o Gm/pPei4{M,B$vRaSJu!@f^');
define('LOGGED_IN_SALT',   '>LPG?S=>TE%ji*@A@>l2Yl);XU GE[#5jLc;1zQ+WNn9}= pYDlJT6?Yqd:dL6t:');
define('NONCE_SALT',       'Jmu3ntVfG2`;EGMTsKi`O>)hnfQ4PR%NaKgZR7k xEGF#rO[ino|=}I.fO}E0^|P');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_carthagina';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');