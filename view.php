<?php
$id = $_GET['id'];
include "connect.php";
$result = mysqli_query($mysqli, "
	SELECT 
		artikel.id,
		artikel.judul,
		artikel.isi,
		kategori.kategori
	FROM
		artikel
	INNER JOIN 
		kategori 
	ON 
		kategori.artikel_id = artikel.id
	WHERE
		artikel.id = '$id'
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
		<a href="index.php">Kembali</a><br/>	
			<?php
				$data = array(); 
				while($row = mysqli_fetch_array($result)){
					
					$data[$row["id"]]["judul"] = $row["judul"];
					$data[$row["id"]]["isi"] = $row["isi"]; 
					$data[$row["id"]]["kategori"][$row["kategori"]] = $row["kategori"];	
				}	
				echo "<p><h3>".$data[$id]['judul']."</h3></p>";
				echo "<p>".$data[$id]['isi']."</p>";
				$subval = "";
				foreach($data[$id]["kategori"] as $subvalue){			
					$subval .= '<a href=kategori.php?kategori='.
					$subvalue.'>'.$subvalue.'</a>, '; 
				} 
				echo "<p>Kategori Terkait <br />".rtrim($subval,", ")."</p>";
			?>