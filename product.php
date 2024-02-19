<?php 
   require('top.php');
   
    
   // Check if the form is submitted
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit_review'])) {
    // Get form data
    $product_id = mysqli_real_escape_string($con, $_GET['id']);
    $reviewer_name = mysqli_real_escape_string($con, $_POST['reviewer_name']);
    $rate = mysqli_real_escape_string($con, $_POST['rate']);
    $reviewer_email = mysqli_real_escape_string($con, $_POST['reviewer_email']);
    $review = mysqli_real_escape_string($con, $_POST['review']);
   
    // Insert data into the database
    $insert_query = "INSERT INTO product_reviews (product_id, reviewer_name, reviewer_email, rate, review) VALUES ('$product_id', '$reviewer_name', '$reviewer_email', '$rate', '$review')";
    mysqli_query($con, $insert_query);
   }
   
     
   
   if(isset($_GET['id'])){
   	$product_id=mysqli_real_escape_string($con,$_GET['id']);
   	if($product_id>0){
   		$get_product=get_product($con,'','',$product_id);
   	}else{
   		?>
<script>
   window.location.href='index.php';
</script>
<?php
   }
   }else{
   ?>
<script>
   window.location.href='index.php';
</script>
<?php
   }
   ?>
<!-- Start Bradcaump area -->
<div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url('assets/img/normalBg.webp') no-repeat scroll center center / cover ;">
   <div class="ht__bradcaump__wrap">
      <div class="container">
         <div class="row">
            <div class="col-xs-12">
               <div class="bradcaump__inner" style="background-color: yellowgreen;">
                  <nav class="bradcaump-inner" >
                     <a class="breadcrumb-item" href="index.php" style="color: blue; font-size: 16px;">Home</a>
                     <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                     <a class="breadcrumb-item" style="color: blue; font-size: 16px;" href="categories.php?id=<?php echo $get_product['0']['categories_id']?>"><?php echo $get_product['0']['categories']?></a>
                     <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                     <span class="breadcrumb-item active" style="color: blue; font-size: 16px;"><?php echo $get_product['0']['name']?></span>
                  </nav>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- End Bradcaump area -->
<!-- Start Product Details Area -->
<section class="htc__product__details bg__white ptb--100">
   <!-- Start Product Details Top -->
   <div class="htc__product__details__top">
      <div class="containe">
         <div class="row">
            <div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
               <div class="htc__product__details__tab__content">
                  <!-- Start Product Big Images -->
                  <div class="product__big__images">
                     <div class="portfolio-full-image tab-content" id="mainimage">
                        <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$get_product['0']['image']?>">
                     </div>
                     <div class="container" style="padding-top: 20px;">
                        <div class="row">
                           <div class="col-3" onlick="fun1()">
                              <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$get_product['0']['image1']?>">
                           </div>
                           <div class="col-3">
                              <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$get_product['0']['image2']?>">
                           </div>
                           <div class="col-3">
                              <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$get_product['0']['image3']?>">
                           </div>
                           <div class="col-3">
                              <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$get_product['0']['image4']?>">
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- End Product Big Images -->
               </div>
            </div>
            <div class="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
               <div class="ht__product__dtl">
                  <h2 style="font-family: Arial, Helvetica, sans-serif;"><?php echo $get_product['0']['name']?></h2>
                  <ul  class="pro__prize">
                     <li style="font-size: 25px; font-weight: bold">₹. <?php echo $get_product['0']['price']?>/- </li>
                     <li class="old__prize"> </li>
                     <span style="padding-right: 10px;">mrp.</span>
                     <li class="old__prize mrp"> <?php echo $get_product['0']['mrp']?> </li>
                     <li class="off" style="color: green;">
                        <?php
                           $percentageOff = (($get_product['0']['mrp'] - $get_product['0']['price']) / $get_product['0']['mrp']) * 100;
                           $floorPercentageOff = floor($percentageOff);
                           echo $floorPercentageOff . '% off';
                           ?>
                     </li>
                  </ul>
                  <p class="pro__info" style="font-family: Arial, Helvetica, sans-serif;"><?php echo $get_product['0']['short_desc']?></p>
                  <div class="ht__pro__desc">
                     <div class="sin__desc">
                        <button style="color: #fff; background-color: green; border-radius: 5px; padding: 7px;" class="reviewClick" onclick="toggleReviewSection()">Review</button>
                        <button style="color: #fff; background-color: green; border-radius: 5px; padding: 7px;" class="reviewClick" onclick="toggleReviewSection()">Rating</button>
                        <br>
                           <div class="reviewStatistics">
   <?php
   // Fetch reviews from the database
   $product_id = mysqli_real_escape_string($con, $_GET['id']);
   $fetch_reviews_query = "SELECT COUNT(*) as num_reviews, AVG(rate) as avg_rating FROM product_reviews WHERE product_id = '$product_id'";
   $result = mysqli_query($con, $fetch_reviews_query);
   $row = mysqli_fetch_assoc($result);

   // Display the number of reviews and average rating
   $numReviews = $row['num_reviews'];
   $avgRating = round($row['avg_rating'], 1);

   echo "<p> $numReviews Reviews , </p>";
   echo "<p> $avgRating <span style='color: green'>&#9733;</span></p>";
   ?>
