<?php
require 'classes/db1.php';

// Check if the 'id' parameter is set in the URL
if(isset($_GET['id'])) {
    $id = $_GET['id'];

    // Query to retrieve events based on the provided type ID
    $result = mysqli_query($conn, "SELECT * FROM events, event_info ef, student_coordinator s, staff_coordinator st WHERE type_id = $id AND ef.event_id = events.event_id AND s.event_id = events.event_id AND st.event_id = events.event_id");

    // Check if there are any events found
    if(mysqli_num_rows($result) > 0) {
        ?>
        <!DOCTYPE html>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Festipal</title>
            <title></title>
            <?php require 'utils/styles.php'; ?><!--css links. file found in utils folder-->
        </head>
        <body>
            <?php require 'utils/header.php'; ?><!--header content. file found in utils folder-->
            <div class="content" style="background-image:url('https://slcm.manipal.edu/assets/images/mu_1.jpg');background-size: cover;"><!--body content holder-->
                <br>
                <div class="container" style="background-color:rgba(255, 255, 255, 0.7);border:1px solid grey; border-radius:50px;padding-bottom:30px;">
                    <div class="col-md-12"><!--body content title holder with 12 grid columns-->
                    </div>
                    <?php
                    // Loop through each fetched event
                    while($row = mysqli_fetch_array($result)) {
                        ?>
                        <div class="container">
                            <div class="col-md-12">
                                <hr>
                            </div>
                        </div>
                        <!-- Display the event information -->
                        <div class="container">
                            <div class="row">
                                <section>
                                    <div class="container">
                                        <div class="col-md-6">
                                            <img src="<?php echo $row['img_link']; ?>" class="img-responsive" style="width: 1000px;height:300px;">
                                        </div>
                                        <div class="subcontent col-md-6">                        
                                            <h1 style="color:#003300 ; font-size:38px ;" ><u><strong><?php echo $row['event_title']; ?></strong></u></h1><!--title-->
                                            <p style="color:#003300  ;font-size:20px "><!--content-->
                                                <?php
                                                echo 'Date:' . $row['Date'] . '<br>'; 
                                                echo 'Time:' . $row['time'] . '<br>'; 
                                                echo 'Location:' . $row['location'] . '<br>'; 
                                                echo 'Student Co-ordinator:' . $row['st_name'] . '<br>'; 
                                                echo 'Staff Co-ordinator:' . $row['name'] . '<br>'; 
                                                echo 'Event Price:' . $row['event_price'] . '<br>';
                                                ?>
                                            </p>
                                            <br><br>
                                            <?php echo '<a class="btn btn-default" href="eventregister.php"> <span class="glyphicon glyphicon-circle-arrow-right"></span>Register</a>'; ?>
                                        </div><!--subcontent div-->
                                    </div><!--container div-->
                                </section>
                            </div><!--row div-->
                        </div>
                    <?php
                    }
                    ?>
                    <div class="container">
                        <div class="col-md-12">
                            <hr>
                        </div>
                    </div>
                <?php } ?>
                <a class="btn btn-default" href="index.php"><span class="glyphicon glyphicon-circle-arrow-left"></span> Back</a>
            </div>
        </body>
        </html>
    <?php
    }

?>
