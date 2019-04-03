<!DOCTYPE html>
 
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<?php
$servername = "mysql";
$username = "root";
$password = "test";
$dbname = "test";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
if (!$conn->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $conn->error);
    exit();
}
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT id, title, content FROM news";
$result = $conn->query($sql);

echo "<h1>HÍREK</h1><br/>";

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<h2>". $row["title"]. "</h2><br/>" . $row["content"] . "<br/>";
    }
} else {
    echo "0 hír";
}

$conn->close();
?> 

</body>
</html>