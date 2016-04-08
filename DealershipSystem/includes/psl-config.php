<?php
/**
 * These are the database login details
 */  
if (!defined('HOST')) define("HOST", "127.0.0.1");    // The host you want to connect to.
if (!defined('USER')) define("USER", "sec_user1");     // The database username. 
if (!defined('PASSWORD')) define("PASSWORD", "Password123!");         // The database password. 
if (!defined('DATABASE')) define("DATABASE", "dealership_system");    // The database name.
 
define("CAN_REGISTER", "any");
define("DEFAULT_ROLE", "member");
 
define("SECURE", FALSE);    // FOR DEVELOPMENT ONLY!!!!
?>
