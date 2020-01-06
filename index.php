<?php
include "connect.php";
$result = mysqli_query($mysqli, "
	SELECT 
		artikel.id,
		artikel.judul,
		kategori.kategori
	FROM
		artikel
	INNER JOIN 
		kategori 
	ON 
		kategori.artikel_id = artikel.id
");
?>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
		<title>ONE TO MANY</title>
	</head>
	<style>
	table, th, tr, td{
		border:1px solid black;
		text-align: center;
	}
	th, td{
		padding:10px;
	}
	</style>
	<body>
			<?php
				$data = array(); //Pembuatan Array
				while($row = mysqli_fetch_array($result)){
					/*
					
					Mengubah isi array $result awalnya 

					array (
						[Judul1] = [Kategori 1]
						[Judul1] = [Kategori 2]
						[Judul1] = [Kategori 3]
						[Judul2] = [Kategori 1]
						[Judul2] = [Kategori 2]
						[Judul2] = [Kategori 3]
					)

					menjadi :

					array (
						[1] => array (
							[Judul] = "Judul" 
							[Kategori] = array ( 
								[Kategori 1] => "Kategori 1"
								[Kategori 2] => "Kategori 2"
								[Kategori 3] => "Kategori 3"
							)
						)		

						[2] => array (
							[Judul] = "Judul" 
							[Kategori] = array ( 
								[Kategori 1] => "Kategori 1"
								[Kategori 2] => "Kategori 2"
								[Kategori 3] => "Kategori 3"
							)
						)				
					)

					*/
					$data[$row["id"]]["judul"] = $row["judul"]; 
					$data[$row["id"]]["kategori"][$row["kategori"]] = $row["kategori"];	
				}
				// HTML biasa untuk membuat table
				echo "<table>";
				echo "<tr><th>Judul</th><th>Kategori</th><th>Aksi</th>";
				// Perulangan untuk memanggil data
				foreach($data as $key => $value){
					//Perulangan untuk view setiap judul
				    echo "<tr><td><a href=view.php?id=".$key.">".$value["judul"]."</a></td><td>"; 
				    //Perulangan untuk view kategori di masing-masing judul
				    $subval = "";
				    foreach($value["kategori"] as $subvalue){
						//Penambahan koma (,) untuk setiap kategori
						$subval .= '<a href=kategori.php?kategori='.$subvalue.'>'.$subvalue.'</a>, '; 
				    }
				    //Menghilangkan (,) pada kategori yang paling akhir
				    echo rtrim($subval,", ");
				    echo "</td><td><a href=edit.php?id=".$key.">Edit</a> || <a href=delete.php?id=".$key.">Delete</a></td></tr>";

				}
				echo "</table>"
			?>
	</body>
</html>
				