<?php
  session_start();
  ob_start();
  require('top.inc.php');
  $categories='';
  $msg='';

  if(isset($_GET['id']) && $_GET['id']!=''){
     $id=get_safe_value($con, $_GET['id']);
     $res=mysqli_query($con, "select * from categories where id='$id'");
     $row=mysqli_fetch_assoc($res);
     $categories=$row['categories'];
   }
  if(isset($_POST['submit'])){
    $categories = get_safe_value($con, $_POST['categories']);

    $res=mysqli_query($con, "select * from categories where categories='$categories'");
    $check=mysqli_num_rows($res);
    if($check>0){
       $msg="Categoreis already exists";
    } else{

    if(isset($_GET['id']) && $_GET['id']!=''){
      mysqli_query($con, "update categories set categories='$categories' where id='$id'");
      
    }
    else{
      mysqli_query($con, "insert into categories(categories, status) values ('$categories','1')");
    }
    header('location: categories.php');
    ob_end_flush();
    die();
    }

  }



?> 

<?php
require ('sidebar.inc.php')
?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">

            <!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- End Reports -->

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Catagories <span>| Shop</span></h5>
                  <h5 class="card-title"><a href="manage_categories.php">Manage Catagories </a><span>| Shop</span></h5>

                 <form method="post">
                    <div class="mb-3">
                        <label for="categories" class="form-label">Enter Category Name</label>
                        <input type="text" name="categories" class="form-control" id="categories" aria-describedby="emailHelp" required value="<?php echo $categories?>">
                        <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                    </div>
                    <button name="submit" id="submit" type="submit" class="btn btn-primary">Submit</button>
                    <div><?php echo $msg?></div>
                 </form>
                </div>
              </div>
            </div><!-- End Recent Sales -->

          </div>
        </div><!-- End Left side columns -->

      </div>
    </section>

  </main><!-- End #main -->

  
<?php
require ('footer.inc.php')
?>
