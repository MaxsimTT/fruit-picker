<?php

use classes\Garden;

function debug(array $arr): void
{
	echo "<pre>" . print_r($arr, true) . "</pre>";
}

function autoloader(string $path): void
{
	if (preg_match('/\\\\/', $path)) {
		$path = str_replace('\\', DIRECTORY_SEPARATOR, $path);
	}

	if (\stream_resolve_include_path("{$path}.php") !== false) {
		require_once "{$path}.php";
	}
}

function infoPikerFruits(array $arr): string
{
	$info = '';
	foreach ($arr as $type => $amount_fruits) {
		$info .= "Type: {$amount_fruits['type']} | amount: {$amount_fruits['amount_fruits']} | all weight: {$amount_fruits['weight']} gramm;<br>";
	}

	return $info;
}

function picker(Garden $obj): array
{
	$picker = [];
	$types = [];
	$data = [];

	foreach ($obj->getObject() as $tree) {

		if (empty($types) || !in_array($tree->getType(), $types)) {
			$types[] = $tree->getType();
		}

		$picker[] = [
			'id'            => $tree->getIdTree(),
			'type'          => $tree->getType(),
			'amount_fruits' => $tree->getAmountFruits(),
			'fruits_data'   => $tree->getFruitsData(),
		];
	}

	foreach ($types as $type) {
		$weight = 0;
		$amount_fruits = 0;
		foreach ($picker as $tree) {
			if ($type === $tree['type']) {
				foreach ($tree['fruits_data'] as $fruit_weight) {
					$weight += $fruit_weight;
				}
				$amount_fruits += $tree['amount_fruits'];
			}
		}

		$data[] = [
			'type'          => $type,
			'amount_fruits' => $amount_fruits,
			'weight'        => $weight,
		];
	}

	return $data;
}

function getFruitsWeight(mysqli $connect_db, string $query, array $arg): array
{
	$data = [];
	$result = $connect_db->query($query);
	$quantity = count($arg);

	while ($obj = $result->fetch_object()) {
		for ($i = 0; $i < $quantity; $i++) {
			$property = $arg[$i];
			$data[spl_object_id($obj)][$property] = $obj->$property;
		}
	}
	return $data;
}

