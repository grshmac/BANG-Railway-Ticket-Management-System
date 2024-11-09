<?php
include 'connect.php';
include 'head2.php';
?>

<html>
<head>
	<link rel='stylesheet' href='css/index.css'>
	<style>
        *{
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            vertical-align: baseline;
            font-family: 'Poppins', sans-serif;
        }

        .table {
            font-family: 'Poppins', sans-serif;
        }

        body {
            display: block;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url('images/1089795.jpg');
            background-size: cover;
            background-position: center;
        }
	</style>

	<title>Mh-Ticket</title>
</head>

<body>
<div>
        <center><img src="images/26-Mushroom-Bunny-for-Cute-Profile-Picture.jpg" alt="My Image" width="80px"></center>
    </div>
    <h2 style= "color:bisque">
        <center><b>Admin Login</center></b>
    </h2>

	<form method='post' action='adminauthenticate.php'>
		<div>
			<table align="center" class="table">
				<tr>
					<td>
						<h2 style= "color:bisque"><b>Email id :</b></h2>
					</td>
					<td><input type="email" name="email" maxlength='50'></td>
				</tr>
				<tr>
					<td>
						<h2 style= "color:bisque"><b> Password : </b></h2>
					</td>
					<td><input type="password" name="password" maxlength='50'></td>
					</td>
				</tr>
				<tr>
					<td colspan='2'>
						<center><button type='Submit' style="background-color:black; border-color:black"
								name='login_submit'><b>Sign in </b> </button></center>
					</td>
				</tr>
			</table>


			</table>
	</form>

	<center>
		<h3><a href='sindex.php' style="color: black"><b>User Login?</b></a></h3>
	</center>

</body>

</html>