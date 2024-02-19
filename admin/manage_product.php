<?php
  session_start();
  ob_start();
  require('top.inc.php');
  $categories_id='';
  $name='';
  $mrp='';
  $price='';
  $qty='';
  $image='';
  $image1='';
  $short_desc='';
  $description='';
  $desc1='';
  $desc2='';
  $desc3='';
  $desc4='';
  $desc5='';
  $desc6='';
  $desc7='';
  $desc8='';
  $warranty='';
  $meta_title='';
  $meta_description='';
  $meta_keyword='';
  $video='';

  $msg='';
  $image_required='required';

  if(isset($_GET['id']) && $_GET['id']!=''){
      
        $image_required='';
        $id=get_safe_value($con, $_GET['id']);
        $res=mysqli_query($con, "select * from product where id='$id'");
        $row=mysqli_fetch_assoc($res);
        // $categories_id= isset($row['categories_id']) ? $row['categories_id'] : '';
        $categories_id=$row['categories_id'];
        $name=$row['name'];
        $mrp=$row['mrp'];
        $price=$row['price'];
        $qty=$row['qty'];
        $short_desc=$row['short_desc'];
        $description=$row['description'];
        $desc1=$row['desc1'];
        $desc2=$row['desc2'];
        $desc3=$row['desc3'];
        $desc4=$row['desc4'];
        $desc5=$row['desc5'];
        $desc6=$row['desc6'];
        $desc7=$row['desc7'];
        $desc8=$row['desc8'];
        $warranty=$row['warranty'];
        $meta_title=$row['meta_title'];
        $meta_description=$row['meta_description'];
        $meta_keyword=$row['meta_keyword'];
        $video=$row['video'];
      }
      if(isset($_POST['submit'])){
        $categories_id = get_safe_value($con, $_POST['categories_id']);
        $name = get_safe_value($con, $_POST['name']);
        $mrp = get_safe_value($con, $_POST['mrp']);
        $price = get_safe_value($con, $_POST['price']);
        $qty = get_safe_value($con, $_POST['qty']);
        $short_desc = get_safe_value($con, $_POST['short_desc']);
        $description = get_safe_value($con, $_POST['description']);
        $desc1 = get_safe_value($con, $_POST['desc1']);
        $desc2 = get_safe_value($con, $_POST['desc2']);
        $desc3 = get_safe_value($con, $_POST['desc3']);
        $desc4 = get_safe_value($con, $_POST['desc4']);
        $desc5 = get_safe_value($con, $_POST['desc5']);
        $desc6 = get_safe_value($con, $_POST['desc6']);
        $desc7 = get_safe_value($con, $_POST['desc7']);
        $desc8 = get_safe_value($con, $_POST['desc8']);
        $warranty = get_safe_value($con, $_POST['warranty']);
        $meta_title = get_safe_value($con, $_POST['meta_title']);
        $meta_description = get_safe_value($con, $_POST['meta_description']);
        $meta_keyword = get_safe_value($con, $_POST['meta_keyword']);
        $video = get_safe_value($con, $_POST['video']);


        $res=mysqli_query($con, "select * from product where name='$name'");
        $check=mysqli_num_rows($res);
        // if($check>0){
        //   $msg="Product Already Exists";
        // } else{


      if(isset($_GET['id']) && $_GET['id']!=''){
      if ($_FILES['image']['name'] != '') {
      $image = rand(1111111, 9999999) . '_' . $_FILES['image'];
      move_uploaded_file($_FILES['image']['tmp_name'], PRODUCT_IMAGE_SERVER_PATH . $image);
      $update_sql = "UPDATE product SET 
                    categories_id='$categories_id', 
                    name='$name',  
                    mrp='$mrp',
                    price='$price', 
                    qty='$qty',  
                    short_desc='$short_desc', 
                    description='$description',
                    desc1='$desc1',
                    desc2='$desc2',
                    desc3='$desc3',
                    desc4='$desc4',
                    desc5='$desc5',
                    desc6='$desc6',
                    desc7='$desc7',
                    desc8='$desc8',

                    warranty='$warranty',
                    meta_title='$meta_title', 
                    meta_description='$meta_description', 
                    meta_keyword='$meta_keyword',
                    image='$image', 
                    video='$video' 
                    WHERE id='$id'";
} else {
    $update_sql = "UPDATE product SET 
                    categories_id='$categories_id', 
                    name='$name',  
                    mrp='$mrp', 
                    price='$price',  
                    video='$video',  
                    qty='$qty',  
                    short_desc='$short_desc', 
                    description='$description',
                    desc1='$desc1',
                    desc2='$desc2',
                    desc3='$desc3',
                    desc4='$desc4',
                    desc5='$desc5',
                    desc6='$desc6',
                    desc7='$desc7', 
                    desc8='$desc8',
                    warranty='$warranty',
                    meta_title='$meta_title', 
                    meta_description='$meta_description', 
                    meta_keyword='$meta_keyword' 
                    WHERE id='$id'";
}
mysqli_query($con, $update_sql);

      } else {
    $image = rand(1111111, 9999999) . '_' . $_FILES['image'];
    move_uploaded_file($_FILES['image']['tmp_name'], PRODUCT_IMAGE_SERVER_PATH . $image);

    $image1 = rand(1111111, 9999999) . '_' . $_FILES['image1'];
    move_uploaded_file($_FILES['image1']['tmp_name'], PRODUCT_IMAGE_SERVER_PATH . $image1);

    $image2 = rand(1111111, 9999999) . '_' . $_FILES['image2'];
    move_uploaded_file($_FILES['image2']['tmp_name'], PRODUCT_IMAGE_SERVER_PATH . $image2);

    $image3 = rand(1111111, 9999999) . '_' . $_FILES['image3'];
    move_uploaded_file($_FILES['image3']['tmp_name'], PRODUCT_IMAGE_SERVER_PATH . $image3);

    $image4 = rand(1111111, 9999999) . '_' . $_FILES['image4'];
    move_uploaded_file($_FILES['image4']['tmp_name'], PRODUCT_IMAGE_SERVER_PATH . $image4);

    mysqli_query($con, "insert into product(categories_id, name, mrp, 
        price, qty, short_desc, description, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, warranty, meta_title, meta_description, meta_keyword, status,
        image, image1, image2, image3, image4, video) values('$categories_id', '$name', '$mrp', 
        '$price', '$qty', '$short_desc', '$description', '$desc1', '$desc2', '$desc3', '$desc4', '$desc5', '$desc6', '$desc7', '$desc8', '$warranty', '$meta_title', '$meta_description',
        '$meta_keyword', 1, '$image', '$image1', '$image2', '$image3', '$image4', '$video')");
}

        header('location: product.php');
        ob_end_flush();
        die();
    }

    
    
  // }


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
                  <h5 class="card-title">Products <span>| Shop</span></h5>
                  <h5 class="card-title"><a href="manage_product.php">Add Product </a><span>| Shop</span></h5>

                 <form method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="categories" class="form-label">Enter Product Name</label>
                        <select class="form-control" name="categories_id">
                          <option value="">Select Category</option>
                          <?php
                          $res = mysqli_query($con, "select id,categories from categories order by categories asc");
                           while($row=mysqli_fetch_assoc($res)){
                            if($row['id']==$categories_id){
                                echo "<option selected value=".$row['id'].">".$row['categories']."</option>";
                            } else
                                echo "<option value=".$row['id'].">".$row['categories']."</option>";
                           }
                          ?>
                        </select>
                        <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label">Product Name</label>
                        <input type="text" name="name" placeholder="Enter Product Name" class="form-control" required value="<?php echo $name?>">
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label">MRP</label>
                        <input type="text" name="mrp" placeholder="Enter Product Name" class="form-control" required value="<?php echo $mrp?>">
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label">Price</label>
                        <input type="text" name="price" placeholder="Enter Price" class="form-control" required value="<?php echo $price?>">
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label">Qty</label>
                        <input type="text" name="qty" placeholder="Enter Quantity" class="form-control" <?php echo $qty?>>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label">Image</label>
                        <input type="file" name="image" class="form-control" <?php echo $image_required?>>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label">Additional Image 1</label>
                        <input type="file" name="image1" class="form-control" <?php echo $image_required?>>
                    </div>

                    <div class="form-group">
                        <label for="categories" class="form-control-label">Additional Image 2</label>
                        <input type="file" name="image2" class="form-control" <?php echo $image_required?>>
                    </div>

                    <div class="form-group">
                        <label for="categories" class="form-control-label">Additional Image 3</label>
                        <input type="file" name="image3" class="form-control" <?php echo $image_required?>>
                    </div>

                    <div class="form-group">
                        <label for="categories" class="form-control-label">Additional Image 4</label>
                        <input type="file" name="image4" class="form-control" <?php echo $image_required?>>
                    </div>

                    <div class="form-group">
                        <label for="categories" class="form-control-label">Enter Short Description</label>
                        <textarea name="short_desc" placeholder="Enter Product Short Description" class="form-control" required><?php echo $short_desc?></textarea>
                    </div>

                    <div class="form-group">
                        <label for="categories" class="form-control-label">Description</label>
                        <textarea name="description" placeholder="Enter Product Description" class="form-control" required><?php echo $description?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label"></label>
                        <textarea name="desc1" placeholder="Enter Product Short Description1" class="form-control"><?php echo $desc1?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label"></label>
                        <textarea name="desc2" placeholder="Enter Product Short Description2" class="form-control"><?php echo $desc2?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label"></label>
                        <textarea name="desc3" placeholder="Enter Product Short Description3" class="form-control"><?php echo $desc3?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label"></label>
                        <textarea name="desc4" placeholder="Enter Product Short Description4" class="form-control"><?php echo $desc4?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label"></label>
                        <textarea name="desc5" placeholder="Enter Product Short Description5" class="form-control"><?php echo $desc5?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label"></label>
                        <textarea name="desc6" placeholder="Enter Product Short Description6" class="form-control"><?php echo $desc6?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label"></label>
                        <textarea name="desc7" placeholder="Enter Product Short Description7" class="form-control"><?php echo $desc7?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label"></label>
                        <textarea name="desc8" placeholder="Enter Product Short Description8  " class="form-control"><?php echo $desc8?></textarea>
                    </div>

                    <div class="form-group">
                        <label for="categories" class="form-control-label">Warranty</label>
                        <input type="text" name="warranty" placeholder="Enter Warranty" class="form-control" required value="<?php echo $warranty?>">
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label">Meta Title</label>
                        <textarea name="meta_title" placeholder="Enter Meta Title" class="form-control"><?php echo $meta_title?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label">Meta Description</label>
                        <textarea name="meta_description" placeholder="Enter Meta Description" class="form-control"><?php echo $meta_description?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label">Meta Keyword</label>
                        <textarea name="meta_keyword" placeholder="Enter Meta Keyword" class="form-control"><?php echo $meta_keyword?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="form-control-label">YouTube Video</label>
                        <textarea name="video" placeholder="Enter YT Link" class="form-control"><?php echo $video?></textarea>
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
