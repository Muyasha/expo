<?php 
    include "koneksi.php";
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Galeri Foto</title>
    <!-- CUSTOM CSS -->
    <link rel="stylesheet" href="gallery.css" />
  </head>
  <body>

    <div class="container">
      <h1>OUR PHOTO GALLERY</h1>

      <div class="photo-gallery">
<?php
    $result = mysqli_query($conn, "SELECT * FROM galeri WHERE id_wisata=$_GET[id]");
    while($row2 = mysqli_fetch_array($result, MYSQLI_ASSOC))
    {
?>
        <div class="pic">
          <img src="images/image/<?php echo $row2['foto']?>" />
        </div>
<?php
    }
?>
      </div>
    </div>
  </body>
</html>
