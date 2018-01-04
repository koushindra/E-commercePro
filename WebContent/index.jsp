<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<title>Electronix Store</title>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
</head>
<body>
	<div id="main_container">
		<div class="top_bar">
			<div class="top_search">
				<div class="search_text">
					<a href="#">Advanced Search</a>
				</div>
				<input type="text" class="search_input" name="search" /> <input
					type="image" src="images/search.gif" class="search_bt" />
			</div>
			<div class="languages">
				<div class="lang_text">Languages:</div>
				<a href="#" class="lang"><img src="images/en.gif" alt=""
					border="0" /></a> <a href="#" class="lang"><img
					src="images/de.gif" alt="" border="0" /></a>
			</div>
		</div>
		<div id="header">
			<div id="logo">
				<a href="#"><img src="images/logo.png" alt="" border="0"
					width="237" height="140" /></a>
			</div>
			<div class="oferte_content">
				<div class="top_divider">
					<img src="images/header_divider.png" alt="" width="1" height="164" />
				</div>
				<div class="oferta">
					<div class="oferta_content">
						<img src="images/laptop.png" width="94" height="92" alt=""
							border="0" class="oferta_img" />
						<div class="oferta_details">
							<div class="oferta_title">Samsung GX 2004 LM</div>
							<div class="oferta_text">Lorem ipsum dolor sit amet,
								consectetur adipisicing elit, sed do eiusmod tempor incididunt
								ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
								nostrud exercitation ullamco</div>
							<a href="details.jsp" class="details">details</a>
						</div>
					</div>
					<div class="oferta_pagination">
						<span class="current">1</span> <a href="#">2</a> <a href="#">3</a>
						<a href="#">4</a> <a href="#">5</a>
					</div>
				</div>
				<div class="top_divider">
					<img src="images/header_divider.png" alt="" width="1" height="164" />
				</div>
			</div>
			<!-- end of oferte_content-->
		</div>
		<div id="main_content">
			<div id="menu_tab">
				<div class="left_menu_corner"></div>
				<ul class="menu">
					<li><a href="#" class="nav1"> Home</a></li>
					<li class="divider"></li>
					<li><a href="#" class="nav2">Products</a></li>
					<li class="divider"></li>
					<li><a href="#" class="nav3">Specials</a></li>
					<li class="divider"></li>
					<li><a href="loginPage.jsp" class="nav4">My account</a></li>
					<li class="divider"></li>
					<li><a href="registration.jsp" class="nav4">Sign Up</a></li>
					<li class="divider"></li>
					<li><a href="#" class="nav5">Shipping</a></li>
					<li class="divider"></li>
					<li><a href="contact.html" class="nav6">Contact Us</a></li>
					<li class="divider"></li>
					<li class="currencies">Currencies <select>
							<option>US Dollar</option>
							<option>Euro</option>
					</select>
					</li>
				</ul>
				<div class="right_menu_corner"></div>
			</div>
			<!-- end of menu tab -->
			<div class="crumb_navigation">
				Navigation: <span class="current">Home</span>
			</div>
			<div class="left_content">
				<div class="title_box">Categories</div>
				<ul class="left_menu">
					<li class="odd"><a href="#">Processors</a></li>
					<li class="even"><a href="#">Motherboards</a></li>
					<li class="odd"><a href="#">Desktops</a></li>
					<li class="even"><a href="#">Laptops &amp; Notebooks</a></li>
					<li class="odd"><a href="#">Processors</a></li>

				</ul>
				<div class="title_box">Special Products</div>
				<div class="border_box">
					<div class="product_title">
						<a href="detail.jsp">Motorola 156 MX-VL</a>
					</div>
					<div class="product_img">
						<a href="detail.jsp"><img src="images/laptop.png" alt=""
							border="0" /></a>
					</div>
					<div class="prod_price">
						<span class="reduce">350$</span> <span class="price">270$</span>
					</div>
				</div>
				<div class="title_box">Newsletter</div>
				<div class="border_box">
					<input type="text" name="newsletter" class="newsletter_input"
						value="your email" /> <a href="#" class="join">join</a>
				</div>
				<div class="banner_adds">
					<a href="#"><img src="images/bann2.jpg" alt="" border="0" /></a>
				</div>
			</div>
			<!-- end of left content -->
			<div class="center_content">


				<div class="center_title_bar">Latest Products</div>
				<div class="prod_box">
					<div class="top_prod_box"></div>

					<div class="center_prod_box">
						<div class="product_title">
							<a href="detail.jsp">Motorola 156 MX-VL</a>
						</div>
						<div class="product_img">
							<a href="detail.jsp"><img src="images/laptop.gif" alt=""
								border="0" /></a>
						</div>
						<div class="prod_price">
							<span class="reduce">350$</span> <span class="price">270$</span>
						</div>
					</div>
					<div class="bottom_prod_box"></div>
					<div class="prod_details_tab">
						<a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img
							src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a
							href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img
							src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a
							href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img
							src="images/favorites.gif" alt="" border="0" class="left_bt" /></a>
						<a href="detail.jsp" class="prod_details">details</a>
					</div>
				</div>
				<div class="prod_box">
					<div class="top_prod_box"></div>
					<div class="center_prod_box">
						<div class="product_title">
							<a href="detail.jsp">Iphone Apple</a>
						</div>
						<div class="product_img">
							<a href="detail.jsp"><img src="images/p4.gif" alt=""
								border="0" /></a>
						</div>
						<div class="prod_price">
							<span class="price">270$</span>
						</div>
					</div>
					<div class="bottom_prod_box"></div>
					<div class="prod_details_tab">
						<a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img
							src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a
							href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img
							src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a
							href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img
							src="images/favorites.gif" alt="" border="0" class="left_bt" /></a>
						<a href="detail.jsp" class="prod_details">details</a>
					</div>
				</div>


				<div class="center_title_bar">Recommended Products</div>
				<div class="prod_box">
					<div class="top_prod_box"></div>
					<div class="center_prod_box">
						<div class="product_title">
							<a href="detail.jsp">Motorola 156 MX-VL</a>
						</div>
						<div class="product_img">
							<a href="detail.jsp"><img src="images/laptop.gif"
								alt="image not available" border="0" /></a>
						</div>
						<div class="prod_price">
							<span class="reduce">350$</span> <span class="price">270$</span>
						</div>
					</div>
					<div class="bottom_prod_box"></div>
					<div class="prod_details_tab">
						<a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img
							src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a
							href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img
							src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a
							href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img
							src="images/favorites.gif" alt="" border="0" class="left_bt" /></a>
						<a href="detail.jsp" class="prod_details">details</a>
					</div>
				</div>
				<div class="prod_box">
					<div class="top_prod_box"></div>
					<div class="center_prod_box">
						<div class="product_title">
							<a href="detail.jsp">Iphone Apple</a>
						</div>
						<div class="product_img">
							<a href="detail.jsp"><img src="images/p4.gif" alt=""
								border="0" /></a>
						</div>
						<div class="prod_price">
							<span class="price">270$</span>
						</div>
					</div>
					<div class="bottom_prod_box"></div>
					<div class="prod_details_tab">
						<a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img
							src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a
							href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img
							src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a
							href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img
							src="images/favorites.gif" alt="" border="0" class="left_bt" /></a>
						<a href="detail.jsp" class="prod_details">details</a>
					</div>
				</div>
				<div class="prod_box">
					<div class="top_prod_box"></div>
					<div class="center_prod_box">
						<div class="product_title">
							<a href="detail.jsp">Samsung Webcam</a>
						</div>
						<div class="product_img">
							<a href="detail.jsp"><img src="images/p5.gif" alt=""
								border="0" /></a>
						</div>
						<div class="prod_price">
							<span class="reduce">350$</span> <span class="price">270$</span>
						</div>
					</div>
					<div class="bottom_prod_box"></div>
					<div class="prod_details_tab">
						<a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img
							src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a
							href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img
							src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a
							href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img
							src="images/favorites.gif" alt="" border="0" class="left_bt" /></a>
						<a href="detail.jsp" class="prod_details">details</a>
					</div>
				</div>
			</div>
			<!-- end of center content -->
			<div class="right_content">
				<div class="shopping_cart">
					<div class="cart_title">Shopping cart</div>
					<div class="cart_details">
						3 items <br /> <span class="border_cart"></span> Total: <span
							class="price">350$</span>
					</div>
					<div class="cart_icon">
						<a href="#" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img
							src="images/shoppingcart.png" alt="" width="48" height="48"
							border="0" /></a>
					</div>
				</div>


				<!-- end of right content -->
			</div>
			<!-- end of main content -->
			<div class="footer">
				<div class="left_footer">
					<img src="images/footer_logo.png" alt="" width="170" height="49" />
				</div>
				<div class="center_footer">
					Template name. All Rights Reserved 2008<br /> <a
						href="http://csscreme.com"><img src="images/csscreme.jpg"
						alt="csscreme" border="0" /></a><br /> <img src="images/payment.gif"
						alt="" />
				</div>
				<div class="right_footer">
					<a href="#">home</a> <a href="#">about</a> <a href="#">sitemap</a>
					<a href="#">rss</a> <a href="contact.html">contact us</a>
				</div>
			</div>
		</div>
		<!-- end of main_container -->
</body>
</html>