<?php
  // Create database connection
  $db = mysqli_connect("localhost", "root", "Yh19930718");

  // Initialize message variable
  $msg = "hello";
  // If upload button is clicked ...
  if (isset($_POST['upload'])) {
  	// Get image name

    $image = addslashes(file_get_contents($_FILES['image']['name']));
  	// Get text
  	$image_text = mysqli_real_escape_string($db, $_POST['image_text']);

  	// image file directory
  	$target = "images/".basename($image);

  	$sql = "INSERT INTO images (list_id, image, descrption) VALUES (1,'$image', '$image_text')";
  	// execute query
  	mysqli_query($db, $sql);

  	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
  		$msg = "Image uploaded successfully";
  	}else{
  		$msg = "Failed to upload image";
  	}
  }
  else{echo 'no connection';}
  $result = mysqli_query($db, "SELECT * FROM images");
?>