</div>
                        <p><span>Availability:</span> In Stock</p>
                        <p class="pro__info">Warranty : <?php echo $get_product['0']['warranty']?> Years</p>
                     </div>
                     <div class="sin__desc">
                        <p>
                           <span>Qty:</span> 
                           <select id="qty">
                              <option>1</option>
                              <option>2</option>
                              <option>3</option>
                              <option>4</option>
                              <option>5</option>
                              <option>6</option>
                              <option>7</option>
                              <option>8</option>
                              <option>9</option>
                              <option>10</option>
                           </select>
                        </p>
                     </div>
                     <div class="sin__desc align--left">
                        <p><span>Categories:</span></p>
                        <ul class="pro__cat__list">
                           <li><a href="#"><?php echo $get_product['0']['categories']?></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
               <a class="fr__btn" href="javascript:void(0)" onclick="manage_cart('<?php echo $get_product['0']['id']?>','add')">Add to cart</a>
               <a class="fr__btn" href="javascript:void(0)" onclick="manage_cart('<?php echo $get_product['0']['id']?>','add')">Buy Now</a>
               <div style="padding-top: 20px">
                  <p class="pro__info"> <?php echo $get_product['0']['desc1']?> </p>
                  <p class="pro__info"> <?php echo $get_product['0']['desc2']?> </p>
                  <p class="pro__info"> <?php echo $get_product['0']['desc3']?> </p>
                  <p class="pro__info"> <?php echo $get_product['0']['desc4']?> </p>
                  <p class="pro__info"> <?php echo $get_product['0']['desc5']?> </p>
                  <p class="pro__info"> <?php echo $get_product['0']['desc6']?> </p>
                  <p class="pro__info"> <?php echo $get_product['0']['desc7']?> </p>
                  <p class="pro__info"> <?php echo $get_product['0']['desc8']?> </p>
               </div>
            </div>
         </div>
      </div>
   </div>
   </div>
   <!-- End Product Details Top -->
</section>
<!-- End Product Details Area -->
<!-- Start Product Description -->
<div class="container">
   <div class="row">
      <!-- First Column (col-4) -->
      <div class="col-xs-4">
         <div style="background-color: #f0f0f0; padding: 15px;">
            <div>
               <iframe width="100%" height="" src="<?php echo $get_product['0']['video']?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
         </div>
      </div>
      <div class="col-xs-8">
         <section class="htc__produc__decription bg__white">
            <div class="containe">
               <div class="row">
                  <div class="col-xs-12">
                     <!-- Start List And Grid View -->
                     <ul class="pro__details__tab" role="tablist">
                        <li role="presentation" class="description active"><a href="#description" role="tab" data-toggle="tab">description</a></li>
                     </ul>
                     <!-- End List And Grid View -->
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-12">
                     <div class="ht__pro__details__content">
                        <!-- Start Single Content -->
                        <?php echo $get_product['0']['description']?>
                        <?php echo nl2br($get_product['0']['description']); ?>
                     </div>
                     <!-- End Single Content -->
                  </div>
               </div>
            </div>
      </div>
      </section>
   </div>
</div>
</div>
<!-- End Product Description -->
<!-- Start Category Area -->
<div class="containe">
   <div class="row">
      <div class="col-md-12">
         <!-- Start Category Area -->
         <section class="htc__category__area ptb--100">
            <div class="containe">
               <div class="row">
                  <div class="col-xs-12">
                     <div class="section__title--2 text-center">
                        <h2 class="title__line">Related Products</h2>
                        <p>The Products from Your interest are Listed Below. You Might Like Them. Please Check Them Out.</p>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- End Category Area -->
         <!-- Start Product Area -->
      </div>
   </div>
