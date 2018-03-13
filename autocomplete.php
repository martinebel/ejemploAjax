<?php
require_once("db.php");

//en $_REQUEST["term"] viene lo que estamos buscando en el cuadro de texto (lo que nos manda el ajax autocomplete para hacer la busqueda)
if(isset($_REQUEST['term'])) {
$name=$_REQUEST["term"];

$html="";
  $return = array();
    $json = "[";
    $first = true;

//aca buscamos las ciudades cuyo nombre coincida en alguna parte con lo que buscamos, y limitamos los resultados a 10
//para evitar tener un conjunto de resultados muy largo si por ejemplo se busca solamente una 'A' o cosas asi
  $stmt = $dbh->prepare("select * from ciudades where nombre like '%".$name."%' limit 10");
       $stmt->execute();
		$result = $stmt->fetchAll(); 
		foreach($result as $row)
		{
                


      if(!$first){
            $json .=  ",";
        }else{
            $first = false;
        }
		//aca armamos nuestro JSON de resultados. los 3 valores obligatorios que deben ponerse son:
		//id: el id del elemento
		//label: lo que se muestra en el autocomplete
		//value: el 'valor'
		//se pueden agregar otros valores si se quiere.
        $json .= '{"id":"'.$row['idciudad'].'","label":"'.$row['nombre'].'","value":"'.$row['nombre'].'","apodo":"'.$row['apodo'].'"}';
	
     }


    $json .= "]";

    echo $json;
  
}

 ?>