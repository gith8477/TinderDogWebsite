<?php
require_once 'config.php';
// Define variables and initialize with empty values
$username = $password = $confirm_password = $email = "";
$username_err = $password_err = $confirm_password_err = $email_err = "";
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(!empty($_POST['username']) && !empty($_POST['password']) && !empty($_POST['email']) && !empty($_POST['confirm_password'])){
        $username = mysqli_real_escape_string($link, $_POST['username']);
        echo $_POST['username'];
        $password = md5(mysqli_real_escape_string($link, $_POST['password']));
        $email = mysqli_real_escape_string($link, $_POST['email']);
        $check_user = mysqli_query($link, "SELECT * FROM user_info WHERE username = '".$username."'");
        if(mysqli_num_rows($checkusername) == 1){
            echo "Error: That username is taken. Please go back and try again.";
        }
        elseif($_POST['password'] != $_POST['confirm_password']){
            echo "Error: Password not confirmed. Please try again.";
        }
        else{
            $registerquery = mysqli_query($link, "INSERT INTO user_info(username, password, email) VALUES('".$username."', '".$password."', '".$email."')");
            if($registerquery)
            {
                echo "Success: Your account was successfully created.";
            }
            else
            {
                echo "Error: Sorry, your registration failed. Please go back and try again";    
            } 
        }
    }
    // Close connection
    mysqli_close($link);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; }
        .wrapper{ width: 350px; padding: 20px; }
    </style>
</head>
<body>
    <div class="wrapper">
        <h2>Sign Up</h2>
        <p>Please fill this form to create an account.</p>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
        	<div class="form-group <?php echo (!empty($email_err)) ? 'has-error' : ''; ?>">
                <label>Email</label>
                <input type="text" name="email"class="form-control" value="<?php echo $email; ?>">
                <span class="help-block"><?php echo $email_err; ?></span>
            </div>
            <div class="form-group <?php echo (!empty($username_err)) ? 'has-error' : ''; ?>">
                <label>Username</label>
                <input type="text" name="username"class="form-control" value="<?php echo $username; ?>">
                <span class="help-block"><?php echo $username_err; ?></span>
            </div>    
            <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
                <label>Password</label>
                <input type="password" name="password" class="form-control" value="<?php echo $password; ?>">
                <span class="help-block"><?php echo $password_err; ?></span>
            </div>
            <div class="form-group <?php echo (!empty($confirm_password_err)) ? 'has-error' : ''; ?>">
                <label>Confirm Password</label>
                <input type="password" name="confirm_password" class="form-control" value="<?php echo $confirm_password; ?>">
                <span class="help-block"><?php echo $confirm_password_err; ?></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Submit">
                <input type="reset" class="btn btn-default" value="Reset">
            </div>
            <p>Already have an account? <a href="login.php">Login here</a>.</p>
        </form>
    </div>    
</body>
</html>