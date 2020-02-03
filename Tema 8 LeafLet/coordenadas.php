<?php
$conn = new mysqli("localhost", "pedro", "1234", "pruebasweb");
$stmt = $conn->prepare("SELECT * FROM coordenadas");
$stmt->execute();
$result = $stmt->get_result();
# Build GeoJSON feature collection array
$geojson = array(
   'type'      => 'FeatureCollection',
   'features'  => array()
);
# Loop through rows to build feature arrays
while($row = mysqli_fetch_assoc($result)) {
  if($_GET['type'] == "point"){
    if($row['type'] == "Point"){
      $feature = array(
          'id' => $row['id'],
          'type' => 'Feature', 
          'geometry' => array(
              'type' => $row['type'],
              # Pass Longitude and Latitude Columns here
              'coordinates' => array($row['longitud'], $row['latitud'])
          ),
          # Pass other attribute columns here
          'properties' => array(
              'name' => $row['name']
              )
          );
      # Add feature arrays to feature collection array
      array_push($geojson['features'], $feature);
    }
  }
}
header('Content-type: application/json');
echo json_encode($geojson, JSON_NUMERIC_CHECK);
$conn = NULL;
?>