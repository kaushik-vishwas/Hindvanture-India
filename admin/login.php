<?php
session_start();
require('connection.inc.php');
require('functions.inc.php');
$msg = '';
if(isset($_POST['submit'])){
     $username = get_safe_value($con, $_POST['username']);
     $password = get_safe_value($con, $_POST['password']);
     $sql = "select * from admin_users where username='$username' and password='$password'";
     $res = mysqli_query($con, $sql); 
     if (!$res) {
    die("Query failed: " . mysqli_error($con));
}
     $count = mysqli_num_rows($res);
   if($count>0){ 
   $_SESSION['ADMIN_LOGIN'] = 'yes';
   $_SESSION['ADMIN_USERNAME'] = $username;
   echo "Session variables set successfully";
   header('location: categories.php');
   die();
}
     else{
        $msg="Please enter correct login details";
     }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    
<section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                  <img src=""
                    style="width: 185px;" alt="logo">
                  <h4 class="mt-1 mb-5 pb-1">Something Text Here</h4>
                </div>

                <form method="post"> 
                  <p>Please login to your account</p>

                  <div class="form-outline mb-4">
                    <input type="text" id="form2Example11" class="form-control" name="username"
                      placeholder="Phone number or email address" required>
                    <label class="form-label" for="form2Example11">Username</label>
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" id="form2Example22" class="form-control" name="password" required>
                    <label class="form-label" for="form2Example22">Password</label>
                  </div>

                  <div class="text-center pt-1 mb-5 pb-1">
                    <button type="submit" name="submit" class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3">Log
                      in</button>
                    <!-- <a class="text-muted" href="#!">Forgot password?</a> -->
                  </div>
                </form>
                

              </div>
              <div class="field_error"><?php echo $msg ?></div>

            </div>
            
            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">We are more than just a company</h4>
                <p class="small mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                  exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>