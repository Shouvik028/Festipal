<?php
require 'classes/db1.php';

// Start or resume the session
session_start();

// Assuming you have already stored the logged-in user's registration number in a session variable
// Replace '$_SESSION['RegNo']' with the actual session variable holding the RegNo
$logged_in_regno = $_SESSION['RegNo'];

$result = mysqli_query($conn, "SELECT e.event_title, e.img_link, e.event_price, e.type_id, ef.Date, ef.time, ef.location, s.st_name, st.name
                               FROM events e
                               INNER JOIN registered r ON e.event_id = r.event_id
                               INNER JOIN event_info ef ON e.event_id = ef.event_id
                               INNER JOIN student_coordinator s ON e.event_id = s.event_id
                               INNER JOIN staff_coordinator st ON e.event_id = st.event_id
                               WHERE r.RegNo = $logged_in_regno");

?>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Festipal</title>
    <?php require 'utils/styles.php'; ?><!-- Include CSS -->
</head>

<body>
    <?php require 'utils/studentheader.php'; ?><!-- Include header -->
    <div class="content" style="background-image:url('https://slcm.manipal.edu/assets/images/mu_1.jpg');background-size: cover;">
        <br>
        <div class="container" style="background-color:rgba(255, 255, 255, 0.7);border:1px solid grey; border-radius:50px;padding-bottom:30px;">
            <div class="jumbotron" style="padding-top:0px; margin-top:0px; text-shadow: 0px 0px; padding-bottom:0px; margin-bottom:0px;">
                <h1 style="color:#003300; font-size:42px; font-style:bold "><strong>Registered Events</strong></h1>
            </div>
            <?php
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
            ?>
                    <div class="container">
                        <div class="col-md-12">
                            <hr>
                        </div>
                        <div class="row">
                            <section>
                                <div class="container">
                                    <div class="col-md-6">
                                        <img src="<?php echo $row['img_link']; ?>" class="img-responsive" style="width: 1000px; height: 300px;">
                                    </div>
                                    <div class="subcontent col-md-6">                        
                                        <h1 style="color:#003300; font-size:38px;"><u><strong><?php echo $row['event_title']; ?></strong></u></h1><!--title-->
                                        <p style="color:#003300; font-size:20px;"><!--content-->
                                            Date: <?php echo $row['Date']; ?><br>
                                            Time: <?php echo $row['time']; ?><br>
                                            Location: <?php echo $row['location']; ?><br>
                                            Student Co-ordinator: <?php echo $row['st_name']; ?><br>
                                            Staff Co-ordinator: <?php echo $row['name']; ?><br>
                                            Event Price: <?php echo $row['event_price']; ?><br>
                                        </p>
                                        <br><br>
                                    </div><!--subcontent div-->
                                </div><!--container div-->
                            </section>
                        </div><!--row div-->
                    </div><!--container div-->
            <?php
                }
            } else {
                echo "<p>No events registered yet.</p>";
            }
            ?>
            
        </div>
        <?php require 'utils/footer.php'; ?> <!-- Include footer -->
    </div>
    
</body>
</html>

            