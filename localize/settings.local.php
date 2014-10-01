<?php

$databases = array (
  'default' =>
    array (
      'default' =>
        array (
          'database' => 'drupal',
          'username' => 'admin',
          'password' => getenv('MYSQL_ENV_MYSQL_PASS'),
          'host' => getenv('MYSQL_PORT_3306_TCP_ADDR'),
          'port' => getenv('MYSQL_PORT_3306_TCP_PORT'),
          'driver' => 'mysql',
          'prefix' => '',
        ),
    ),
);
