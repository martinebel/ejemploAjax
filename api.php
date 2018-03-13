<?php
//incluimos el archivo db.php que contiene los datos de conexion a la BD y las funciones de inicializacion del objeto de conexion (el $dbh)
require 'db.php'; 

//guardamos en una variable local la "variable" que viene en la URL solicitada por el Ajax. En este caso, la "variable" se llama 'action'
//ejemplo: api.php?nombre=valor
//para acceder a "valor", tenemos que usar $_REQUEST['nombre']
//al venir dentro de la misma url, es un valor GET (se obtiene desde el array _REQUEST de PHP)
//si fuese mediante un POST (no está dentro de la URL) se obtiene desde el array _POST de PHP.
$action=$_REQUEST['action']; 

//ahora, segun el valor de $action haremos alguna accion correspondiente.
//si $action='getEstados': devolver un listado de la tabla 'estados' de la BD
//si $action='getCiudades': devolver un listado de la tabla 'ciudades' de la BD para el estado solicitado
//si $action='getInfo': devolver la informacion de la ciudad seleccionada
$output_array = array();	
switch($action)
{
	case 'getEstados':
		$stmt = $dbh->prepare("select * from estados");

        $stmt->execute();
		$table = $stmt->fetchAll(); 
		foreach($table as $row)
			{
				//aca armamos cada "linea" del json
				$output_array[] = array( 'idestado' => $row['idestado'], 'nombre' => $row['nombre'] );
			}
	break;
		
	case 'getCiudades':
		//este case requiere una variable mas: el id del estado en cuestion. viene por GET cuando se la llama
		$idestado=$_REQUEST['idestado'];
		$stmt = $dbh->prepare("select * from ciudades where idestado=".$idestado);

        $stmt->execute();
		$table = $stmt->fetchAll(); 
		foreach($table as $row)
			{
				//aca armamos cada "linea" del json
				$output_array[] = array( 'idciudad' => $row['idciudad'], 'nombre' => $row['nombre'] );
			}
	break;
		
	case 'getInfo':
		//este case requiere una variable mas: el id de la ciudad en cuestion. viene por GET cuando se la llama
		$idciudad=$_REQUEST['idciudad'];
		$stmt = $dbh->prepare("select * from ciudades where idciudad=".$idciudad);

        $stmt->execute();
		$table = $stmt->fetchAll(); 
			foreach($table as $row)
			{
				//aca armamos cada "linea" del json
				$output_array[] = array( 'idciudad' => $row['idciudad'], 'nombre' => $row['nombre'], 'apodo' => $row['apodo'] );
			}
	break;
}

//al final, "imprimimos" con un echo el contenido de $output_array
echo json_encode( $output_array );
?>