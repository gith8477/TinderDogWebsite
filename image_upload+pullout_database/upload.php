<?php
	

	if (isset($_POST['submit'])) {


		$db = mysqli_connect("localhost", "root", "Yh19930718","login_creds");
		$file = $_FILES['file'];

		$fileName = $_FILES['file']['name'];
		$fileTmpName = $_FILES['file']['tmp_name'];
		$fileSize = $_FILES['file']['size'];
		$fileError = $_FILES['file']['error'];
		$fileType = $_FILES['file']['type'];

		$imagetext = $_POST['image_text'];
		
		$fileExt = explode('.', $fileName);
		$fileActualExt = strtolower(end($fileExt));

		$allowed = array('jpg', 'jpeg', 'png', 'pdf' );
		if (in_array($fileActualExt, $allowed)) {
			if ($fileError === 0) {
				if ($fileSize < 50000000) {
					$fileName_id = uniqid('',true);
					$fileNameNew = $fileName_id.".".$fileActualExt;
					$fileDestination = 'image/'.$fileNameNew;
					move_uploaded_file($fileTmpName, $fileDestination);
					$sql = "INSERT INTO images (list_id, image, extension, description) VALUES (4, '".$fileName_id."', '".$fileActualExt."', '".$imagetext."');";
					mysqli_query($db, $sql);

				    header("Location: imageupload.php?Uploadsuccessful".$imagetext);
				}
				else{
					echo 'file size too big';
				}
			}
			else{
				echo $fileError;
			}
		}
		else{
			echo 'image type not supported';
		}
	}
