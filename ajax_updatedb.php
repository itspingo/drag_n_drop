<?php include_once("config.php");
error_reporting(E_ALL && ~E_WARNING && ~E_NOTICE);
$divid =  $_POST["divid"];
$display_seq = $_POST["seqno"];

$sqldb="update dznr_module_fields set 
			display_seq = ".$display_seq."
		where divid = '".$divid."'";

//echo $sqldb;
mysqli_query($dbcon, $sqldb);

?>