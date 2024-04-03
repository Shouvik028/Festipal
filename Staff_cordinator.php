<?php
include_once 'classes/db1.php';
$result = mysqli_query($conn,"SELECT * FROM staff_coordinator s ,events e where e.event_id= s.event_id");
?>
<!DOCTYPE html>
<html>

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Festipal</title>
        <title></title>
        <?php require 'utils/styles.php'; ?><!--css links. file found in utils folder-->
        
    </head>

<body><?php include 'utils/adminHeader.php'?>
<div class = "content" style="background-image:url('https://slcm.manipal.edu/assets/images/mu_1.jpg');background-size: cover;"><!--body content holder-->
        <br>
            <div class = "container" style="background-color:rgba(255, 255, 255, 0.7);border:1px solid grey; border-radius:50px;padding-bottom:30px;">
<h1>Staff Co-ordinator details</h1>
<?php
if (mysqli_num_rows($result) > 0) {
?>
 <table class="table table-hover" >
  
  <tr>
    <th>Name</th>
    <th>Phone</th>
    <th>Event</th>
    <th></th>
  </tr>
<?php
$i=0;
while($row = mysqli_fetch_array($result)) {
?>
<tr>
    <td><?php echo $row["name"]; ?></td>
    <td><?php echo $row["phone"]; ?></td>
    <td><?php echo $row["event_title"]; ?></td>
    <td> <?php echo '<a  href="updateStaff.php?id='.$row['event_id'].'" class = "btn btn-default"> Update</a>'?></td>
   
</tr>
<?php
$i++;
}
?>
</table>
 <?php
}
else{
    echo "No result found";
}
?>
</div>
<?php include 'utils/footer.php';?>
 </body>
 </div>
 
</html>