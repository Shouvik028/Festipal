<?php
session_start();
include_once 'classes/db1.php';
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Festipal</title>
    <style>
        span.error {
            color: red;
        }
    </style>
    <?php require 'utils/styles.php'; ?><!--css links. file found in utils folder-->
</head>
<body>
<?php require 'utils/header.php'; ?><!--header content. file found in utils folder-->
<div class="content" style="background-image:url('https://slcm.manipal.edu/assets/images/mu_1.jpg');background-size: cover;">
    <!--body content holder-->
    <br>
    <div class="container"
         style="background-color:rgba(255, 255, 255, 0.7);border:1px solid grey; border-radius:50px;padding-bottom:30px;">
        <div class="col-md-6 col-md-offset-3" style="margin-top:20px;">
            <form method="POST"><!--form-->
                <!--username field-->
                <label>UserID:</label><br>
                <input type="text" name="name" class="form-control" required><br>
                <label>Password</label><br>
                <input type="password" name="password" class="form-control" required><br>
                <button type="submit" name="update" class="btn btn-default">Login</button>
            </form>
            <p style="color: blue; margin-top: 10px;">Not registered? <a href="register.php">Register here</a></p>
        </div><!--col md 6 div-->
    </div><!--container div-->
    <?php require 'utils/footer.php'; ?><!--footer content. file found in utils folder-->
</div><!--content div-->
</body>
</html>
<?php
if (isset($_POST["update"])) {
    $myuserid = $_POST['name'];
    $mypassword = $_POST['password'];

    // Check if username is admin
    if ($mypassword == 'admin' && $myuserid == 'admin') {
        $_SESSION['RegNo'] = 'admin'; // Set session variable for admin
        echo "<script>
        alert('Login Successfull');
        window.location.href='adminPage.php';
        </script>";
        exit; // Stop further execution
    }

    // Check against records in the registered table
    $sql = "SELECT * FROM `participant` WHERE `RegNo` = '$myuserid' AND `password` = '$mypassword'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Set session variable for registered user
        $_SESSION['RegNo'] = $myuserid;
        
        echo "<script>
        alert('Login Successfull');
        window.location.href='studentpage.php';
        </script>";
    } else {
        // Invalid credentials
        echo "<script>
        alert('Invalid credentials');
        window.location.href='login_form.php';
        </script>";
    }
}
?>
