<?php

include_once 'connection.php';
$conn = new ConectorBD('localhost', 'andres', 'webmaster2017');
$conn->initConexion('agenda_db');

$id = $_POST['id'];

$conn->eliminarEvento($id);

echo json_encode((object)array("msg" => "OK"));

?>
