<?php

use classes\Garden;
use classes\Db;
use classes\DbFilling;
use classes\ArrayFilling;

require_once __DIR__ . '\helpers\funcs.php';

spl_autoload_register('autoloader');

if (phpversion() < '8.1') {
	die('Your version php lower 8.1');
}

// $garden = new Garden(new ArrayFilling());
$garden = new Garden(new DbFilling());
$data = picker($garden);

include __DIR__ . ('\views\info_fruits.php');
