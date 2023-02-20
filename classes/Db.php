<?php

namespace classes;

class Db
{
	private static \mysqli $instance;

	private function __construct()
	{
	}

	public static function getInstance(string $hostname, string $username, string|int $password, string $databasename): \mysqli
	{
		if (empty($instance)) {
			self::$instance = new \mysqli($hostname, $username, $password, $databasename);
		}

		return self::$instance;
	}
}
