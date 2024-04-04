<?php
include_once 'classes/db1.php';
$result = mysqli_query($conn,"SELECT * FROM student_coordinator s ,events e where e.event_id= s.event_id");
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
            <div class="jumbotron" style="padding-top:0px;
                margin-top:0px;
                text-shadow: 0px 0px;
                padding-bottom:0px;
                margin-bottom:0px;">
            <h1 style="color:#003300  ; font-size:42px ; font-style:bold "><strong>Student Co-ordinator details</strong></h1></div>
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
    <td><?php echo $row["st_name"]; ?></td>
    <td><?php echo $row["phone"]; ?></td>
    <td><?php echo $row["event_title"]; ?></td>
    <td> <?php echo '<a  href="updateStudent.php?id='.$row['event_id'].'" class = "btn btn-default"> Update</a>'?></td>
   
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