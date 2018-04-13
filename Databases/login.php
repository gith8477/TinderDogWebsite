<?php
// Include config file
require_once 'config.php';
// Define variables and initialize with empty values
$username = $password = "";
$username_err = $password_err = "";
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    
    if(!empty($_SESSION['LoggedIn']) && !empty($_SESSION['Username'])){
        // Go to home page
    }

    elseif(!empty($_POST['username']) && !empty($_POST['password'])){
        $username = mysql_real_escape_string($_POST['username']);
        $password = md5(mysql_real_escape_string($_POST['password']));
        
        $checklogin = mysql_query("SELECT * FROM user_info WHERE username = '".$username."' AND password = '".$password."'");
        
        if(mysql_num_rows($checklogin) == 1)
        {
            $row = mysql_fetch_array($checklogin);
            $email = $row['email'];
             
            $_SESSION['Username'] = $username;
            $_SESSION['Email'] = $email;
            $_SESSION['LoggedIn'] = 1;
             
            echo "What is happening";
        }
        else
        {
            echo "Still don't know what is going on";
        }
    }
    else{
        // Go to visitor page
    }
        

    mysqli_close($link);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; }
        .wrapper{ width: 350px; padding: 20px; }
    </style>
</head>
<body>
    <div class="wrapper">
        <h2>Login</h2>
        <p>Please fill in your credentials to login.</p>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="form-group <?php echo (!empty($username_err)) ? 'has-error' : ''; ?>">
                <label>Username</label>
                <input type="text" name="username"class="form-control" value="<?php echo $username; ?>">
                <span class="help-block"><?php echo $username_err; ?></span>
            </div>    
            <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
                <label>Password</label>
                <input type="password" name="password" class="form-control">
                <span class="help-block"><?php echo $password_err; ?></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Login">
            </div>
            <p>Don't have an account? <a href="register.php">Sign up now</a>.</p>
        </form>
    </div>    
</body>
</html>