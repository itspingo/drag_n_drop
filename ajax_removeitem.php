<?php include_once("config.php");
	error_reporting(E_ALL && ~E_WARNING && ~E_NOTICE);
	$vdivid = $_POST['item_id'];    
	$modulename = $_POST['module_name'];    
		
	$sqlexist = "delete from dznr_module_fields where divid = '".$vdivid."' and module_name = '".$modulename."' ";
	if(mysqli_query($dbcon, $sqlexist)){
		echo 'success';
	}else{
		echo 'fail';
	}
	
	
?>