</div>
<!-- Fetch Related Products -->
<?php
   // Fetch products from the same category
   $related_products = get_product($con, '', $get_product['0']['categories_id'], '', '', 4);
   
   if (count($related_products) > 0) {
   ?>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
   <div class="htc__product__rightidebar">
      <!-- Start Product View -->
      <?php
         foreach ($related_products as $related_product) {
         ?>
      <!-- Card 2 -->
      <div class="col-md-3 mb-4" >
         <a href="product.php?id=<?php echo $related_product['id'] ?>">
            <div class="card">
               <img src="<?php echo PRODUCT_IMAGE_SITE_PATH . $related_product['image'] ?>" alt="product images">
               <div class="card-body">
                  <h5 class="card-title">
         <a href="product.php?id=<?php echo $related_product['id'] ?>"><?php echo $related_product['name'] ?></a></h5>
         <p class="card-text">Rs. <?php echo $related_product['price'] ?></p>
         <p class="mrp"><?php echo $related_product['mrp'] ?></p>
         <?php
            $percentageOff = (($related_product['mrp'] - $related_product['price']) / $related_product['mrp']) * 100;
            $floorPercentageOff = floor($percentageOff);
            echo $floorPercentageOff . '% off';
            ?>
         <div class="rating">
         <span class="star">&#9733;</span>
         <span class="star">&#9733;</span>
         <span class="star">&#9733;</span>
         <span class="star">&#9733;</span>
         <span class="star">&#9733;</span>
         </div>
         </div>
         <select id="qty">
         <option>1</option>
         <option>2</option>
         <option>3</option>
         <option>4</option>
         <option>5</option>
         <option>6</option>
         <option>7</option>
         <option>8</option>
         <option>9</option>
         <option>10</option>
         </select>
         <a class="fr__btn" href="javascript:void(0)" onclick="manage_cart('<?php echo $related_product['id'] ?>','add')">Buy Now</a>
         </div>
         </a>
      </div>
      <?php
         }
         ?>
   </div>
</div>
<?php
   }
   ?>
<div class="reviewSection" id="reviewSection">
   <div class="addReview">
      <div class="row">
         <div class="contact-form-wrap mt--60">
            <div class="col-xs-12">
               <div class="contact-title">
                  <h2 class="title__line--6">Add Your Review</h2>
               </div>
            </div>
            <div class="col-xs-7">
               <form id="contact-form" action="#" method="post">
                  <div class="single-contact-form">
                     <div class="contact-box name">
                        <input type="text" id="reviewer_name" name="reviewer_name" placeholder="Your Name">
                        <input type="email" id="reviewer_email" name="reviewer_email" placeholder="Email Address">
                     </div>
                     <select id="rate" name="rate">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                     </select>
                  </div>
                  <div class="single-contact-form">
                     <div class="contact-box message">
                        <textarea name="review" id="review" placeholder="Write Here"></textarea>
                     </div>
                  </div>
                  <div class="contact-btn">
                     <button type="submit" name="submit_review" class="fv-btn">Add Review</button>
                  </div>
               </form>
               <div class="form-output">
                  <p class="form-messege"></p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- use a loop  to show all the reviews for the product -->
   <div class="reviewList" id="reviewList">
      <h1>Reviews</h1>
      <?php
         // Fetch reviews from the database
         $product_id = mysqli_real_escape_string($con, $_GET['id']);
         $fetch_reviews_query = "SELECT * FROM product_reviews WHERE product_id = '$product_id'";
         $result = mysqli_query($con, $fetch_reviews_query);
         
         while ($row = mysqli_fetch_assoc($result)) {
         echo "<div class='reviewBox'>";
         echo "<h6>" . $row['reviewer_name'] . "</h6>";
         echo "<h6>";
         
         // Attach stars based on the rate
         for ($i = 1; $i <= 5; $i++) {
         if ($i <= $row['rate']) {
             echo "<span style='color: green;'>&#9733;</span>";
         } else {
             echo "<span style='color: green;'>&#9734;</span>";
         }
         }
         
         
         echo "</h6>";
         echo "<p>" . $row['review'] . "</p>";
         echo "</div>";
         }
         ?>
   </div>
   <!-- end loop -->





   <!-- End Product Area -->
   <?php require('footer.php')?>
</div>