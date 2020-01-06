<?php
$kategori = $_GET['kategori'];
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
	WHERE
		kategori.kategori = '$kategori'
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
		<a href="index.php">Kembali</a><br/><br/>
				<?php
				$data = array();
				while($row = mysqli_fetch_array($result)){
					$data[$row["id"]]["judul"] = $row["judul"]; 
					$data[$row["id"]]["kategori"][$row["kategori"]] = $row["kategori"];	
				}
				echo "<table>";
				echo "<tr><th>Daftar artikel dengan kategori ".$kategori."</th>";
				// Perulangan untuk memanggil data
				foreach($data as $key => $value){
					//Perulangan untuk view setiap judul
				    echo "<tr><td><a href=view.php?id=".$key.">"
				    .$value["judul"]."</a></td></tr>";
				}
				echo "</table>";
				?>
	</body>
</html>