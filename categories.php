<?php 
   require('top.php');
   if(isset($_GET['id']) && $_GET['id']!=''){
   	$cat_id=mysqli_real_escape_string($con,$_GET['id']);
   	if($cat_id>0){
   		$get_product=get_product($con,'',$cat_id);
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
<div class="body__overlay"></div>
<!-- Start Bradcaump area -->
<div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(banner11.jpg) no-repeat scroll center center / cover ;">
   <div class="ht__bradcaump__wrap">
      <div class="container">
         <div class="row">
            <div class="col-xs-12">
               <div class="bradcaump__inner" style="background-color: yellowgreen; font-weight: 20px">
                  <nav class="bradcaump-inner">
                     <a class="breadcrumb-item" href="index.php" style="font-weight: 600; font-size: 16px;">Home</a>
                     <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                     <span class="breadcrumb-item active" style="font-weight: 600; font-size: 16px;">Products</span>
                  </nav>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- End Bradcaump area -->
<!-- Start Product Grid -->
<section class="htc__product__grid bg__white ptb--100">
   <div class="container">
      <div class="row">
         <?php if(count($get_product)>0){?>
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="htc__product__rightidebar">
               <div class="htc__grid__top">
                  <div class="htc__select__option">
                     <select class="ht__select">
                        <option>Default softing</option>
                        <option>Sort by popularity</option>
                        <option>Sort by average rating</option>
                        <option>Sort by newness</option>
                     </select>
                  </div>
               </div>
               <!-- Start Product View -->
               <?php
                  $get_product=get_product($con,'', $cat_id);
                  foreach($get_product as $list){
                  ?>
               <!-- Card 2 -->
               <div class="col-md-3 mb-4">
                 <a href="product.php?id=<?php echo $list['id']?>">
                  <div class="card">
                    
                     <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$list['image']?>" alt="product images">
                    
                     <div class="card-body">
                        <h5 class="card-title"><a href="product.php?id=<?php echo $list['id']?>"><?php echo $list['name']?></a></h5>
                        <p class="card-text">Rs. <?php echo $list['price']?></p>
                        <p class="mrp"><?php echo $list['mrp']?></p>
                        
                        <?php
                           $percentageOff = (($list['mrp'] - $list['price']) / $list['mrp']) * 100;
                           $floorPercentageOff = floor($percentageOff);
                           echo $floorPercentageOff.'% off';
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
                     <a class="fr__btn" href="javascript:void(0)" onclick="manage_cart('<?php echo $list['id']?>','add')">Buy Now</a>
                  </div>
                 </a>
               </div>
               <?php } ?>
            </div>
         </div>
         <?php } else { 
            echo "Data not found";
            } ?>
      </div>
   </div>
</section>
<!-- End Product Grid -->
<!-- End Banner Area -->
<?php require('footer.php')?>