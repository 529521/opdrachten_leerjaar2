<!DOCTYPE html>
<html lang="nl">
<head>
<meta charset="utf-8">
<title>Load More</title>
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-3.2.1.min.js"></script>

</head>
<body>
<script>
$( document ).ready(function() {

$( "#morebutton" ).click(function() {
  alert( "Handler for .click() called." );
});
});


</script>
<h1>Nieuwsberichten</h1>
<div id=container>
	<div id="mycontent">
		<?php include('more.php'); ?>
	</div>
	<button id="morebutton">Toon meer berichten</button>
</div>

</body>
</html>