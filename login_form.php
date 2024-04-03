<?php
include_once 'classes/db1.php';?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Festipal</title>
        <title></title>
        <style>
            span.error{
                color: red;
            }            
        </style>  
        <?php require 'utils/styles.php'; ?><!--css links. file found in utils folder-->
            </head>
    <body>
        <?php require 'utils/header.php'; ?><!--header content. file found in utils folder-->
        <div class = "content" style="background-image:url('https://slcm.manipal.edu/assets/images/mu_1.jpg');background-size: cover;"><!--body content holder-->
        <br>
        <div class = "container" style="background-color:rgba(255, 255, 255, 0.7);border:1px solid grey; border-radius:50px;padding-bottom:30px;">
                <div class ="col-md-6 col-md-offset-3" style="margin-top:20px;">
                  
                    <form method="POST"><!--form-->
                      
                            <!--username field-->
                            <label>UserName:</label><br>
        <input type="text" name="name" class="form-control" required><br>
                            
                   
        <label>Password</label><br>
        <input type="password" name="password" class="form-control" required><br>
                        <button type = "submit" name="update" class = "btn btn-default">Login</button>
                    </form>
                </div><!--col md 6 div-->
            </div><!--container div-->
        
        <?php require 'utils/footer.php'; ?><!--footer content. file found in utils folder-->
    </body>
    </div><!--content div-->
</html>
<?php
if (isset($_POST["update"]))
{
$myusername=$_POST['name'];
$mypassword=$_POST['password'];

if($mypassword=='admin' && $myusername=='admin')
{
    echo "<script>
    alert('Login Successfull');
    window.location.href='adminPage.php';
    </script>";
}
else
{
    echo "<script>
    alert('Invalid credentials');
    window.location.href='login_form.php';
    </script>";
}
}
?>
