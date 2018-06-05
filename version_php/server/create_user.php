<?php
include_once 'connection.php';
$conn = new ConectorBD('localhost', 'andres', 'webmaster2017');
$conn->initConexion('agenda_db');

$conn->crearUsuarios();
?>
