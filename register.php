
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cems</title>
        <?php require 'utils/styles.php'; ?><!--css links. file found in utils folder-->
        
    </head>
    <body>
    <?php require 'utils/header.php'; ?>
    <div class ="content"><!--body content holder-->
            <div class = "container">
                <div class ="col-md-6 col-md-offset-3">
    <form method="POST">

   
        <label>Student RegNo:</label><br>
        <input type="text" name="RegNo" class="form-control" required><br><br>

        <label>Student Name:</label><br>
        <input type="text" name="name" class="form-control" required><br><br>

        <label>Branch:</label><br>
        <input type="text" name="branch" class="form-control" required><br><br>

        <label>Semester:</label><br>
        <input type="text" name="sem" class="form-control" required><br><br>

        <!--<label>Email:</label><br>
        <input type="text" name="email"  class="form-control" required ><br><br>
-->
        <label>Phone:</label><br>
        <input type="text" name="phone"  class="form-control" required><br><br>

        <!--<label>College:</label><br>
        <input type="text" name="college"  class="form-control" required><br><br>
-->
        <button type="submit" name="update" required>Submit</button><br><br>
        <a href="RegNo.php" ><u>Already registered ?</u></a>

    </div>
    </div>
    </div>
    </form>
    

    <?php require 'utils/footer.php'; ?>
    </body>
</html>

<?php

    if (isset($_POST["update"]))
    {
        $RegNo=$_POST["RegNo"];
        $name=$_POST["name"];
        $branch=$_POST["branch"];
        $sem=$_POST["sem"];
        $phone=$_POST["phone"];
       // $email=$_POST["email"];
        
        //$college=$_POST["college"];


        if( !empty($RegNo) || !empty($name) || !empty($branch) || !empty($sem) || !empty($phone) )
        {
        
            include 'classes/db1.php';     
                $INSERT="INSERT INTO participent (RegNo,name,branch,sem,phone) VALUES('$RegNo','$name','$branch',$sem,'$phone')";

          
                if($conn->query($INSERT)===True){
                    echo "<script>
                    alert('Registered Successfully!');
                    window.location.href='RegNo.php';
                    </script>";
                }
                else
                {
                    echo"<script>
                    alert(' Already registered this RegNo');
                    window.locatideon.href='RegNo.php';
                    </script>";
                }
               
                $conn->close();
            
        }
        else
        {
            echo"<script>
            alert('All fields are required');
            window.location.href='register.php';
                    </script>";
        }
    }
    
?>