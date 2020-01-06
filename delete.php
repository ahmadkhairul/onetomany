<?php
include "connect.php";
?>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<head>
		<title>Ujian</title>
	</head>
	<style>
	table, th, tr, td{
		border:0px;
	}
	th, td{
		padding:10px;
	}
	</style>
	<body>
		<a href="index.php">Lihat data<br />
		<?php
		$id = $_GET['id'];
		$mysql = "delete from artikel WHERE id = $id";
		$delete = mysqli_query($mysqli, $mysql);
		if ($delete){
			header('Location: index.php');
		}else{
			echo "Delete data gagal";
		}
		?>
	</body>
</html>