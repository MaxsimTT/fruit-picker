<?php

namespace traits;

trait TreeTrait
{
	public function getAmountFruits(): int
	{
		return $this->amount_fruits;
	}

	public function getIdTree(): int
	{
		return $this->id;
	}

	public function getType(): string
	{
		return $this->type;
	}

	public function getFruitsData(): array
	{
		return $this->fruits;
	}

	public function getSummaryInfo(): string
	{
		$info = "On tree " . $this->getAmountFruits() . " fruits; ";
		$info .= "tree id: " . $this->getIdTree();
		$info .= " type tree: " . $this->getType() . "<br>";
		$info .= "fruits data: <br>";

		foreach ($this->getFruitsData() as $key => $fruit_data) {
			$info .= "# fruit " . $key + 1 . ' - ';
			$info .= "weight: " . $fruit_data . "<br>";
		}

		$info .= "<hr>";

		return $info;
	}
}
