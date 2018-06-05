<?php
session_start();

include_once 'connection.php';
$conn = new ConectorBD('localhost', 'andres', 'webmaster2017');
$conn->initConexion('agenda_db');

$eventos = $conn->obtenerEventos($_SESSION['id_usuario']);

if(count($eventos) > 0) {
    echo json_encode((object)array("msg" => "OK", "eventos" => $eventos));
} else {
    echo json_encode((object)array("msg"=>"No hay eventos aún creados"));
}
?>
