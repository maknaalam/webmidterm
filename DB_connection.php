<?php  

$sName = "sql207.infinityfree.com";
$uName = "if0_40238784";
$pass  = "webmidterm";
$db_name = "if0_40238784_writing_management";

try {
	$conn = new PDO("mysql:host=$sName;dbname=$db_name", $uName, $pass);
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e){
	echo "Connection failed: ". $e->getMessage();
	exit;
}
