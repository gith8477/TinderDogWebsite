<!DOCTYPE html>
<html>
<head>
	<title>upload</title>
</head>
<style>
	* {
   margin: 0;
   padding: 0;
  }
  .imgbox {
   display: grid;
   height: 100%;
  }
  .center-fit {
   max-width: 60%;
   max-height: 60vh;
   margin: auto;
  }
</style>
<body>
<div class="imgbox">
<?php

	$db = mysqli_connect("localhost", "root", "Yh19930718","login_creds");
	$result = mysqli_query($db,"SELECT * FROM images");
	while ($row = mysqli_fetch_array($result)) {
      	echo "<img class = 'center-fit' src='image/".$row['image'].".".$row['extension']."' ><br />";
      	echo "<p class = 'center-fit'>".$row['description']."</p>";
    }
	
?>
</div>
<form  action="upload.php" method="POST" enctype="multipart/form-data">
	<input type="file" name="file">
	<br/>
	<textarea 
      	id="text" 
      	cols="40" 
      	rows="4" 
      	name="image_text" 
      	placeholder="Say something about this image..."></textarea>
    <br/>
	<button type="submit" name="submit">UPLOAD</button>
</form>
</body>
</html>