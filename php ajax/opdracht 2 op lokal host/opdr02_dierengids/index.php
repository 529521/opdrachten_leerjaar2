<!DOCTYPE html>
<html lang="nl">
<head>
<meta charset="utf-8">
<title>Dierengids (land, zee, lucht)</title>
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){	

	$(document).on("click", ".page1", function(){
                $("#content").load("vogels.html");
            });

			$(document).on("click", ".page2", function(){
                $("#content").load("vissen.html");
            });
			$(document).on("click", ".page3", function(){
                $("#content").load("varkens.html");
            });
	
});
</script>
</head>
<body>

<div id=container>	
	<h1>Dierengids</h1>
	<div id="menu">
		<button class="page1">Vogels</button>
		<button class="page2">Vissen</button>
		<button class="page3">Varkens</button>
	</div>
	<div id="content"></div>
</div>

</body>
</html>