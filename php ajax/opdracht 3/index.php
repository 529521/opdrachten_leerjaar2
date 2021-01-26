<?php
session_start();
if(isset($_POST['close'])) { unset($_SESSION); session_destroy(); }
if(isset($_POST['username'])) $_SESSION['username']=$_POST['username'];
if(!isset($_SESSION['username'])) $_SESSION['username']=false;
?>
<!DOCTYPE html>
<html lang="nl">

<head>
	<meta charset="utf-8">
	<title>Chat</title>
	<link rel="stylesheet" href="css/style.css">
	<script src="js/jquery-3.2.1.min.js"></script>
	<script>
		$(document).ready(function () {


			setInterval(function () {

				$.ajax({
					url: "chats.php",
					success: function (result) {
						$("#chatsContainer").html(result);
					}
				});
			}, 100);





			$(document).on('submit', '#sendChat', function (event) {
				event.preventDefault();

				$.ajax({
					url: "savechats.php",
					method: "POST",
					data: {
						username: $('#adusername').val(),
						message: $('#chatMessage').val()
					}
				});
			});

			// Zet deze bestanden op een online webserver.
			// Maak een database aan en importeer het SQL bestand.
			// Pas je PDO connectie aan in chats.php en savechats.php

			// Voeg alleen hier code toe.
			// Let op! Wijzig niks aan bestaande code in al deze bestanden!

		});
	</script>
</head>

<body>

	<div id=container>

		<?php if(!$_SESSION['username']){ ?>

		<!-- Geef een gebruikersnaam op -->
		<div id="startChat">
			<h1>Start de chat!</h1>
			<form method="post">
				<label>Gebruikersnaam:</label>
				<br>
				<input type="text" name="username" value="">
				<br>
				<input type="submit" value="Start">
			</form>
		</div>

		<?php }else{ ?>

		<!-- Chat venster -->
		<h3><?php print $_SESSION['username']; ?></h3>
		<div id="close">
			<form method="post">
				<input type="submit" name="close" value="X">
			</form>
		</div>

		<div id=allMessagesArea>
			<div id="chatsContainer">
				<!-- hier komen de chats uit chat.php -->
			</div>
		</div>
		<div id=addMessageArea>
			<form id="sendChat" method="post">
				<input type="hidden" name="username" id="adusername" value="<?php print $_SESSION['username']; ?> ">

				<input type="text" name="message" value="" id="chatMessage">
				<input type="submit" value="Verstuur">
			</form>
		</div>

		<?php } ?>

	</div>

</body>

</html>