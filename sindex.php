<?php
include 'connect.php';
include 'head2.php';
?>

<html>

<head>
    <link rel='stylesheet' href='css/index.css'>
    <title>BANG Railways</title>

    <style>

        .table{
            font-family: 'Poppins', sans-serif;
        }

        body{
            display: block;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url('images/spirited\ away.webp');
            background-size: cover;
            background-position: center;
        }
    </style>

</head>

<body>
    <div>
        <center><img src="images/19-Blank-Profile-Picture-Moon-Version.jpg" alt="My Image" width="80px"></center>
    </div>
    <h2>
        <center><b>User Login</center></b>
    </h2>
    </div>

    <form method='post' action='authenticate.php'>
        <div>
            <table align="center" class="table">
                <tr>
                    <td>
                        <h2><b>Email id: </b></h2>
                    </td>
                    <td>
                        <input type="email" name="email" maxlength='50'>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2><b>Password: </b></h2>
                    </td>
                    <td><input type="password" name="password" maxlength='50'></td>
                    </td>
                </tr>
                <tr>
                    <td colspan='2'>
                        <center><button type='Submit' style="background-color:black; border-color:black"
                                name='login_submit'><b>Sign In</b>
                            </button></center>
                    </td>
                </tr>
            </table>
        </div>

        <div align="center">
            <p style="color: #fff; font-size:20px;">Don't have an account?</p>
            <h3><a href='register.php' style="color: black"><b>Register</b></a></h3>
            <br>

        </div>
        </table>
    </form>

    <center>
        <h3><a href='adminindex.php' style="color: black"><b>Admin Login?</b></a></h3>
    </center>

</body>

</html>