<?php
include 'connect.php';
session_start();
if ($_SESSION['log'] == '') {
  header("location:sindex.php");
}
include 'header.php';
?>

<style>
  body{
    display: block;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: url('images/track-anime-art.jpg');
    background-size:cover;
    background-position: center;
}
  .container {
    border-spacing: 10px;
    font-family: Montserrat, sans-serif;
    font-size: 18px !important;
    border: 2px solid grey;
    margin-top: 30px;
    margin-bottom: 50px;
    padding-top: 50px;
    padding-right: 50px;
    padding-bottom: 50px;
    padding-left: 150px;
    align-content: center;
  }

  .button {
    padding: 15px 32px;
    align-content: left;
    color: white;
    background-color: black;
  }

  #number {
    overflow: hidden;
    width: 600px;
  }

  input[type=number] {
    width: 250px;
  }
</style>


</script>
</head>

<body>
  <h1 style= "color:sandybrown">
    <center><b><img src="https://img.icons8.com/bubbles/80/000000/train.png" />Train Ticket Booking &nbsp<img
          src="https://img.icons8.com/officel/56/000000/tracks-intersection.png" /></center></b>
  </h1>
  <form method='post' action='book_action.php' align='center'>

    <div class="container">
      <section id="form" class="formborder">
        <div class="container2">
          <form>
            <div class="form-row row justify-content-around" name="source">
              &nbsp

              <div class="form-group col-md-5" name="source">
                <label for="inputEmail4">SOURCE STATION :</label>
                <select id="inputState" class="form-control" name="source">
                  <option>Kathmandu</option>
                  <option>Pokhara</option>
                  <option>Lumbini</option>
                </select>

                <!-- <input type="email" class="form-control" id="inputEmail4" placeholder="FROM">-->
              </div>

              <div class="form-group col-md-5" name="dest">
                <label for="inputPassword4">
                  FINAL DESTINATION :</label>
                <select id="inputState" class="form-control" name="dest">

                  <option>Kathmandu</option>
                  <option>Pokhara</option>
                  <option>Lumbini</option>
                </select>

                <!--<input type="password" class="form-control" id="inputPassword4" placeholder="TO">-->
              </div>

              <center>
                <div class="form-group col-md-5" name="class">
                  <label for="inputPassword4">
                    Train Class :</label>
                  <select id="inputState" class="form-control" name="class">

                    <option>First</option>
                    <option>Second</option>
                    <option>A.C</option>

                  </select>

                </div>

                <center>
                  <div class="form-group col-md-5" name="type">
                    <label for="inputState">JOURNEY TYPE :</label>
                    <select id="inputState" class="form-control" name="type">
                      <option>Single</option>
                      <option>Return</option>
                    </select>
                  </div>


                  <br>
                  <div class="form-row row justify-content-aroundd">
                    <div class="form-group col-md-16">
                      <center><label for="inputState">
                          <h8>NO OF PASSENGERS :</h8>
                        </label></center>
                      <center> <input type="number" name="number" required min="1" max="5"></center>
                    </div>



                    <div>
                      <button type="submit" class="button" name="login_submit">Proceed</button>

                    </div>
          </form>
        </div>

      </section>
    </div>
    <ul class="copyright">
								<li>&copy; BANG Railways.</li>
							</ul>
</body>

</html>