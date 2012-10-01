<!DOCTYPE html>
<html>
<head>
	<title>Calculator 2</title>
</head>
<body>
<?php
	if (isset($_POST['operation'])) {	
		$first = $_POST["first"];
		$second = $_POST["second"];
		$operation = $_POST["operation"];

		if ($operation == "addition") {
			$result = $first + $second;	
			$op = " + ";
		} else if ($operation == "multiplication") {
			$result = $first * $second;
			$op = " * ";
		} else if ($operation == "subtraction") {
			$result = $first - $second;
			$op = " - ";
		} else if ($operation == "division") {
			$result = $first / $second;
			$op = " / ";
		}
		echo $first.$op.$second." = ".$result;
	}
?>
	<form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="POST">
		<p>
			<label for="first">First:</label>
			<input type="text" name="first" id="first"/>
		</p>
		<p>
			<label for="second">Second:</label>
			<input type="text" name="second" id="second"/>
		</p>
		<p>
			<input type="radio" name="operation" value="addition" id="addition" checked="checked"/>
			<label for="addition"> Addition </label> <br>
			<input type="radio" name="operation" value="subtraction" id="subtraction"/>
			<label for="subtraction"> Subtraction </label> <br>
			<input type="radio" name="operation" value="multiplication" id="multiplication"/>
   		    <label for="multiplication"> Multiplication </label> <br>
			<input type="radio" name="operation" value="division" id="division"/>
    	    <label for="division"> Division </label> <br>
		</p>
		<p>
			<input type="submit" value="Send"/>
			<input type="reset" />
		</p>
	</form>

</body>
</html>
