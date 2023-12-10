<?php
	 $DB_SERVER='localhost';
	 $DB_USERNAME='vxwxjdjf_khang';
	 $DB_PASSWORD='Mcrntachi1409';
	 $DB_NAME='vxwxjdjf_quanlykhoaluan';
	 $dbprefix='';
// Create connection
$conn = mysqli_connect($DB_SERVER, $DB_USERNAME, $DB_PASSWORD, $DB_NAME);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
?>