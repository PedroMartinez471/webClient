<?php
header("Content-Type: application/json; charset=UTF-8");
$dir   = 'imagenes';
$files = scandir($dir);
echo json_encode($files);
?>