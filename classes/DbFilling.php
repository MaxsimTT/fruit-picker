<?php

namespace classes;

use classes\Db;

class DbFilling extends Filling
{

	public function addTreeToGarden(): array
	{
		$db = Db::getInstance('localhost', 'root', '', 'fruits-picker');

		$fruits_data = self::getDataFruits($db);
		$trees_data = self::getDataTrees($db);
		$types_tree = self::getTypesTree($db);

		$trees_data = self::addDataFruits($trees_data, $fruits_data);

		$array_tree = [];

		foreach($types_tree as $type) {
			foreach($trees_data as $tree) {
				if ($type['id'] === $tree['type_id']) {
					if (! isset($tree['fruits_data'])) {
						$tree['fruits_data'] = [];
					}
					$array_tree[] = self::instanceObj($type['type'], $tree['amount_fruits'], $tree['id'], $tree['fruits_data']);
				}
			}
		}

		return $array_tree;
	}

	private static function getDataFruits(\mysqli $database): array
	{
		$query = "SELECT tree_id, weight FROM fruits_data";
		$result = $database->query($query);

		$fruits_data = [];

		while($obj = $result->fetch_object()) {
			$fruits_data[] = [
				'tree_id' => $obj->tree_id,
				'weight' => $obj->weight,
			];
		}

		return $fruits_data;
	}

	private static function getDataTrees(\mysqli $database): array
	{
		$query = "SELECT amount_fruits, id, type_id FROM trees";
		$result = $database->query($query);

		$trees_data = [];

		while($obj = $result->fetch_object()) {
			$trees_data[] = [
				'id' => $obj->id,
				'amount_fruits' => $obj->amount_fruits,
				'type_id' => $obj->type_id,
			];
		}

		return $trees_data;
	}

	private static function addDataFruits(array $trees_data, array $fruits_data): array
	{

		foreach ($trees_data as $key => $tree) {
			foreach ($fruits_data as $fruit) {
				if ($tree['id'] === $fruit['tree_id']) {
					$trees_data[$key]['fruits_data'][] = (int) $fruit['weight'];
				}
			}
		}

		return $trees_data;
	}

	private static function getTypesTree(\mysqli $database): array
	{
		$data = [];

		$query = "SELECT id, type FROM trees_type";
		$result = $database->query($query );

		while ($obj = $result->fetch_object()) {
			$data[] = [
				'id' => $obj->id,
				'type' => $obj->type,
			];
		}

		return $data;
	}

	private static function instanceObj(string $type, int $amount_fruits, int $id, array $fruits_data): Tree
	{

		$MainClassName = __NAMESPACE__ . "\\" . ucfirst($type) . 'Tree';
		return new $MainClassName($amount_fruits, $id, $type, $fruits_data);
	}

}
