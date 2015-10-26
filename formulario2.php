<?php

	// Conectarse a la base de datos
	$con = mysqli_connect('localhost', 'root', 'DAW22015', 'bd_botiga_animals');

	// Si no está conectada mensaje de error
	if(!$con){
		echo "Error en la conexión";
	}else{
		/////////////// NOMBRE ////////////////////
		if(isset($_POST['nombre'])){
			$nom = utf8_decode($_POST['nombre']);
		}
		/////////////// TELEFONO ////////////////////
		if(isset($_POST['telefono'])){
			$telf = $_POST['telefono'];
		}
		/////////////// DIRECCIÓN ////////////////////
		if(isset($_POST['direccion'])){
			$adre = utf8_decode($_POST['direccion']);
		}

		$contactoNuevo = "INSERT INTO tbl_contacte(contact_nom, contact_telf, contact_adre) VALUES ('$nom','$telf','$adre')";
		//echo $contactoNuevo;
		$datos = mysqli_query($con,$contactoNuevo);
		//////////////////////////////////////////////
		//////////////////////////////////////////////



		/////////////// ANUNCIO /////////////////////
		if(isset($_POST['anuncio'])){
			$anun = utf8_decode($_POST['anuncio']);
		}
		/////////////// ANIMAL ////////////////////
		if(isset($_POST['tbl_tipus_animal'])){
			$animal = utf8_decode($_POST['tbl_tipus_animal']);
		}
		/////////////// RAZA ////////////////////
		if($_POST['tbl_tipus_animal'] == '1'){
			if(isset($_POST['tbl_raca12'])){
				$razaAnimal = utf8_decode($_POST['tbl_raca12']);
			}
		}else{
			if($_POST['tbl_tipus_animal'] == '2'){
				if(isset($_POST['tbl_raca22'])){
					$razaAnimal = utf8_decode($_POST['tbl_raca22']);
				}			}else{
				if($_POST['tbl_tipus_animal'] == '3'){
					if(isset($_POST['tbl_raca32'])){
						$razaAnimal = utf8_decode($_POST['tbl_raca32']);
					}
				}else{
					if($_POST['tbl_tipus_animal'] == '4'){
						if(isset($_POST['tbl_raca42'])){
							$razaAnimal = utf8_decode($_POST['tbl_raca42']);
						}
					}
				}
			}
		}
		/////////////// PERDIDO O ENCONTRADO ////////////////////
		if(isset($_POST['perdida'])){
			$estadoAnimal = $_POST['perdida'];
		}
		/////////////// MUNICIPIO ////////////////////
		if(isset($_POST['tbl_municipi'])){
			$muni = utf8_decode($_POST['tbl_municipi']);
		}
		/////////////// DESCRIPCIÓN ////////////////////
		if(isset($_POST['descripcion'])){
			$desc = utf8_decode($_POST['descripcion']);
		}
		/////////////// FOTO /////////////////////////
		$nombreFoto = "";
		if ($_FILES["imagen"]["error"] > 0){
			echo "ha ocurrido un error";
		}else {
			$permitidos = array("image/jpg", "image/jpeg", "image/gif", "image/png");
			$limite_kb = 10000000;

			if (in_array($_FILES['imagen']['type'], $permitidos) && $_FILES['imagen']['size'] <= $limite_kb * 1024){
				$ruta = "img/" . $_FILES['imagen']['name'];
				if (!file_exists($ruta)){
					$resultado = move_uploaded_file($_FILES["imagen"]["tmp_name"], $ruta);
					if ($resultado){
						$nombreFoto = $_FILES['imagen']['name'];
						echo "el archivo ha sido movido exitosamente";
					} else {
						echo "ocurrio un error al mover el archivo.";
					}
				} else {
					echo $_FILES['imagen']['name'] . ", este archivo existe";
				}
			} else {
				echo "archivo no permitido, es tipo de archivo prohibido o excede el tamano de $limite_kb Kilobytes";
			}
		}
		/////////////////////////////////////////////////
		echo $_POST['tbl_municipi'];
		$fecha = date("Y-m-d");
		$idContacte = mysqli_insert_id($con);
		if($_POST['tbl_tipus_animal'] == '1'){
			$anuncioNuevo = "INSERT INTO tbl_anunci(anu_contingut,anu_nom,anu_data,anu_foto,raca_id,mun_id,contact_id,anu_tipus) VALUES ('$desc','$anun',$fecha,'$nombreFoto','','','$idContacte','$estadoAnimal')";
		}else{
			if($_POST['tbl_tipus_animal'] == '2'){
				$anuncioNuevo = "INSERT INTO tbl_anunci(anu_contingut,anu_nom,anu_data,anu_foto,raca_id,mun_id,contact_id,anu_tipus) VALUES ('$desc','$anun',$fecha,'$nombreFoto','','','$idContacte','$estadoAnimal')";
			}else{
				if($_POST['tbl_tipus_animal'] == '3'){
					$anuncioNuevo = "INSERT INTO tbl_anunci(anu_contingut,anu_nom,anu_data,anu_foto,raca_id,mun_id,contact_id,anu_tipus) VALUES ('$desc','$anun',$fecha,'$nombreFoto','','','$idContacte','$estadoAnimal')";
				}else{
					if($_POST['tbl_tipus_animal'] == '4'){
						$anuncioNuevo = "INSERT INTO tbl_anunci(anu_contingut,anu_nom,anu_data,anu_foto,raca_id,mun_id,contact_id,anu_tipus) VALUES ('$desc','$anun',$fecha,'$nombreFoto','','','$idContacte','$estadoAnimal')";
					}
				}
			}
		}
		//echo $anuncioNuevo."<br />";
		$datos = mysqli_query($con,$anuncioNuevo);

		//Desconectamos la base de datos
		mysqli_close($con);
	}
?>