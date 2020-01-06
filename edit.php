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
<form method="post" action="edit.php">
	<?php
		$data = array(); 
		while($row = mysqli_fetch_array($result)){			
			$data[$row["id"]]["judul"] = $row["judul"];
			$data[$row["id"]]["isi"] = $row["isi"]; 
			$data[$row["id"]]["kategori"][$row["kategori"]] = $row["kategori"];	
		}
	?>
	<input type="hidden" name="id" value="<?php echo $id;?>">
	<table>
	<tr>
		<td>Judul</td>
		<td>:</td>
		<td>
			<input type="text" name="judul" value="<?php echo $data[$id]['judul'];?>"/>
		</td>
	</tr>
	<tr>
		<td>Isi Artikel</td>
		<td>:</td>
		<td>
			<textarea name="isi" rows="10" cols="80"><?php echo $data[$id]['isi'];?></textarea>
		</td>
	</tr>
	<tr>
		<td>Kategori</td>
		<td>:</td>
		<td>
			<textarea name="kategori" rows="5" cols="80"><?php foreach($data[$id]["kategori"] as $cat){ echo $cat." ";} ?></textarea><br/>
			*Pisahkan tiap kategori dengan spasi
		</td>
	</tr>
	<tr>
		<td colspan="3">
			<input type="submit" name="Submit" value="Edit"/>
		</td>
	</tr>
	<tr>
		<td colspan="3">
			<?php
				include "connect.php";
					if (isset($_POST['Submit'])){
						$id = $_POST['id'];
						$judul = $_POST['judul'];
						$isi = $_POST['isi'];
						$kategori = $_POST['kategori'];
						if (!preg_match("/^[a-zA-Z0-9 ]*$/",$kategori)) {
      						echo "Kategori hanya boleh diisi angka dan huruf"; 
    					}else{
    						$mysql = "UPDATE artikel SET judul = '$judul', isi = '$isi' WHERE id = $id";
    						$update = mysqli_query($mysqli, $mysql);
    						if($update){				
	    						$delete = mysqli_query($mysqli, "DELETE FROM kategori WHERE artikel_id = $id");
		    					if($delete){
		    						$ex_kategori = explode(" ", $kategori);
		    						$sql = "insert into kategori (id, artikel_id, kategori) values";
		    						foreach ($ex_kategori as $kat) {
		    							$sql .= "(NULL, $id, '$kat'), ";
		    						}
		    						$katsql = rtrim($sql,", ");
		    						$katinsert = mysqli_query($mysqli, $katsql);
		    						if($katinsert){
		    							header('Location: index.php');
		    						}
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