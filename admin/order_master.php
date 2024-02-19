<?php
   session_start();
   require('top.inc.php'); 
   
   
   $sql="select * from users order by id desc";
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
   </div>
   <!-- End Page Title -->
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
                        <h5 class="card-title">Order Master</h5>
                        <h5 class="card-title"><a href="manage_categories.php">Manage Catagories </a><span>| Shop</span></h5>
                        <table class="table">
                           <thead>
                              <tr>
                                 <th class="product-thumbnail">Order ID</th>
                                 <th class="product-name"><span class="nobr">Order Date</span></th>
                                 <th class="product-price"><span class="nobr"> Address </span></th>
                                 <th class="product-stock-stauts"><span class="nobr"> Payment Type </span></th>
                                 <th class="product-stock-stauts"><span class="nobr"> Payment Status </span></th>
                                 <th class="product-stock-stauts"><span class="nobr"> Order Status </span></th>
                              </tr>
                           </thead>
                           <tbody>
                              <?php
                                 $res=mysqli_query($con,"select `order`.*,order_status.name as order_status_str from `order`,order_status where order_status.id=`order`.order_status");
                                 while($row=mysqli_fetch_assoc($res)){
                                 ?>
                              <tr>
                                 <td class="product-add-to-cart"><a href="order_master_details.php?id=<?php echo $row['id']?>"> <?php echo $row['id']?></a></td>
                                 <td class="product-name"><?php echo $row['added_on']?></td>
                                 <td class="product-name">
                                    <?php echo $row['address']?><br/>
                                    <?php echo $row['city']?><br/>
                                    <?php echo $row['pincode']?>
                                 </td>
                                 <td class="product-name"><?php echo $row['payment_type']?></td>
                                 <td class="product-name"><?php echo ucfirst($row['payment_status'])?></td>
                                 <td class="product-name"><?php echo $row['order_status_str']?></td>
                              </tr>
                              <?php } ?>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
               <!-- End Recent Sales -->
            </div>
         </div>
         <!-- End Left side columns -->
      </div>
   </section>
</main>
<!-- End #main -->
<?php
   require ('footer.inc.php')
   ?>