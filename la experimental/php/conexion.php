<?php 
  // Se conecta al SGBD 
  if(!($iden = mysql_connect("localhost", "root", "1234"))) 
    die("Error: No se pudo conectar");
	
  // Selecciona la base de datos 
  if(!mysql_select_db("baseDatos", $iden)) 
    die("Error: No existe la base de datos");
	
  // Sentencia SQL: muestra todo el contenido de la tabla "books" 
  $sentencia = "SELECT * FROM Usuarios"; 
  // Ejecuta la sentencia SQL 
  $resultado = mysql_query($sentencia, $iden); 
  if(!$resultado) 
    die("Error: no se pudo realizar la consulta");
	
  echo '<table>'; 
  while($fila = mysql_fetch_assoc($resultado)) 
  { 
    echo '<tr>'; 
    echo '<td>' . $fila['Titulo'] . '</td><td>' . $fila['Resumen'] . '</td>'; 
    echo '</tr>'; 
  } 
  echo '</table>'; 
?> 