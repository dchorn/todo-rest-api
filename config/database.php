<?php
class Database
{
    private $host = "localhost";
    private $db_name = "todo_api";
    private $username = "dev";
    private $password = "dev123";
    public $conn;

    public function getConnection()
    {
        $this->conn = null;

        try {
            $this->conn = new PDO(
                "mysql:host=" . $this->host . ";dbname=" . $this->db_name,
                $this->username,
                $this->password
            );
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->exec("set names utf8");
        } catch (PDOException $exception) {
            echo json_encode([
                "error" => "Connection error: " . $exception->getMessage()
            ]);
        }

        return $this->conn;
    }
}
