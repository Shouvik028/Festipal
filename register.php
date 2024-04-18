<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Festipal</title>
    <?php require 'utils/styles.php'; ?>
</head>
<body>
    <?php require 'utils/header.php'; ?>
    <div class="content" style="background-image:url('https://slcm.manipal.edu/assets/images/mu_1.jpg');background-size: cover;">
        <br>
        <div class="container" style="background-color:rgba(255, 255, 255, 0.7);border:1px solid grey; border-radius:50px;padding-bottom:30px;margin:0 auto;max-width:600px;">
            <form method="POST">
                <br>
                <label>Student RegNo:</label><br>
                <input type="text" name="RegNo" class="form-control" required style="max-width:550px;margin:0 auto;"><br><br>

                <label>Password:</label><br>
                <input type="password" name="password" class="form-control" required style="max-width:550px;margin:0 auto;"><br><br>

                <label>Student Name:</label><br>
                <input type="text" name="name" class="form-control" required style="max-width:550px;margin:0 auto;"><br><br>

                <label>Branch:</label><br>
                <input type="text" name="branch" class="form-control" required style="max-width:550px;margin:0 auto;"><br><br>

                <label>Semester:</label><br>
                <input type="text" name="sem" class="form-control" required style="max-width:550px;margin:0 auto;"><br><br>

                <label>Phone:</label><br>
                <input type="text" name="phone" class="form-control" required style="max-width:550px;margin:0 auto;"><br><br>

                <button type="submit" name="update" style="max-width:200px;margin:0 auto;">Submit</button><br><br>
                <a href="login_form.php"><u>Already registered ?</u></a>
            </form>
        </div>
    

    <?php require 'utils/footer.php'; ?>
    </div>
</body>
</html>

<?php
if (isset($_POST["update"])) {
    $RegNo = $_POST["RegNo"];
    $spassword = $_POST["password"];
    $name = $_POST["name"];
    $branch = $_POST["branch"];
    $sem = $_POST["sem"];
    $phone = $_POST["phone"];

    if (!empty($RegNo) && !empty($spassword) && !empty($name) && !empty($branch) && !empty($sem) && !empty($phone)) {
        include 'classes/db1.php';
        $INSERT = "INSERT INTO participant (RegNo, name, branch, sem, phone, password) VALUES ('$RegNo', '$name', '$branch', '$sem', '$phone', '$spassword')";

        if ($conn->query($INSERT) === true) {
            echo "<script>
                alert('Registered Successfully!');
                window.location.href='login_form.php';
                </script>";
        } else {
            echo "<script>
                alert('Error: Unable to register. Please try again later.');
                window.location.href='register.php';
                </script>";
        }

        $conn->close();
    } else {
        echo "<script>
            alert('All fields are required');
            window.location.href='register.php';
            </script>";
    }
}
?>
