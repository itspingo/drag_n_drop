<?php include_once("config.php");
error_reporting(E_ALL && ~E_WARNING && ~E_NOTICE);
$clientid = '10' ;

	$sqlclean = "delete from dznr_module_fields where clientid = '".$clientid."' ";
	$resclean = mysqli_query($dbcon, $sqlclean);



?>