<!DOCTYPE html>
<html>
<head>
	<title>Calculator 1</title>
</head>
<body>
<?php
	$first = $_GET["first"];
	$second = $_GET["second"];
	$result = $first + $second;	
	echo $first." + ".$second." = ".$result;
?>
</body>
</html>
