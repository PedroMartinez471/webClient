<?php

$a[] = "Elvira";
$a[] = "Cintia";
$a[] = "Miguel";
$a[] = "Pepe";
$a[] = "Pedro";
$a[] = "Fiora";
$a[] = "Rengar";
$a[] = "Jose";
$a[] = "Squirtle";
$a[] = "Pokemon";
$a[] = "Hanna";
$a[] = "Lina";
$a[] = "Malphite";
$a[] = "Oriana";
$a[] = "Quinn";
$a[] = "Amanda";
$a[] = "Raquel";
$a[] = "Jigglipuff";
$a[] = "Pikachu";
$a[] = "Eve";
$a[] = "Susana";
$a[] = "Charizard";
$a[] = "Khazix";
$a[] = "Univerd";
$a[] = "Vio";
$a[] = "Lissandra";
$a[] = "Exreal";
$a[] = "Ashe";
$a[] = "Caitlyn";
$a[] = "Tristana";

$q = $_REQUEST["q"];
$hint = "";
// lookup all hints from array if $q is different from "" 
if ($q !== "") {
    $q = strtolower($q);
    $len=strlen($q);
    foreach($a as $name) {
        if (stristr($q, substr($name, 0, $len))) {
            if ($hint === "") {
                $hint = $name;
            } else {
                $hint .= ", $name";
            }
        }
    }
}
// Output "no suggestion" if no hint was found or output correct values 
echo $hint === "" ? "no suggestion" : $hint;
?>