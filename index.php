<?php 
   require('top.php');
   
   ?>
<div class="body__overlay"></div>
<div class="containe">
   <div class="row">
      <!-- First div with card -->
      <div class="col-xs-12 col-sm-3">
         <div class="card" style="background-color: #f2f2f2;" >
            <div class="card-body">
               <div style="padding: 20px;">
                  <h5 class="card-title">Hindvanture: The Company</h5>
                  <a href="about.php">
                     <p class="card-text">About The Company</p>
                  </a>
                  <p class="card-text">PRODUCTS</p>
                  <a href="shredder.php">
                     <p class="card-text">>Paper Shredders Machines</p>
                  </a>
                  <a href="counter.php">
                     <p class="card-text">>Currency Counter Machines</p>
                  </a>
                  <a href="detector.php">
                     <p class="card-text">>Fake Note Detectors UV Light</p>
                  </a>
                  <a href="strip.php">
                     <p class="card-text">>Note Strip Binidng Machines</p>
                  </a>
                  <a href="cutting.php">
                     <p class="card-text">>Paper Cutting Machines</p>
                  </a>
                  <a href="lamination.php">
                     <p class="card-text">>Lamination Machines</p>
                  </a>
                  <a href="lamination.php">
                     <p class="card-text">>Lamination and Bindingg Materials</p>
                  </a>
                  <a href="binding.php">
                     <p class="card-text">>Paper Binding Machines</p>
                  </a>
                  <a href="tapeRoll.php">
                     <p class="card-text">>Note Binding Tape Roll</p>
                  </a>
               </div>
            </div>
         </div>
      </div>
      <!-- Second div with background image -->
      <div class="col-xs-12 col-sm-9">
         <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
               <!-- Wrapper for slides -->
               <div class="carousel-inner" role="listbox">
                  <div class="item active">
                     <img src="banner1.jpg" alt="Slide 1">
                     <div class="carousel-caption">
                        <!-- Content for the first slide -->
                     </div>
                  </div>
                  <div class="item">
                     <img src="banner2.png" width="100%" alt="Slide 2">
                     <div class="carousel-caption">
                        <!-- Content for the second slide -->
                     </div>
                  </div>
                  <div class="item">
                     <img src="banner3.png" width="100%" alt="Slide 3">
                     <div class="carousel-caption">
                        <!-- Content for the third slide -->
                     </div>
                  </div>
               </div>
               <!-- Controls -->
               <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
               <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
               <span class="sr-only">Previous</span>
               </a>
               <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
               <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
               <span class="sr-only">Next</span>
               </a>
            </div>
         </div>
         <!-- Four additional divs -->
         <div class="container" style="padding-top: 20px">
            <div class="row">
               <div class="col-xs-6 col-sm-3">
                  <div class="inner-div" style="background-image: url('banner1.jpg'); background-size: cover; background-repeat: no-repeat; height: 20vh">
                     <!-- <p>Content 1</p>
                        <p>Content 4</p>
                        <p>Content 4</p> -->
                  </div>
               </div>
               <div class="col-xs-6 col-sm-3" >
                  <div class="inner-div" style="background-image: url('banner2.jpg'); background-size: cover; background-repeat: no-repeat; height: 20vh">
                  </div>
               </div>
               <div class="col-xs-6 col-sm-3" >
                  <div class="inner-div" style="background-image: url('banner3.jpg'); background-size: cover; background-repeat: no-repeat;height: 20vh">
                  </div>
               </div>
               <div class="col-xs-6 col-sm-3">
                  <div class="inner-div" style="background-image: url('banner4.jpg'); background-size: cover; background-repeat: no-repeat; height: 20vh"> 
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="containe">
   <div class="row">
      <div class="col-md-12">
         <!-- Start Category Area -->
         <section class="htc__category__area ptb--100">
            <div class="containe">
               <div class="row">
                  <div class="col-xs-12">
                     <div class="section__title--2 text-center">
                        <h2 class="title__line">New Arrivals</h2>
                        <p>The Brand New Arrivals Exclusive Product Only for Your Need </p>
                     </div>
                  </div>
               </div>
               <div class="container mt-4">
                  <div class="row">
                     <?php
                        $get_product=get_product($con,'');
                        foreach($get_product as $list){
                        ?>
                     <!-- Card 2 -->
                     <div class="col-md-3 mb-4">
                        <div class="card">
                           <a href="product.php?id=<?php echo $list['id']?>">
                           <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$list['image']?>" alt="product images">
                           </a>
                           <div class="card-body">
                              <h5 class="card-title"><a href="product.php?id=<?php echo $list['id']?>"><?php echo $list['name']?></a></h5>
                              <p class="card-text">
                                  <span class="discounted-price">₹.<?php echo $list['price']?></span>
                                 <span class="mrp"><?php echo $list['mrp']?></span>
                              </p>
                              <?php
                                 $percentageOff = (($list['mrp'] - $list['price']) / $list['mrp']) * 100;
                                 $floorPercentageOff = floor($percentageOff);
                                 ?>
                              <p class="card-text off" style="color: yellowgreen;"><?php echo $floorPercentageOff.'% off'; ?></p>
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
                           <a class="fr__btn" href="javascript:void(0)" onclick="manage_cart('<?php echo $list['id']?>','add')">Buy Now</a>
                        </div>
                     </div>
                     <?php } ?>
                  </div>
               </div>
            </div>
         </section>
         <!-- End Category Area -->
         <!-- Start Product Area -->
      </div>
   </div>
