<?php

	include_once ('../db/utilidades_sql.php');

	if ($_POST){
		//Isset: Recupera lo que trae el metodo 
		$email=isset($_POST['email'])? $_POST['email']:'' ;
		$contrasena=isset($_POST['contrasena'])? $_POST['contrasena']:'' ;
		$fec_nac=isset($_POST['fec_nac'])? $_POST['fec_nac']:'' ;
		$pais=isset($_POST['pais'])? $_POST['pais']:'' ;
		$region=isset($_POST['region'])? $_POST['region']:'' ;
		$ciudad=isset($_POST['ciudad'])? $_POST['ciudad']:'' ;
		$rol=isset($_POST['rol'])? $_POST['rol']:'' ;
		$contrasena=password_hash($contrasena,PASSWORD_DEFAULT); 
		$result=set_registro($email,$contrasena,$fec_nac,$pais,$region,$ciudad,$rol); //set_registro metodo

			if (!$result) {
				ob_start(); //Inicia ciclo
					header ("refresh:3;url=../formulariologin.php");
					echo "<h5>Usuario Registrado Correctamente</h5>";
				ob_end_flush();
			}

	}else{
		header('location:index.php'); //Redirecciona al archivo establecido en el parametro location
		die(); //Termina la ejecución del archivo
	}

?>