<?php require_once("conn.php");
    if (!isset($_SESSION)) {
        session_start();
    } ?>
<!DOCTYPE html>
<html lang="en">
<?php include "head.php";?>
<body>
    
	<?php include "header.php"; ?>
	
	<!-- start: Slider -->
	<div id="page-title">

		<div id="page-title-inner">

			<!-- start: Container -->
			<div class="container">

				<h2><i class="ico-stats ico-white"></i>Profil</h2>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: 
	<!-- end: Slider -->
			
	<!--start: Wrapper-->
	<div id="wrapper">
				
		<!--start: Container -->
    	<div class="container">
	
      		<!-- start: Hero Unit - Main herounit for a primary marketing message or call to action -->

            <blockquote style="font-size: medium;">
            <b>Reservasi Cafe : </b>
            reservasi-cafe merupakan tempat untuk menampung pengusaha caffe di seluruh indonesia secara online
            
            </blockquote>
            <!--<div class="title"><h3>Keranjang Anda</h3></div>
            <div class="hero-unit">
            </div> -->
			<!-- end: Hero Unit -->

      		<!-- start: Row -->
            
      		
			<!-- end: Row -->
      		
		<!--	<hr>
		
			<!-- start Clients List -->	
		<!--	<div class="clients-carousel">
		
				<ul class="slides clients">
					<li><img src="img/logos/1.png" alt=""/></li>
					<li><img src="img/logos/2.png" alt=""/></li>	
					<li><img src="img/logos/3.png" alt=""/></li>
					<li><img src="img/logos/4.png" alt=""/></li>
					<li><img src="img/logos/5.png" alt=""/></li>
					<li><img src="img/logos/6.png" alt=""/></li>
					<li><img src="img/logos/7.png" alt=""/></li>
					<li><img src="img/logos/8.png" alt=""/></li>
					<li><img src="img/logos/9.png" alt=""/></li>
					<li><img src="img/logos/10.png" alt=""/></li>		
				</ul>
		
			</div>
			<!-- end Clients List -->
		
			<hr>
			
			<!-- start: Row -->
			<div class="row">
				
				<!-- start: Icon Boxes -->
				<div class="icons-box-vert-container">

					<!-- start: Icon Box Start -->
					<div class="span6">
						<div class="icons-box-vert">
							<i class="ico-ok ico-color circle-color big"></i>
							<div class="icons-box-vert-info">
							<h3>Siap melayani</h3>
								<p>reservasi-cafe siap melayani dan menampung kebutuhan online caffe di seluruh indonesia.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- end: Icon Box-->

					<!-- start: Icon Box Start -->
					<div class="span6">
						<div class="icons-box-vert">
							<i class="ico-cup  ico-white circle-color-full big-color"></i>
							<div class="icons-box-vert-info">
							<h3>Di jamin mudah</h3>
								<p>reservasi-cafe memiliki teknologi paling muthir untuk mengedarkan caffe anda di sosial media.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- end: Icon Box -->

				</div>
				<!-- end: Icon Boxes -->
				<div class="clear"></div>
			</div>
			<!-- end: Row -->
			
			<hr>
			
		</div>
		<!--end: Container-->
	
	</div>
	<!-- end: Wrapper  -->			

    <!-- start: Footer Menu -->
	<div id="footer-menu" class="hidden-tablet hidden-phone">

		<!-- start: Container -->
		<div class="container">
			
			<!-- start: Row -->
			<div class="row">

				<!-- start: Footer Menu Logo -->
				<div class="span2">
					<div id="footer-menu-logo">
						<a href="#"><img src="img/logo-web.jpeg" alt="logo" /></a>
					</div>
				</div>
				<!-- end: Footer Menu Logo -->

				<!-- start: Footer Menu Links-->
				<div class="span9">
					
					<div id="footer-menu-links">

						<ul id="footer-nav">


							<li><a href="#">Pelayanan Cepat</a></li>

						</ul>

					</div>
					
				</div>
				<!-- end: Footer Menu Links-->

				<!-- start: Footer Menu Back To Top -->
				<div class="span1">
						
					<div id="footer-menu-back-to-top">
						<a href="#"></a>
					</div>
				
				</div>
				<!-- end: Footer Menu Back To Top -->
			
			</div>
			<!-- end: Row -->
			
		</div>
		<!-- end: Container  -->	

	</div>	
	<!-- end: Footer Menu -->
<?php include "footer.php"; ?>

<!-- start: Java Script -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-1.8.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/flexslider.js"></script>
<script src="js/carousel.js"></script>
<script src="js/jquery.cslider.js"></script>
<script src="js/slider.js"></script>
<script defer="defer" src="js/custom.js"></script>
<!-- end: Java Script -->

</body>
</html>