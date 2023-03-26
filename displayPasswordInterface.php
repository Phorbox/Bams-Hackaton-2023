<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<?php
include_once("helpers/encryptionStuff.php");
include_once("helpers/functions.php");
include_once("helpers/queries.php");
?>

<head>
	<meta charset="UTF-8"><br>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Create Account</title>
	<link rel="stylesheet" href="bootstrap-5.3.0-alpha2-dist/css/bootstrap.min.css">
</head>

<body>
	<style>
		.bg-box {
			background-color: #f5f5f5;
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		}

		body {
			background-color: #7B7B7C;
		}

		.title {
			color: #4C00B0;
		}

		.btn-primary {
			border-radius: 20px;
			padding: 15px 30px;
			font-size: 18px;
			background-color: #007bff;
			border: none;
		}

		.btn-primary:hover {
			background-color: #0069d9;
		}

		.btn-secondary {
			border-radius: 20px;
			padding: 15px 30px;
			font-size: 18px;
			background-color: #6c757d;
			border: none;
			text-align: center;
		}

		.btn-secondary:hover {
			background-color: #5a6268;
		}
	</style>

	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-lg-6 col-md-8 col-sm-10">
				<h1 class="text-center mb-4 title">Create Account</h1>
				<div class="bg-box">
					<form method="post" action="">
						<div style="text-align: center;">
							<button name="logout" id="submit" type="submit" value="logout" class="btn btn-primary btn-block">Log out</button>
						</div>
					</form>
					<?php
					if (!isset($_SESSION['id'])) {
						redirect("index.php");
					} else{
						if (isset($_POST['logout'])) {
							session_unset();
							session_destroy();
							redirect("index.php");
						}
						
						

					}


					?>
				</div>
			</div>
		</div>
	</div>
	<script src="assets/js/createUserInterface.js"></script>
	<script src="bootstrap-5.3.0-alpha2-dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>