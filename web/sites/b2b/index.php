<?php

$servername = "172.17.0.3";
$username = "userexterne";
$password = "user123";
$dbname = "externe";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error)
{
    die("Connection failed: " . $conn->connect_error);
}
else
{
    $sql = "SELECT * FROM inventory";
    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {
        while($row = $result->fetch_assoc())
        {
            echo " - Name: " . $row["name"]. " Price : " . $row["price"]. "<br>";
        }
    }
    $conn->close();
}
?>