<?php
  session_start();
  require('top.inc.php'); 

    if(isset($_GET['type']) && $_GET['type']!=''){
      $type=get_safe_value($con, $_GET['type']);
      if($type=='status'){
        $operation=get_safe_value($con,$_GET['operation']);
        $id=get_safe_value($con,$_GET['id']);
        if($operation=='active'){
          $status='1';
        }
        else{
          $status='0';
        }
        $update_status_sql="update product set status='$status' where id='$id'";
        mysqli_query($con, $update_status_sql);
      }
      if($type=='delete'){
        $id=get_safe_value($con,$_GET['id']);
        $delete_sql="delete from product where id='$id'";
        mysqli_query($con, $delete_sql);
      }
    }
  $sql = "SELECT product.*, categories.categories 
        FROM product 
        INNER JOIN categories ON product.categories_id = categories.id 
        ORDER BY product.id DESC";


//   $sql="select * from categories order by categories asc";
  // $sql="select *from product order by id desc";
  $res = mysqli_query($con, $sql); 
  
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
                  <h5 class="card-title">Products <span>| Shop</span></h5>
                  <h5 class="card-title"><a href="manage_product.php">Add Products </a><span>| Shop</span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">ID</th>
                        <th scope="col">Catagories</th>
                        <th scope="col">Name</th>
                        <th scope="col">Image</th>
                        <th scope="col">MRP</th>
                        <th scope="col">Price</th>
                        <th scope="col">Qty</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                      $i=1;
                       while($row=mysqli_fetch_assoc($res)){?>
                      <tr>
                        <td scope="col"><?php echo $i ?></td>
                        <td scope="col"><?php echo $row['id'] ?></td>
                        <td scope="col"><?php echo $row['categories'] ?></td>
                        <td scope="col"><?php echo $row['name'] ?></td>
                        <td scope="col"><img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$row['image'] ?>" width="50px"/></td>
                        <td scope="col"><?php echo $row['mrp'] ?></td>
                        <td scope="col"><?php echo $row['price'] ?></td>
                        <td scope="col"><?php echo $row['qty'] ?></td>
                        <td scope="col">
                          <?php
                           if($row['status']==1){
                              echo "<span class='badge badge-complete'><a href='?type=status&operation=deactive&id=".$row['id']."'>Active</a></span>&nbsp;";
                           } else{
                              echo "<span class='badge badge-pending'><a href='?type=status&operation=active&id=".$row['id']."'>Deactive</a></span>";
                           }
                               echo "<span class='badge badge-edit'><a href='manage_product.php?id=".$row['id']."'>Edit</a></span>&nbsp;";
                              echo "<span class='badge badge-delete'><a href='?type=delete&id=".$row['id']."'>Delete</a></span>";

                             
                          ?>
                        </td>
                      </tr>
                      <?php } ?>
                    </tbody>
                  </table>

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
