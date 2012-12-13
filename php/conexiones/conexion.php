<?php
error_reporting(0);
date_default_timezone_set('America/Mexico_City');
	$diadehoy=date("Y-m-d H:i:s");
	$mysqli = new mysqli("localhost", "root", "", "curso");
			  if (mysqli_connect_errno()) { printf("Conexion fallida: %s\n", mysqli_connect_error()); exit();}
/*
Cuando hagamos los include de conexion.php crearemos las querys de este modo:
$mysqli->query("SQL STATEMENT");
*/
/*
Para tirar un while.

if ($result = $mysqli->query(" ")) {
    while ($a = $result->fetch_assoc()){
          $a['campos'];
            $campos=isset($a['campos'])?$a['campos']:""; //usaremos isset en variables null           
            } $result->close(); } $mysqli->close();

*/

?>