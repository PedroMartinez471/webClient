<?php
header("Content-Type: application/json; charset=UTF-8");
$conn = new mysqli("localhost", "pedro", "1234", "pruebasweb");
$stmt = $conn->prepare("SELECT * FROM provincia");
$stmt->execute();
$result = $stmt->get_result();
$outp = $result->fetch_all(MYSQLI_ASSOC);
echo json_encode($outp);
?>