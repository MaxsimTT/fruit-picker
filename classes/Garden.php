<?php

namespace classes;

class Garden
{
	private array $objects = [];

	public function __construct(Filling $obj)
	{
		$this->objects = $obj->addTreeToGarden();
	}

	public function getObject(): array
	{
		return $this->objects;
	}
}
