<?php

use classes\Garden;
use classes\Db;
use classes\DbFilling;
use classes\ArrayFilling;

require_once __DIR__ . '\helpers\funcs.php';

spl_autoload_register('autoloader');

// $garden = new Garden(new ArrayFilling());
// $garden = new Garden(new DbFilling());
// $data = picker($garden);

$db = Db::getInstance('localhost', 'root', '', 'fruits-picker');
$query_get_weight = "SELECT tt.id as type_id, tt.type, SUM(fd.weight) as weight, (SELECT SUM(tr.amount_fruits) FROM trees as tr WHERE tr.type_id = tt.id) as amount_fruits FROM fruits_data as fd JOIN trees as tr ON fd.tree_id = tr.id JOIN trees_type AS tt ON tr.type_id = tt.id WHERE fd.tree_id IN (SELECT tr.id FROM trees as tr WHERE tr.type_id IN (SELECT tt.id FROM trees_type)) GROUP BY tt.type";

$data = getFruitsWeight($db, $query_get_weight, ['type', 'weight', 'type_id', 'amount_fruits']);

include __DIR__ . ('\views\info_fruits.php');
