<?php
session_start(); // Start the session

// Check if the user is logged in
if (!isset($_SESSION['RegNo'])) {
    // User is not logged in, redirect to the login page
    header("Location: login_form.php");
    exit;
}

// Include the database connection file
require_once 'classes/db1.php';

// Retrieve the student details
$RegNo = $_SESSION['RegNo'];
$sql = "SELECT * FROM participant WHERE RegNo = '$RegNo'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Student details found, fetch the data
    $row = $result->fetch_assoc();
} else {
    // No student details found
    echo "<script>alert('Error: Student details not found. Please try again later.');</script>";
    header("Location: studentpage.php"); // Redirect to student page
    exit;
}

// Check if the update button is clicked
if (isset($_POST['update'])) {
    // Retrieve the updated student details from the form
    $password = $_POST['password'];
    $name = $_POST['name'];
    $branch = $_POST['branch'];
    $sem = $_POST['sem'];
    $phone = $_POST['phone'];

    // Prepare the SQL statement to update the student details
    $sql = "UPDATE participant SET password = '$password', name = '$name', branch = '$branch', sem = '$sem', phone = '$phone' WHERE RegNo = '$RegNo'";

    // Execute the update query
    if ($conn->query($sql) === true) {
        echo "<script>alert('Student details updated successfully!');</script>";
    } else {
        echo "<script>alert('Error updating student details. Please try again.');</script>";
    }

    // Refresh the page to reflect the updated details
    header("Refresh:0");
    exit;
}
?>

<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student Details</title>
    <?php require 'utils/styles.php'; ?>
    
</head>
<body>
    <?php require 'utils/studentheader.php'; ?>
    <div class="content" style="background-image:url('https://slcm.manipal.edu/assets/images/mu_1.jpg');background-size: cover;">
        <br>
        <div class="container" style="background-color:rgba(255, 255, 255, 0.7);border:1px solid grey; border-radius:50px;padding-bottom:30px;margin:0 auto;max-width:600px;">
    
        
            
            <h1 style="color:#003300  ; font-size:42px ; font-style:bold "><strong>  Update Student Details:</strong></h1><!--body content title-->
                <form method="POST">
                    <div class="form-group">
                        <label for="RegNo">Student RegNo:</label>
                        <input type="text" id="RegNo" name="RegNo" class="form-control" style="max-width:550px;margin:0 auto;"  value="<?php echo $row['RegNo']; ?>" readonly>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" class="form-control" style="max-width:550px;margin:0 auto;"  value="<?php echo $row['password']; ?>" required>
                    </div>
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name" class="form-control" style="max-width:550px;margin:0 auto;"  value="<?php echo $row['name']; ?>" required>
                    </div>
                    <div class="form-group">
                        <label for="branch">Branch:</label>
                        <input type="text" id="branch" name="branch" class="form-control"  style="max-width:550px;margin:0 auto;"  value="<?php echo $row['branch']; ?>" required>
                    </div>
                    <div class="form-group">
                        <label for="sem">Semester:</label>
                        <input type="text" id="sem" name="sem" class="form-control" style="max-width:550px;margin:0 auto;"  value="<?php echo $row['sem']; ?>" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone:</label>
                        <input type="text" id="phone" name="phone" class="form-control" style="max-width:550px;margin:0 auto;" value="<?php echo $row['phone']; ?>" required>
                    </div>
                    <button type="submit" name="update" class="btn btn-default" style="max-width:200px;margin:0 auto;">Update</button><br><br>
                </form>
            
        
    </div>

    <?php require 'utils/footer.php'; ?>
</body>
</html>
