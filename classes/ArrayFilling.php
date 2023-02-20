<?php

namespace classes;

class ArrayFilling extends Filling
{

	public function addTreeToGarden(): array
	{
		$tree = [
			'AppleTree' => 10,
			'PearTree' => 15,
		];

		$array_tree = [];

		foreach ($tree as $tree_name => $amount) {
			for ($i = 0; $i < $amount; $i++) {
				static $id = 1;
				switch ($tree_name) {
					case 'AppleTree':
						$array_tree[] = self::instanceObj($tree_name, ['from' => 40, 'to' => 50], $id, 'apple', ['from' => 150, 'to' => 180]);
						break;
					case 'PearTree':
						$array_tree[] = self::instanceObj($tree_name, ['from' => 0, 'to' => 20], $id, 'pear', ['from' => 130, 'to' => 170]);
				}
				$id++;
			}
		}

		return $array_tree;
	}

	private static function setFruitsData(int $amount_fruits, int $from, int $to): array
	{
		$fruits_data = [];
		for ($af = 0; $af < $amount_fruits; $af++) {
			$fruits_data[] = rand($from, $to);
		}
		return $fruits_data;
	}

	private static function instanceObj(string $class_name, array $range_af, int $id, string $type, array $range_wf): Tree
	{
		$amount_fruits = rand($range_af['from'], $range_af['to']);
		$fruits_data = self::setFruitsData($amount_fruits, $range_wf['from'], $range_wf['to']);
		$class_name = __NAMESPACE__ . "\\" . $class_name;
		return new $class_name($amount_fruits, $id, $type, $fruits_data);
	}
}
