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

// Retrieve the last event ID from the database
$sql = "SELECT MAX(event_id) AS last_event_id FROM events";
$result = $conn->query($sql);
$last_event_id = 0;

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $last_event_id = $row['last_event_id'] + 1; // Increment last event ID by 1 for placeholder
}

// Check if the update button is clicked
if (isset($_POST['update'])) {
    // Retrieve form data
    $event_id = $_POST['event_id'];
    $event_title = $_POST['event_title'];
    $event_price = $_POST['event_price'];
    $img_link = $_POST['img_link'];
    $type_id = $_POST['type_id'];
    $name = $_POST['sname'];
    $st_name = $_POST['st_name'];
    $Date = $_POST['Date'];
    $time = $_POST['time'];
    $location = $_POST['location'];

    // Check if any field is empty
    if (!empty($event_id) && !empty($event_title) && !empty($event_price) && !empty($img_link) && !empty($type_id) && !empty($name) && !empty($st_name) && !empty($Date) && !empty($time) && !empty($location)) {
        // Prepare and execute INSERT queries
        $sql = "INSERT INTO events (event_id, event_title, event_price, img_link, type_id) VALUES ($event_id, '$event_title', $event_price, '$img_link', $type_id);";
        $sql .= "INSERT INTO event_info (event_id, Date, time, location) VALUES ($event_id, '$Date', '$time', '$location');";
        $sql .= "INSERT INTO student_coordinator (sid, st_name, event_id) VALUES ($event_id, '$st_name', $event_id);";
        $sql .= "INSERT INTO staff_coordinator (stid, name, event_id) VALUES ($event_id, '$name', $event_id);";

        if ($conn->multi_query($sql) === true) {
            echo "<script>
            alert('Event Inserted Successfully!');
            window.location.href='adminPage.php';
            </script>";
        } else {
            echo "<script>
            alert('Error: Event insertion failed. Please try again.');
            window.location.href='createEventForm.php';
            </script>";
        }
    } else {
        echo "<script>
        alert('All fields are required');
        window.location.href='createEventForm.php';
        </script>";
    }
}
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Festipal</title>
    <?php require 'utils/styles.php'; ?>
</head>
<body>
<?php require 'utils/adminHeader.php'; ?>
<div class="content" style="background-image:url('https://slcm.manipal.edu/assets/images/mu_1.jpg');background-size: cover;">
    <br>
    <div class="container" style="background-color:rgba(255, 255, 255, 0.7);border:1px solid grey; border-radius:50px;padding-bottom:30px;margin:0 auto;max-width:600px;">
        <br>
        <form method="POST">
            <label>Event ID:</label><br>
            <input type="number" name="event_id" required class="form-control" value="<?php echo $last_event_id; ?>"><br><br>

            <label>Event Name:</label><br>
            <input type="text" name="event_title" required class="form-control"><br><br>

            <label>Event Price:</label><br>
            <input type="number" name="event_price" required class="form-control"><br><br>

            <label>Upload Path to Image:</label><br>
            <input type="text" name="img_link" required class="form-control"><br><br>

            <label for="type_ID">Event Type:</label><br>
            <select name="type_id" style="width: 570px;height: 40px;border-radius:4px;">
                <option value="1">Technical</option>
                <option value="2">Gaming</option>
                <option value="3">Cultural</option>
                <option value="4">Sports</option>
            </select><br><br><br>

            <label>Event Date</label><br>
            <input type="date" name="Date" required class="form-control"><br><br>

            <label>Event Time</label><br>
            <input type="text" name="time" required class="form-control"><br><br>

            <label>Event Location</label><br>
            <input type="text" name="location" required class="form-control"><br><br>

            <label>Staff co-ordinator name</label><br>
            <input type="text" name="sname" required class="form-control"><br><br>

            <label>Student co-ordinator name</label><br>
            <input type="text" name="st_name" required class="form-control"><br><br>

            <button type="submit" name="update" class="btn btn-default pull-right">Create Event <span class="glyphicon glyphicon-send"></span></button>

            <a class="btn btn-default navbar-btn" href="adminPage.php"><span class="glyphicon glyphicon-circle-arrow-left"></span> Back</a>
        </form>
    </div>

<?php require 'utils/footer.php'; ?>
</div>
</body>
</html>
