<?php
include_once('infop.php');
$pname='';
if(isset($_POST['guide-details'])) {
	$pname = $_POST['hidden'];
	$que="SELECT * FROM `travel_agent` WHERE acity='$pname'";
	$result = mysqli_query($db, $que);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guide details</title>
    <style>
        body{
            margin:0;
            padding:0;
            background: linear-gradient(305deg, rgba(224,36,214,1) 24%, rgba(31,70,153,1) 83%);
            height: 84vh;
            background-size: 100% 100%;
        }
        table{
            background-color:white;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <table align="center" border="1px" style="width: 700px; line-height: 30px;">
        <tr>
            <th colspan="7"><h2>Guide Details</h2></th>
        </tr>
        <tr>
            <th>Guide name</th>
            <th>Email</th>
            <th>City</th>
            <th>Phone</th>
            <th>Guide Type</th>
            <th>Availability</th>
        </tr>
        <?php
            while($rows = mysqli_fetch_assoc($result))
            {
        ?>
        <tr>
            <td><?php echo $rows['afname']; ?></td>
            <td><?php echo $rows['aemail']; ?></td>
            <td><?php echo $rows['acity']; ?></td>
            <td><?php echo $rows['aphone']; ?></td>
            <td><?php echo $rows['type']; ?></td>
            <td><?php echo $rows['available']; ?></td>

        </tr>
        <?php
            }
        ?>
    </table>
</body>
</html>