</div>


<div class="" style="padding: 20px">
   <h2 class="s_title">The Company</h2>
   <p>Hindventure, Established in 2016 has been growing in business volume, size of the organization, product line-up, and Market reach across the country in less than a decade.</p>
   <p>Hindventure is a manufacturer of mid to high-volume banking, office, and business machines, and is the Company Name of  Arun Automation, Hindventure is brand of Product. Hindventure has been in the business of selling high-quality office equipment and accessories for many years.</p>
   <p>A trading company, we have receptive knowledge of available products, brands, and tools available from across the world. We bring only the best products we discovered and present them to you through our website.</p>
   <p>Our many years in the business, we have been blessed to be one of the exclusive distributors of the Arun Automation brand, a notable company that provides a vast array of equipment from binding machines, cutting tools, and other.</p>
   <p>To determine whether Hindventure is the best supplier for your needs, I recommend conducting thorough research and reading reviews from other customers who have used their products and services.</p>
   <p>Look for reviews, ratings, and testimonials to assess their reputation and the quality of their products. Additionally, consider reaching out to the company directly to inquire about their product offerings, pricing, and customer support to determine if they meet your requirements.</p>
   <div class="row" style="padding: 20px">
      <!-- Card 1 -->
      <div class="col-sm-4">
         <div class="thumbnail">
            <img src="mission.jpg" alt="Image 1">
            <div class="caption">
               <h3 class="s_title"><span class="glyphicon glyphicon-star"></span> Mission</h3>
               <p>Our goal is to provide only the best brands, products, and office equipment models for corporate and other commercial settings, ensuring high-quality output, good value, and fast return of investments.
                  This website has been made to ensure that customers can experience a comfortable and convenient shopping experience with added knowledge and awareness about all office supply options that they can take advantage of through our website.
                  We also aim to ensure good customer relations and at the same time, low prices for the best quality.
               </p>
            </div>
         </div>
      </div>
      <!-- Card 2 -->
      <div class="col-sm-4">
         <div class="thumbnail">
            <img src="pricing.jpg" alt="Image 2">
            <div class="caption">
               <h3 class="s_title"><span class="glyphicon glyphicon-heart"></span> PRICES</h3>
               <p>A competitive global player, Hindventure aims to provide the best products for automation and business improvement at a price that our clients cannot overlook.
                  We offer low prices for our products. We do our best to ensure that our prices are competitive across the changing market.
                  if you find a similar product or the same product as ours at a lower price, do not hesitate to contact us and we will do our best to beat and match those prices please contact us for more details and we are sure you will be satisfied with our bids.
               </p>
            </div>
         </div>
      </div>
      <!-- Card 3 -->
      <div class="col-sm-4">
         <div class="thumbnail">
            <img src="quality.jpeg" alt="Image 3">
            <div class="caption">
               <h3 class="s_title"><span class="glyphicon glyphicon-home"></span> QUALITY-SERVICE</h3>
               <p>Beyond the sale, Hindventure does not stop providing high-quality services to our loyal customers. We pride ourselves on top-notch in-house customer service trained to handle any issues and concerns of our clients.
                  We make sure that any problem or issue will be addressed effectively and that your business will continue running no matter what.
               </p>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- End Product Area -->
<?php require('footer.php')?>