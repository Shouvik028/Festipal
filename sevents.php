<?php
// Include the database connection file
require_once 'classes/db1.php';

// Check if the register_event button is clicked
if (isset($_POST['register_event'])) {
    // Retrieve the event ID and RegNo from the form data
    $event_id = $_POST['event_id'];
    $RegNo = $_SESSION['RegNo'];

    // Prepare the SQL statement to insert the registration data
    $stmt = $conn->prepare("INSERT INTO registered (RegNo, event_id) VALUES (?, ?)");
    
    // Bind parameters
    $stmt->bind_param("ii", $RegNo, $event_id);

    // Execute the statement
    if ($stmt->execute()) {
        // Display the successful alert
        echo "<script>alert('Successfully registered');</script>";
        // Redirect to studentpage.php after successful registration
        header("Location: studentpage.php");
        exit(); // Ensure that no other code is executed after the redirection
    } else {
        echo "<script>alert('Error registering for the event. Please try again.');</script>";
    }

    // Close the statement
    $stmt->close();
}
?>


<div class="container">
    <div class="col-md-12">
        <hr>
    </div>
    <div class="row">
        <section>
            <div class="container">
                <div class="col-md-6">
                    <img src="<?php echo $row['img_link']; ?>" class="img-responsive" style="width: 1000px;height:300px;">
                </div>
                <div class="subcontent col-md-6">
                    <h1 style="color:#003300; font-size:38px;"><u><strong><?php echo $row['event_title']; ?></strong></u></h1><!-- title -->
                    <p style="color:#003300; font-size:20px;"><!-- content -->
                        Date: <?php echo $row['Date']; ?><br>
                        Time: <?php echo $row['time']; ?><br>
                        Location: <?php echo $row['location']; ?><br>
                        Student Co-ordinator: <?php echo $row['st_name']; ?><br>
                        Staff Co-ordinator: <?php echo $row['name']; ?><br>
                        Event Price: <?php echo $row['event_price']; ?><br>
                    </p>
                    <br><br>
                    <form action="" method="POST">
                        <input type="hidden" name="event_id" value="<?php echo $row['event_id']; ?>">
                        <input type="submit" name="register_event" class="btn btn-default" value="Register">
                    </form>
                </div><!-- subcontent div -->
            </div><!-- container div -->
        </section>
    </div>
</div><!-- row div -->


