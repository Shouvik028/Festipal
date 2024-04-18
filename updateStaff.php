<?php include 'classes/db1.php';
    $id=$_GET['id'];
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Festipal</title>
        <title></title>
        <?php require 'utils/styles.php'; ?><!--css links. file found in utils folder-->
        
    </head>
    <body>
    <?php require 'utils/adminHeader.php'; ?>
    <div class="content" style="background-image:url('https://slcm.manipal.edu/assets/images/mu_1.jpg');background-size: cover;">
  
  <br>
      <div class="container" style="background-color:rgba(255, 255, 255, 0.7);border:1px solid grey; border-radius:50px;padding-bottom:15px;margin:0 auto;max-width:600px;">
      <br>
    <form method="POST">
    <label>Staff co-ordinator name</label><br>
    <input type="text" name="st_name" required class="form-control"><br><br>
    <label>Staff co-ordinator phone</label><br>
    <input type="text" name="phone" required class="form-control"><br><br>
    <button type="submit" name="update" class = "btn btn-default ">Update</button>
    </div>
    
    
    </form>
    

    <?php require 'utils/footer.php'; ?>
    </div>
    </body>
</html>


<?php

 if (isset($_POST["update"]))
 {
     $name=$_POST["st_name"];
     $phone=$_POST["phone"];
     $sql="UPDATE staff_coordinator set phone='$phone',name='$name' where stid='$id'";
     if($conn->query($sql)===true)
     {
        echo"<script>
        alert(' Updated Successfully');
        window.location.href='stu_cordinator.php';
        </script>";
     }
     else
     {
        echo"<script>
        window.location.href='updateStudent.php';
        </script>";
     }
}
?>
