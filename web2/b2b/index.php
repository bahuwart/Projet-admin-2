<?php
$host = '172.18.0.6';
$user = 'user';
$password = 'user123';
$db = 'test';

$conn = new mysqli($host, $user, $password, $db);

if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}
#id, name, email
$sql = 'SELECT * FROM employee';
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo '<table border="1">';
    echo '<tr><th>ID</th><th>Name</th><th>Email</th></tr>';
    while($row = $result->fetch_assoc()) {
        echo '<tr>';
        echo '<td>' . $row['id'] . '</td>';
        echo '<td>' . $row['name'] . '</td>';
        echo '<td>' . $row['email'] . '</td>';
        echo '</tr>';
    }
    echo '</table>';
}

echo '----------------------------------------------------';
echo '<br>';

$sql = "SELECT * FROM inventory";
$result = $conn->query($sql);
if ($result->num_rows > 0)
    {
        while($row = $result->fetch_assoc())
        {
            echo " - Name: " . $row["name"]. " Price : " . $row["price"]. "<br>";
        }
    }

 else {
    echo '0 results';
}

$conn->close();
?>