<?php

namespace classes;

abstract class Tree
{

	public function __construct(protected int $amount_fruits, protected int $id, protected string $type, protected array $fruits)
	{
	}

	abstract public function getAmountFruits(): int;
	abstract public function getIdTree(): int;
	abstract public function getType(): string;
	abstract public function getFruitsData(): array;
	abstract public function getSummaryInfo(): string;
}
