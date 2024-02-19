<?php
   require('connection.inc.php');
   require('functions.inc.php');
   require('add_to_cart.inc.php');
   $cat_res=mysqli_query($con,"select * from categories where status=1 order by categories asc");
   $cat_arr=array();
   while($row=mysqli_fetch_assoc($cat_res)){
   	$cat_arr[]=$row;	
   }
   
   $obj=new add_to_cart();
   $totalProduct=$obj->totalProduct();
   ?>
<!doctype html>
<html class="no-js" lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <link rel="icon" type="image/x-icon" href="images/logo/logo.jpg">
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="css/core.css">
      <link rel="stylesheet" href="css/shortcode/shortcodes.css">
      <link rel="stylesheet" href="style.css">
      <link rel="stylesheet" href="css/responsive.css">
      <link rel="stylesheet" href="css/custom.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <title>Hindvanture is Online selling store of Office Automation Products</title>
      <meta name="description" content="Hindvanture provide best quality cash counting machine with fake note detector, paper shredding, cutting, document binding &amp; accessory machines." />
      <meta name="keywords" content="office automation ,office automation products, online selling store, paper shredders machines,onlie office automation products,currency counter machines,lamination machine price,office automation products in india" />
      <link rel="canonical" href="http://hindvanture.com"/>
      <meta name="classification" content=" Office Automation Products"/>
      <meta name="city" content="Delhi,"/>
      <meta name="State" content="Delhi ncr"/>
      <meta name="YahooSeeker"Follow “conntent="Index,"/>
      <meta name="Googlebot" content="Index,Follow"/>
      <meta name="allow-search" content="Yes"/>
      <meta name="distribution" content="Global"/>
      <meta name="Content-Language" content="EN"/>
      <meta property="og:type" content="website" />
      <meta property="og:locality" content="Delhi">
      <meta property="og:region" content="Delhi ncr">
      <meta property="og:country_name" content="India">
      <meta name="robots" content="index,follow"/>
      <meta name="robots" content="noodp, noydir" />
      <meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1" />
      <style>
         .s_title{
         padding-top: 20px;
         font-size: 20px;
         }
         .card{
         height: 650px;
         }
         .header{
         z-index: 10;
         position: relative;
         }
         .main__menu {
         /* display: flex; */
         /* justify-content: center; */
         }
         .main__menu > li > a {
         color: #333333;
         display: block;
         font-size: 14px;
         height: 50px;
         line-height: 30px;
         position: relative;
         text-transform: uppercase;
         font-family: 'Poppins', sans-serif;
         }
         .main__menu li {
         position: relative;
         margin: 0 7px;
         }
         .main__menu > li:hover > a{
         color: #c43b68;
         }
         .logo a{
         display: block;
         }
         .mrp {
         text-decoration: line-through;
         }
         .discounted-price {
         }
         /* Custom CSS to remove underlines from links */
         a {
         text-decoration: none;
         }
         .background-image {
         background-image: url('bg.jpg'); /* Replace 'your-image.jpg' with the actual path to your image */
         background-size: cover;
         background-position: center;
         height: 50vh; /* Adjust the height as needed */
         color: white; /* Set text color to white for better visibility */
         padding: 20px;
         }
         .inner-div {
         /* background-color: #555;  */
         color: white; /* Text color */
         padding: 10px; /* Add some padding for better spacing */
         margin-bottom: 10px; /* Add margin to separate each inner-div */
         }
         .card-text{
         padding-top: 20px;
         }
         /* Add this to your CSS styles */
         .popup {
         display: none;
         position: fixed;
         top: 0;
         left: 0;
         width: 100%;
         height: 100%;
         background-color: rgba(0, 0, 0, 0.5);
         }
         .popup-content {
         position: absolute;
         top: 50%;
         left: 50%;
         transform: translate(-50%, -50%);
         background-color: #fff;
         padding: 20px;
         border-radius: 5px;
         box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
         }
         .close {
         position: absolute;
         top: 10px;
         right: 10px;
         font-size: 20px;
         cursor: pointer;
         }
         .discounted-price{
         font-size: 20px;
         font-weight: 600;
         font-family: Arial, Helvetica, sans-serif;
         }
         .ht__pro__details__content {
         white-space: pre-line;
         }
         .reviewBox {
         border: 1px solid #ccc;
         padding: 10px;
         margin: 5px;
         width: auto;
         }
      </style>
   </head>
   <body>
      <!-- Body main wrapper start -->
      <div class="wrapper">
      <header id="htc__header" class="htc__header__area header--one">
         <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
            <div class="" style="padding-left: 10px">
               <div class="row">
                  <div class="menumenu__container clearfix" >
                     <div class="col-lg-3 col-md-2 col-sm-3 col-xs-5">
                        <div class="logo">
                           <a href="index.php"><img src="images/logo/logo.png" alt="logo images"></a>  
                           <a href="admin/login.php">
                              <h6 style="padding-left: 20px; color: #c43b68">Admin</h6>
                           </a>
                        </div>
                     </div>
                     <div class="col-md-3 col-lg-8 col-sm-4 col-xs-6">
                        <div class="header__right">
                           <div class="header__account">
                              <?php if(isset($_SESSION['USER_LOGIN'])){
                                 echo '<a href="logout.php">Logout</a> <a href="my_order.php">My Order</a>';
                                 }else{
                                 echo '<a href="login.php">Login/Register</a>';
                                 }
                                 ?>
                           </div>
                           <div class="htc__shopping__cart">
                              <a class="cart__menu" href="#"><i class="icon-handbag icons"></i></a>
                              <a href="cart.php"><span class="htc__qua"><?php echo $totalProduct?></span></a>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-12 col-lg-12 col-sm-5 col-xs-3">
                        <nav class="main__menu__nav hidden-xs hidden-sm">
                           <ul class="main__menu">
                              <li class="drop"><a href="index.php" style="font-weight: 600">Home</a></li>
                              <?php
                                 foreach($cat_arr as $list){
                                 	?>
                              <li style="font-weight: 600"><a href="categories.php?id=<?php echo $list['id']?>"><?php echo $list['categories']?></a></li>
                              <?php
                                 }
                                 ?>
                              <li style="font-weight: 600"><a href="contact.php">contact</a></li>
                           </ul>
                        </nav>
                        <div class="mobile-menu clearfix visible-xs visible-sm">
                           <nav id="mobile_dropdown">
                              <ul>
                                 <li><a href="index.php">Home</a></li>
                                 <?php
                                    foreach($cat_arr as $list){
                                    	?>
                                 <li><a href="categories.php?id=<?php echo $list['id']?>"><?php echo $list['categories']?></a></li>
                                 <?php
                                    }
                                    ?>
                                 <li><a href="contact.php">contact</a></li>
                              </ul>
                           </nav>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="mobile-menu-area"></div>
            </div>
         </div>
      </header>