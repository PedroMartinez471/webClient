<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: 100%;
    border-collapse: collapse;
}
table, td, th {
    border: 1px solid black;
    padding: 5px;
}
th {text-align: left;}
</style>
</head>
<body>

<?php
$q = intval($_GET['q']);
$con = mysqli_connect('localhost','pedro','1234','pruebasweb');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}
mysqli_select_db($con,"ajax_demo");
$sql="SELECT * FROM users WHERE id = '".$q."'";
$result = mysqli_query($con,$sql);
echo "<table>
<tr>
<th>id</th>
<th>name</th>
<th>surname</th>
<th>age</th>
<th>country</th>
</tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>" . $row['id'] . "</td>";
    echo "<td>" . $row['name'] . "</td>";
    echo "<td>" . $row['surname'] . "</td>";
    echo "<td>" . $row['age'] . "</td>";
    echo "<td>" . $row['country'] . "</td>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);
?>
</body>
</html>