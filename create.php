<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
<title>ONE TO MANY</title>
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
<a href="index.php">Lihat data</a><br/>
<form method="post" action="create.php">
	<table>
	<tr>
		<td>Judul</td>
		<td>:</td>
		<td>
			<input type="text" name="judul"/>
		</td>
	</tr>
	<tr>
		<td>Isi Artikel</td>
		<td>:</td>
		<td>
			<textarea name="isi" rows="10" cols="80"></textarea>
		</td>
	</tr>
	<tr>
		<td>Kategori</td>
		<td>:</td>
		<td>
			<textarea name="kategori" rows="5" cols="80"></textarea><br/>*Pisahkan tiap kategori dengan spasi</td>
	</tr>
	<tr>
		<td colspan="3">
			<input type="submit" name="Submit" value="Simpan"/>
		</td>
	</tr>
	<tr>
		<td colspan="3">
			<?php
				include "connect.php";
					if (isset($_POST['Submit'])){
						$judul = $_POST['judul'];
						$isi = $_POST['isi'];
						$kategori = $_POST['kategori'];
						if (!preg_match("/^[a-zA-Z0-9 ]*$/",$kategori)) {
      						echo "Kategori hanya boleh diisi angka dan huruf"; 
    					}else{
    						$mysql = "INSERT INTO artikel VALUES (NULL, '$judul', '$isi')";
    						$insert = mysqli_query($mysqli, $mysql);
    						if($insert){				
	    						$result = mysqli_query($mysqli, "SELECT id FROM artikel ORDER BY id DESC LIMIT 1");
	    						$row = mysqli_fetch_array($result);
	    						$id = $row['id'];
	    						$ex_kategori = explode(" ", $kategori);
	    						$sql = "insert into kategori (id, artikel_id, kategori) values";
	    						foreach ($ex_kategori as $kat) {
	    							$sql .= "(NULL, $id, '$kat'), ";
	    						}
	    						$katsql = rtrim($sql,", ");
	    						$katinsert = mysqli_query($mysqli, $katsql);
	    						if($katinsert){
	    							echo "Artikel berhasil ditambahkan";
	    						}
	    						
    						}
    					}
					}
			?>
		</td>
	</tr>
	</table>
</form>
</body>
</html>