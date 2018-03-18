<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/pageTaglibs.jsp"%>

<!DOCTYPE html>
<html lang="en-US" prefix="og: http://ogp.me/ns#">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name='viewport'
	content='width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no'>
<title>校园论坛</title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="https://themes.getbootstrap.com/xmlrpc.php" /> 

<link rel='apple-touch-icon' sizes='180x180'
	href='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/fav/apple-touch-icon.png'>
<link rel='icon' type='image/png' sizes='32x32'
	href='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/fav/favicon-32x32.png'>
<link rel='icon' type='image/png' sizes='16x16'
	href='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/fav/favicon-16x16.png'>
<link rel='manifest'
	href='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/fav/manifest.json'>
<link rel='shortcut icon'
	href='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/fav/favicon.ico'>
<meta name='msapplication-config'
	content='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/fav/browserconfig.xml'>
<script
	src='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/jquery.min.js'></script>
<script
	src='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/Chart.min.js'></script>
<script
	src='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/Chart.bundle.min.js'></script>
<script
	src='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/tether.min.js'></script>
<script
	src='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/popper.min.js'></script> 
<script
	src='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/bootstrap.min.js'></script>
<!-- The filemtime is to append a timestamp for the last time the stylesheet was updated to automate cache busting from CloudFlare -->
<script
	src='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/scripts.js?ver=1516485707'></script>

<!--[if lt IE 9]>
        <script src="https://themes.getbootstrap.com/wp-content/themes/dokan/assets/js/html5.js" type="text/javascript"></script>
        <![endif]-->


<!-- This site is optimized with the Yoast SEO plugin v6.3.1 - https://yoast.com/wordpress/plugins/seo/ -->
<link rel="canonical" href="https://themes.getbootstrap.com/my-account/" />
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="article" />
<meta property="og:title" content="My account - Bootstrap Themes" />
<meta property="og:url"
	content="https://themes.getbootstrap.com/my-account/" />
<meta property="og:site_name" content="Bootstrap Themes" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="My account - Bootstrap Themes" />
<script type='application/ld+json'>{"@context":"http:\/\/schema.org","@type":"WebSite","@id":"#website","url":"https:\/\/themes.getbootstrap.com\/","name":"Bootstrap Themes","potentialAction":{"@type":"SearchAction","target":"https:\/\/themes.getbootstrap.com\/?s={search_term_string}","query-input":"required name=search_term_string"}}</script>
<script type='application/ld+json'>{"@context":"http:\/\/schema.org","@type":"Organization","url":"https:\/\/themes.getbootstrap.com\/my-account\/","sameAs":[],"@id":"#organization","name":"Bootstrap Themes","logo":""}</script>
<!-- / Yoast SEO plugin. -->

<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml"
	title="Bootstrap Themes &raquo; Feed"
	href="https://themes.getbootstrap.com/feed/" />
<link rel="alternate" type="application/rss+xml"
	title="Bootstrap Themes &raquo; Comments Feed"
	href="https://themes.getbootstrap.com/comments/feed/" />
<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/themes.getbootstrap.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.8.4"}};
			!function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,56826,8203,55356,56819),0,0),c=j.toDataURL(),b!==c&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55358,56794,8205,9794,65039),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55358,56794,8203,9794,65039),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='select2-css'
	href='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/css/select2.css?ver=3.1.2'
	type='text/css' media='all' />
<link rel='stylesheet' id='woocommerce-layout-css'
	href='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=3.1.2'
	type='text/css' media='all' />
<link rel='stylesheet' id='woocommerce-smallscreen-css'
	href='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=3.1.2'
	type='text/css' media='only screen and (max-width: 768px)' />
<link rel='stylesheet' id='woocommerce-general-css'
	href='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=3.1.2'
	type='text/css' media='all' />
<link rel='stylesheet' id='dokan-fontawesome-css'
	href='https://themes.getbootstrap.com/wp-content/plugins/dokan-lite/assets/vendors/font-awesome/font-awesome.min.css'
	type='text/css' media='all' />
<link rel='stylesheet' id='dokan-select2-css-css'
	href='https://themes.getbootstrap.com/wp-content/plugins/dokan-lite/assets/vendors/select2/select2.css'
	type='text/css' media='all' />
<link rel='stylesheet' id='dokan-pro-style-css'
	href='https://themes.getbootstrap.com/wp-content/plugins/dokan-pro/assets/css/style.css?ver=1519800600'
	type='text/css' media='all' />
<link rel='stylesheet' id='dokan-social-style-css'
	href='https://themes.getbootstrap.com/wp-content/plugins/dokan-pro/assets/css/jssocials.css?ver=1519800600'
	type='text/css' media='all' />
<link rel='stylesheet' id='dokan-social-theme-flat-css'
	href='https://themes.getbootstrap.com/wp-content/plugins/dokan-pro/assets/css/jssocials-theme-flat.css?ver=1519800600'
	type='text/css' media='all' />
<link rel='stylesheet' id='buttons-css'
	href='https://themes.getbootstrap.com/wp-includes/css/buttons.min.css?ver=4.8.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='dashicons-css'
	href='https://themes.getbootstrap.com/wp-includes/css/dashicons.min.css?ver=4.8.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='mediaelement-css'
	href='https://themes.getbootstrap.com/wp-includes/js/mediaelement/mediaelementplayer.min.css?ver=2.22.0'
	type='text/css' media='all' />
<link rel='stylesheet' id='wp-mediaelement-css'
	href='https://themes.getbootstrap.com/wp-includes/js/mediaelement/wp-mediaelement.min.css?ver=4.8.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='media-views-css'
	href='https://themes.getbootstrap.com/wp-includes/css/media-views.min.css?ver=4.8.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='imgareaselect-css'
	href='https://themes.getbootstrap.com/wp-includes/js/imgareaselect/imgareaselect.css?ver=0.9.8'
	type='text/css' media='all' />
<link rel='stylesheet' id='flexslider-css'
	href='https://themes.getbootstrap.com/wp-content/themes/dokan/assets/css/flexslider.css'
	type='text/css' media='all' />
<link rel='stylesheet' id='dokan-opensans-css'
	href='https://fonts.googleapis.com/css?family=Open+Sans%3A400%2C700&#038;ver=4.8.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='dokan-theme-skin-css'
	href='https://themes.getbootstrap.com/wp-content/themes/dokan/assets/css/skins/purple.css'
	type='text/css' media='all' />
<script type='text/javascript'>
/* <![CDATA[ */
var dokan = {"ajaxurl":"https:\/\/themes.getbootstrap.com\/wp-admin\/admin-ajax.php","nonce":"c321ddd913","ajax_loader":"https:\/\/themes.getbootstrap.com\/wp-content\/plugins\/dokan-lite\/assets\/images\/ajax-loader.gif","seller":{"available":"Available","notAvailable":"Not Available"},"delete_confirm":"Are you sure?","wrong_message":"Something went wrong. Please try again.","i18n_choose_featured_img":"Upload featured image","i18n_choose_file":"Choose a file","i18n_choose_gallery":"Add Images to Product Gallery","i18n_choose_featured_img_btn_text":"Set featured image","i18n_choose_file_btn_text":"Insert file URL","i18n_choose_gallery_btn_text":"Add to gallery","duplicates_attribute_messg":"Sorry, this attribute option already exists, Try a different one.","variation_unset_warning":"Warning! This product will not have any variations if this option is not checked.","new_attribute_prompt":"Enter a name for the new attribute term:","remove_attribute":"Remove this attribute?","dokan_placeholder_img_src":"https:\/\/themes.getbootstrap.com\/wp-content\/plugins\/woocommerce\/assets\/images\/placeholder.png","add_variation_nonce":"240f09d126","link_variation_nonce":"373514e3d0","delete_variations_nonce":"22d84a5be0","load_variations_nonce":"75e6e7986f","save_variations_nonce":"2af89139ce","bulk_edit_variations_nonce":"64b7afa19a","i18n_link_all_variations":"Are you sure you want to link all variations? This will create a new variation for each and every possible combination of variation attributes (max 50 per run).","i18n_enter_a_value":"Enter a value","i18n_enter_menu_order":"Variation menu order (determines position in the list of variations)","i18n_enter_a_value_fixed_or_percent":"Enter a value (fixed or %)","i18n_delete_all_variations":"Are you sure you want to delete all variations? This cannot be undone.","i18n_last_warning":"Last warning, are you sure?","i18n_choose_image":"Choose an image","i18n_set_image":"Set variation image","i18n_variation_added":"variation added","i18n_variations_added":"variations added","i18n_no_variations_added":"No variations added","i18n_remove_variation":"Are you sure you want to remove this variation?","i18n_scheduled_sale_start":"Sale start date (YYYY-MM-DD format or leave blank)","i18n_scheduled_sale_end":"Sale end date (YYYY-MM-DD format or leave blank)","i18n_edited_variations":"Save changes before changing page?","i18n_variation_count_single":"%qty% variation","i18n_variation_count_plural":"%qty% variations","i18n_no_result_found":"No Result Found","variations_per_page":"10","store_banner_dimension":{"width":"625","height":"300","flex-width":true,"flex-height":true},"selectAndCrop":"Select and Crop","chooseImage":"Choose Image","product_title_required":"Product title is required","product_category_required":"Product category is required","search_products_nonce":"48683f206c"};
/* ]]> */
</script>
<script type='text/javascript'
	src='https://themes.getbootstrap.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript'
	src='https://themes.getbootstrap.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<!--[if lt IE 8]>
<script type='text/javascript' src='https://themes.getbootstrap.com/wp-includes/js/json2.min.js?ver=2015-05-03'></script>
<![endif]-->
<script type='text/javascript'
	src='https://themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/js/accounting/accounting.min.js?ver=0.4.2'></script>
<script type='text/javascript'
	src='https://themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/js/jquery-serializejson/jquery.serializejson.min.js?ver=2.6.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var userSettings = {"url":"\/","uid":"0","time":"1519800600","secure":"1"};
/* ]]> */
</script>
<script type='text/javascript'
	src='https://themes.getbootstrap.com/wp-includes/js/utils.min.js?ver=4.8.4'></script>
<script type='text/javascript'
	src='https://themes.getbootstrap.com/wp-includes/js/plupload/plupload.full.min.js?ver=2.1.8'></script>
<link rel='https://api.w.org/'
	href='https://themes.getbootstrap.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD"
	href="https://themes.getbootstrap.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml"
	href="https://themes.getbootstrap.com/wp-includes/wlwmanifest.xml" />
<meta name="generator" content="WordPress 4.8.4" />
<meta name="generator" content="WooCommerce 3.1.2" />
<link rel='shortlink' href='https://themes.getbootstrap.com/?p=7' />
<link rel="alternate" type="application/json+oembed"
	href="https://themes.getbootstrap.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fthemes.getbootstrap.com%2Fmy-account%2F" />
<link rel="alternate" type="text/xml+oembed"
	href="https://themes.getbootstrap.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fthemes.getbootstrap.com%2Fmy-account%2F&#038;format=xml" />
<style>
.woocommerce-password-strength.short {
	color: #e2401c
}

.woocommerce-password-strength.bad {
	color: #e2401c
}

.woocommerce-password-strength.good {
	color: #3d9cd2
}

.woocommerce-password-strength.strong {
	color: #0f834d
}
</style>
<noscript>
	<style>
.woocommerce-product-gallery {
	opacity: 1 !important;
}
</style>
</noscript>
<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>
<style type="text/css">
</style>
<!-- The filemtime is to append a timestamp for the last time the stylesheet was updated to automate cache busting from CloudFlare -->
<link rel='stylesheet'
	href='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/style.css?ver=1519254085' />

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-67613229-3"></script>
<script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
          gtag('config', 'UA-67613229-3');
        </script>

</head>
<body
	class="page-template-default page page-id-7 page-parent woocommerce woocommerce-account woocommerce-page dokan-theme-dokan">

	<!-- <div id="page" class="hfeed site"> -->

	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container">
			<a href="../homePage.jsp" class="navbar-brand"
				href="/">QuickFood go</a>
			<div class="d-flex ml-auto">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#globalNavbar" aria-controls="globalNavbar"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="globalNavbar">
				<form class="form-inline form-navbar my-2 my-lg-0 order-2"
					action="https://themes.getbootstrap.com/shop/">
					<input class="form-control" name="s" type="text"
						placeholder="Search" />
				</form>
				<ul class="navbar-nav mr-auto order-1">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
						href="#" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">公司介绍</a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<div class="navbar-collapse navbar-top-collapse">
								<ul id="menu-top-menu" class="nav navbar-nav">
									<li id="menu-item-601"
										class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-601"><a
										title="Admin &amp; Dashboard"
										href="https://themes.getbootstrap.com/product-category/admin-dashboard/">Admin
											&#038; Dashboard</a></li>
									<li id="menu-item-603"
										class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-603"><a
										title="Landing &amp; Corporate"
										href="https://themes.getbootstrap.com/product-category/landing-corporate/">Landing
											&#038; Corporate</a></li>
									<li id="menu-item-1537"
										class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1537"><a
										title="Application"
										href="https://themes.getbootstrap.com/product-category/application/">Application</a></li>
									<li id="menu-item-602"
										class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-602"><a
										title="E-Commerce &amp; Retail"
										href="https://themes.getbootstrap.com/product-category/ecommerce-retail/">E-Commerce
											&#038; Retail</a></li>
									<li id="menu-item-1538"
										class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1538"><a
										title="Portfolio &amp; Blog"
										href="https://themes.getbootstrap.com/product-category/portfolio-blog/">Portfolio
											&#038; Blog</a></li>
									<li id="menu-item-1539"
										class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1539"><a
										title="Specialty"
										href="https://themes.getbootstrap.com/product-category/specialty/">Specialty</a></li>
								</ul>
							</div>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="sellerRegister.jsp">商家注册</a></li>
				</ul>
				<ul class="navbar-nav d-none d-lg-flex ml-2 order-3">
					<li class="nav-item"><a class="nav-link" href="login.jsp">登录</a></li>
					<li class="nav-item"><a class="nav-link" href="register.jsp">注册</a></li>
				</ul>
				<ul class="navbar-nav d-lg-none">
					<li class="nav-item-divider"></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">登录</a></li>
					<li class="nav-item"><a class="nav-link" href="register.jsp">注册</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<main id="main" class="site-main main">
	<section class="section">
		<div class="container">
			<div class="row">
				<div class="container container--xs">
					<div class="woocommerce">



						<div id="signup_div_wrapper">
							<img class="img-fluid mx-auto d-block mb-3"
								src="../images/registerImg/registerHead2.jpg" width="90px;"
								height="90px;" alt="">
							<h1 class="mb-1 text-center">sign in</h1>
							<p class="fs-14 text-gray text-center mb-5">注册, 登入, welcome</p>


							<form method="post" class="register" action="registerGo">

								<p class="woocommerce-FormRow woocommerce-FormRow--first form-row form-row-first">
								
									<label for="reg_sr_firstname">用户名称 <span
										class="required">*</span></label> <input type="text"
										class="woocommerce-Input woocommerce-Input--text input-text"
										name="firstname" id="reg_sr_firstname"   />
									 <span style="color:red;" id="val_username"></span> <span style="opacity: 0">注意</span>
									 
								</p>

								<p
									class="woocommerce-FormRow woocommerce-FormRow--last form-row form-row-last">
									<label for="reg_sr_lastname">手机号码<span class="required">*</span></label>
									<input type="text"
										class="woocommerce-Input woocommerce-Input--text input-text"
										name="lastname" id="reg_sr_lastname"   />
										<span style="color:red;" id="val_nickname"></span> <span style="opacity: 0">注意</span>
								</p>
								<p
									class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
									<label for="checkCode">输入验证码 <span class="required">*</span><span><a href="#" onclick="createCodeClick();" id="chechkA">获取验证码</a><span style="color:red" id="timeCount"></span></span></label>
									<input type="password"
										class="woocommerce-Input woocommerce-Input--text input-text"
										name="checkCode" id="checkCode" />
										<span style="color:red;" id="val_checkCode"></span> <span style="opacity: 0">注意</span>
								</p>

								<p
									class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
									<label for="reg_email">输入密码 <span class="required">*</span></label>
									<input type="password"
										class="woocommerce-Input woocommerce-Input--text input-text"
										name="email" id="reg_email" />
										<span style="color:red;" id="val_userpas"></span> <span style="opacity: 0">注意</span>
								</p>


								<p
									class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
									<label for="reg_password">确认密码 <span class="required">*</span></label>
									<input type="password"
										class="woocommerce-Input woocommerce-Input--text input-text"
										name="password" id="reg_password" />
										<span style="color:red;" id="val_userpass"></span> <span style="opacity: 0">注意</span>
								</p>


								<!-- Spam Trap -->
								<div style="left: -999em; position: absolute;">
									<label for="trap">Anti-spam</label><input type="text"
										name="email_2" id="trap" tabindex="-1" autocomplete="off" />
								</div>


								<div class="show_if_seller" style="display: none">

									<div class="split-row form-row-wide">
										<p class="form-row form-group">
											<label for="first-name">First Name <span
												class="required">*</span></label> <input type="text"
												class="input-text form-control" name="fname" id="first-name"
												value="" required="required" />
										</p>

										<p class="form-row form-group">
											<label for="last-name">Last Name <span
												class="required">*</span></label> <input type="text"
												class="input-text form-control" name="lname" id="last-name"
												value="" required="required" />
										</p>
									</div>

									<p class="form-row form-group form-row-wide">
										<label for="company-name">Shop Name <span
											class="required">*</span></label> <input type="text"
											class="input-text form-control" name="shopname"
											id="company-name" value="" required="required" />
									</p>

									<p class="form-row form-group form-row-wide">
										<label for="seller-url" class="pull-left">Shop URL <span
											class="required">*</span></label> <strong id="url-alart-mgs"
											class="pull-right"></strong> <input type="text"
											class="input-text form-control" name="shopurl"
											id="seller-url" value="" required="required" /> <small>https://themes.getbootstrap.com/store/<strong
											id="url-alart"></strong></small>
									</p>

									<p class="form-row form-group form-row-wide">
										<label for="shop-phone">Phone Number<span
											class="required">*</span></label> <input type="text"
											class="input-text form-control" name="phone" id="shop-phone"
											value="" required="required" />
									</p>
									<p class="form-row form-group form-row-wide">
										<input class="tc_check_box" type="checkbox" id="tc_agree"
											name="tc_agree" required="required"> <label
											style="display: inline" for="tc_agree">I have read
											and agree to the <a target="_blank"
											href="https://themes.getbootstrap.com/my-account/">Terms
												&amp; Conditions</a>.
										</label>
									</p>

								</div>


								<p class="form-row form-group user-role">
									<label class="radio"> <input type="radio" name="role"
										value="customer" checked='checked'> I am a customer
									</label> <label class="radio"> <input type="radio" name="role"
										value="seller"> I am a vendor
									</label>
								</p>

								<p class="woocomerce-FormRow form-row">
									<input type="hidden" id="woocommerce-register-nonce"
										name="woocommerce-register-nonce" value="b915c2d33b" /><input
										type="hidden" name="_wp_http_referer" value="register.jsp" />
									<input type="submit"
										class="btn btn-brand btn-block btn-lg mb-4 mt-3"
										style="margin: 0;" id="register" 
										name="register" value="完成注册" />
								</p>


							</form>

							<p class="text-gray-soft text-center small mb-2">
								当点击"注册"后您将会同意 <a href="serviceTerms.jsp">服务条款</a>.
							</p>
							<p class="text-gray-soft text-center small mb-2">
								已存在一个账户? <a href="login.jsp">登入</a>
							</p>
							<p class="text-gray-soft text-center small">
								想要注册成一个商家? <a href="sellerRegister.jsp">进入注册</a>
							</p>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	</main>

	<!-- #main .site-main -->
	<footer class="footer">
		<div class="container">
			<div class="footer__inner">
				<div
					class="footer__item d-lg-flex justify-content-lg-between align-items-lg-center">
					<ul id="menu-footer" class="nav sub-nav footer__sub-nav">
						<li id="menu-item-1194"
							class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1194"><a
							title="Help Center" href="https://themes.zendesk.com/hc/en-us">帮助中心</a></li>
						<li id="menu-item-119"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-119"><a
							title="Terms of Service"
							href="https://themes.getbootstrap.com/terms/">服务条款</a></li>
						<li id="menu-item-117"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-117"><a
							title="Licenses" href="https://themes.getbootstrap.com/licenses/">身份许可</a></li>
					</ul>
					<p class="hidden-sm-down d-none d-lg-block">
						©京ICP证070791号 京公网安备11010502025545号 <a href="../homePage.jsp">首页</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!--[if lte IE 8]>
	<style>
		.attachment:focus {
			outline: #1e8cbe solid;
		}
		.selected.attachment {
			outline: #1e8cbe solid;
		}
	</style>
	<![endif]-->
	<script type="text/javascript">
		function checkName() {alert(1);
			var username=$("#reg_sr_firstname").val();
			if (username==null||username=="") {alert(2);
				 $("#val_username").html("用户名不能为空！");
				return "false";
			}else{
			var st="";
			$.ajax({
	   			url:"checkName?username="+username,
	   			type:"get",
	   			async:false,
	   			dataType:"json",
	   			success:function(data){
	   				
	   				$("#prompt").html(data.msg);
	   				if(data.msg==""||data.msg==null){alert(22);
	   					 $("#val_username").html("用户名存在!");
	   					st="false";//用户名存在
	   				}
	   				else{//alert("不存在");
	   					var regx=/^[\u4e00-\u9fa5a-zA-Z0-9]{4,10}$/;
	   					if(regx.test(username)){alert("pipei");
	   					$("#val_username").html("");
	   					st="true";
	   					}else{
	   						$("#val_username").html("请输入4-10位中文或字母数字!");
	   						st="false";
	   					}
	   				
	   				}
	   			},
	   			error:function(){
	   				alert("error");
	   				window.location.href("../homePage.jsp");
	   			}
	   		})
	   		
	   		return st;
			}
			
		}
		function checkTel(reg_sr_lastname,val_nickname,regepx){//三个参数，分别是表单id，提示内容的id，正则式
			alert("tel:")
			var nick=$("#"+reg_sr_lastname+"").val();alert("nick:"+nick);
			var reg=new RegExp(regepx);alert("ci:");
			if(nick==null||""==nick){alert("kon");
				//此时昵称为空
				$("#"+val_nickname+"").html("号码不能为空!");
				return false;
			}else{
				if(reg.test(nick)){
					//符合要求
					$("#"+val_nickname+"").html("");
					return true;
				}else{
					$("#"+val_nickname+"").html("请输入正确格式号码!");
					return false;
				}
			}
		}
		function checkCode(inputId,promtId){
			var username=$("#reg_sr_firstname").val();
			var sta="";
			var inputCode=$("#"+inputId+"").val();
			if(inputCode==null||""==inputCode){
				$("#"+promtId+"").html("验证码不能为空！");
				return "false";
			}else{
			$.ajax({
				url:"checkCode",
				type:"get",
				async:false,
				dataType:"json",
				data:"inputCode="+inputCode+"&username="+username,
				success:function(data){
					if(data.msg=="2"){
						sta="true";
					}else{
						if(data.msg=="0"){
							$("#"+promtId+"").html("请重新发送验证码！");
						}
						if(data.msg=="1"){
							$("#"+promtId+"").html("验证码输入错误！");
						}
						
						sta="false";
					}
				},
				error:function(){
					alert("error");
				}
			})
			return sta;
			}
		}
		
		function checkPas(){alert("checkPas");
			var pas=$("#reg_email").val();
			if(pas==null||""==pas){
				$("#val_userpas").html("密码不能为空!");
				return "flase";
			}else{
				var reg=/^[_a-zA-Z0-9]{6,16}$/;
				if(reg.test(pas)){
					$("#val_userpas").html("");
					return "true";
				}else{
					$("#val_userpas").html("请输入6-16位下划线字母数字!");
					return "false";
				}
				
			}
		}
		function checkPass(){alert("checkPass");
			var pass=$("#reg_password").val();
			var pas=$("#reg_email").val();
			if(pass!=null&&pass!=""){
				if(pass==pas){
					$("#val_userpass").html("");
					return true;
				}else{alert("buyizhi");
					$("#val_userpass").html("两次密码不一致!");
					return false;
				}
				
				
			}else{
				$("#val_userpass").html("密码不为空!");
			}
		}
		function  my_validate_form(){alert(0);
			var c1=checkName();
			var c2=checkPas();
			var c3=checkPass();
			var c4=checkTel("reg_sr_lastname","val_nickname","^(1[0-9]{10}|\\+[0-9]{2}\\s*[0-9]{11})$");//1开头的11为手机号，或者“+两个数字区号”，以及11位号码组成
			var c5=checkCode("checkCode","val_checkCode");
			//var c5="true";
			
			 if(c1=="true"&&c2=="true"&&c3==true&&c4==true&&c5=="true"){alert("s");
				return true;
			}else{alert("s1");
				return false;
			} 
			
			
			
			
		}
		
		
		var tId="";
		var i=120;
		function createCodeClick(){
			var tel=$("#reg_sr_lastname").val();
			var username=$("#reg_sr_firstname").val();
			$.ajax({
				url:"createCheckCode",
				type:"get",
				data:"tel="+tel+"&username="+username,
				dataType:"json",
				success:function(){
					
				},
				error:function(){
					alert("error");
				}
				
			})
			if(i<120){
				clearTimeout(tId);i=120;
			}
			createCode();
		}
		function createCode(){
			if(i<0){
				$("#timeCount").html("");
				clearTimeout(tId);
			}
		 	tId=setTimeout(function(){
		 		$("#timeCount").html(i+"秒内输入有效");
				i--;
				createCode();
		 	}, "1000");
		}
	
	</script>
	<script type="text/html" id="tmpl-media-frame">
		<div class="media-frame-menu"></div>
		<div class="media-frame-title"></div>
		<div class="media-frame-router"></div>
		<div class="media-frame-content"></div>
		<div class="media-frame-toolbar"></div>
		<div class="media-frame-uploader"></div>
	</script>

	<script type="text/html" id="tmpl-media-modal">
		<div class="media-modal wp-core-ui">
			<button type="button" class="media-modal-close"><span class="media-modal-icon"><span class="screen-reader-text">Close media panel</span></span></button>
			<div class="media-modal-content"></div>
		</div>
		<div class="media-modal-backdrop"></div>
	</script>

	<script type="text/html" id="tmpl-uploader-window">
		<div class="uploader-window-content">
			<h1>Drop files to upload</h1>
		</div>
	</script>

	<script type="text/html" id="tmpl-uploader-editor">
		<div class="uploader-editor-content">
			<div class="uploader-editor-title">Drop files to upload</div>
		</div>
	</script>

	<script type="text/html" id="tmpl-uploader-inline">
		<# var messageClass = data.message ? 'has-upload-message' : 'no-upload-message'; #>
		<# if ( data.canClose ) { #>
		<button class="close dashicons dashicons-no"><span class="screen-reader-text">Close uploader</span></button>
		<# } #>
		<div class="uploader-inline-content {{ messageClass }}">
		<# if ( data.message ) { #>
			<h2 class="upload-message">{{ data.message }}</h2>
		<# } #>
					<div class="upload-ui">
				<h2 class="upload-instructions drop-instructions">Drop files anywhere to upload</h2>
				<p class="upload-instructions drop-instructions">or</p>
				<button type="button" class="browser button button-hero">Select Files</button>
			</div>

			<div class="upload-inline-status"></div>

			<div class="post-upload-ui">
				
				<p class="max-upload-size">Maximum upload file size: 512 MB.</p>

				<# if ( data.suggestedWidth && data.suggestedHeight ) { #>
					<p class="suggested-dimensions">
						Suggested image dimensions: {{data.suggestedWidth}} by {{data.suggestedHeight}} pixels.					</p>
				<# } #>

							</div>
				</div>
	</script>

	<script type="text/html" id="tmpl-media-library-view-switcher">
		<a href="/my-account/?mode=list" class="view-list">
			<span class="screen-reader-text">List View</span>
		</a>
		<a href="/my-account/?mode=grid" class="view-grid current">
			<span class="screen-reader-text">Grid View</span>
		</a>
	</script>

	<script type="text/html" id="tmpl-uploader-status">
		<h2>Uploading</h2>
		<button type="button" class="button-link upload-dismiss-errors"><span class="screen-reader-text">Dismiss Errors</span></button>

		<div class="media-progress-bar"><div></div></div>
		<div class="upload-details">
			<span class="upload-count">
				<span class="upload-index"></span> / <span class="upload-total"></span>
			</span>
			<span class="upload-detail-separator">&ndash;</span>
			<span class="upload-filename"></span>
		</div>
		<div class="upload-errors"></div>
	</script>

	<script type="text/html" id="tmpl-uploader-status-error">
		<span class="upload-error-filename">{{{ data.filename }}}</span>
		<span class="upload-error-message">{{ data.message }}</span>
	</script>

	<script type="text/html" id="tmpl-edit-attachment-frame">
		<div class="edit-media-header">
			<button class="left dashicons <# if ( ! data.hasPrevious ) { #> disabled <# } #>"><span class="screen-reader-text">Edit previous media item</span></button>
			<button class="right dashicons <# if ( ! data.hasNext ) { #> disabled <# } #>"><span class="screen-reader-text">Edit next media item</span></button>
		</div>
		<div class="media-frame-title"></div>
		<div class="media-frame-content"></div>
	</script>

	<script type="text/html" id="tmpl-attachment-details-two-column">
		<div class="attachment-media-view {{ data.orientation }}">
			<div class="thumbnail thumbnail-{{ data.type }}">
				<# if ( data.uploading ) { #>
					<div class="media-progress-bar"><div></div></div>
				<# } else if ( data.sizes && data.sizes.large ) { #>
					<img class="details-image" src="{{ data.sizes.large.url }}" draggable="false" alt="" />
				<# } else if ( data.sizes && data.sizes.full ) { #>
					<img class="details-image" src="{{ data.sizes.full.url }}" draggable="false" alt="" />
				<# } else if ( -1 === jQuery.inArray( data.type, [ 'audio', 'video' ] ) ) { #>
					<img class="details-image icon" src="{{ data.icon }}" draggable="false" alt="" />
				<# } #>

				<# if ( 'audio' === data.type ) { #>
				<div class="wp-media-wrapper">
					<audio style="visibility: hidden" controls class="wp-audio-shortcode" width="100%" preload="none">
						<source type="{{ data.mime }}" src="{{ data.url }}"/>
					</audio>
				</div>
				<# } else if ( 'video' === data.type ) {
					var w_rule = '';
					if ( data.width ) {
						w_rule = 'width: ' + data.width + 'px;';
					} else if ( wp.media.view.settings.contentWidth ) {
						w_rule = 'width: ' + wp.media.view.settings.contentWidth + 'px;';
					}
				#>
				<div style="{{ w_rule }}" class="wp-media-wrapper wp-video">
					<video controls="controls" class="wp-video-shortcode" preload="metadata"
						<# if ( data.width ) { #>width="{{ data.width }}"<# } #>
						<# if ( data.height ) { #>height="{{ data.height }}"<# } #>
						<# if ( data.image && data.image.src !== data.icon ) { #>poster="{{ data.image.src }}"<# } #>>
						<source type="{{ data.mime }}" src="{{ data.url }}"/>
					</video>
				</div>
				<# } #>

				<div class="attachment-actions">
					<# if ( 'image' === data.type && ! data.uploading && data.sizes && data.can.save ) { #>
					<button type="button" class="button edit-attachment">Edit Image</button>
					<# } else if ( 'pdf' === data.subtype && data.sizes ) { #>
					Document Preview					<# } #>
				</div>
			</div>
		</div>
		<div class="attachment-info">
			<span class="settings-save-status">
				<span class="spinner"></span>
				<span class="saved">Saved.</span>
			</span>
			<div class="details">
				<div class="filename"><strong>File name:</strong> {{ data.filename }}</div>
				<div class="filename"><strong>File type:</strong> {{ data.mime }}</div>
				<div class="uploaded"><strong>Uploaded on:</strong> {{ data.dateFormatted }}</div>

				<div class="file-size"><strong>File size:</strong> {{ data.filesizeHumanReadable }}</div>
				<# if ( 'image' === data.type && ! data.uploading ) { #>
					<# if ( data.width && data.height ) { #>
						<div class="dimensions"><strong>Dimensions:</strong> {{ data.width }} &times; {{ data.height }}</div>
					<# } #>
				<# } #>

				<# if ( data.fileLength ) { #>
					<div class="file-length"><strong>Length:</strong> {{ data.fileLength }}</div>
				<# } #>

				<# if ( 'audio' === data.type && data.meta.bitrate ) { #>
					<div class="bitrate">
						<strong>Bitrate:</strong> {{ Math.round( data.meta.bitrate / 1000 ) }}kb/s
						<# if ( data.meta.bitrate_mode ) { #>
						{{ ' ' + data.meta.bitrate_mode.toUpperCase() }}
						<# } #>
					</div>
				<# } #>

				<div class="compat-meta">
					<# if ( data.compat && data.compat.meta ) { #>
						{{{ data.compat.meta }}}
					<# } #>
				</div>
			</div>

			<div class="settings">
				<label class="setting" data-setting="url">
					<span class="name">URL</span>
					<input type="text" value="{{ data.url }}" readonly />
				</label>
				<# var maybeReadOnly = data.can.save || data.allowLocalEdits ? '' : 'readonly'; #>
								<label class="setting" data-setting="title">
					<span class="name">Title</span>
					<input type="text" value="{{ data.title }}" {{ maybeReadOnly }} />
				</label>
								<# if ( 'audio' === data.type ) { #>
								<label class="setting" data-setting="artist">
					<span class="name">Artist</span>
					<input type="text" value="{{ data.artist || data.meta.artist || '' }}" />
				</label>
								<label class="setting" data-setting="album">
					<span class="name">Album</span>
					<input type="text" value="{{ data.album || data.meta.album || '' }}" />
				</label>
								<# } #>
				<label class="setting" data-setting="caption">
					<span class="name">Caption</span>
					<textarea {{ maybeReadOnly }}>{{ data.caption }}</textarea>
				</label>
				<# if ( 'image' === data.type ) { #>
					<label class="setting" data-setting="alt">
						<span class="name">Alt Text</span>
						<input type="text" value="{{ data.alt }}" {{ maybeReadOnly }} />
					</label>
				<# } #>
				<label class="setting" data-setting="description">
					<span class="name">Description</span>
					<textarea {{ maybeReadOnly }}>{{ data.description }}</textarea>
				</label>
				<label class="setting">
					<span class="name">Uploaded By</span>
					<span class="value">{{ data.authorName }}</span>
				</label>
				<# if ( data.uploadedToTitle ) { #>
					<label class="setting">
						<span class="name">Uploaded To</span>
						<# if ( data.uploadedToLink ) { #>
							<span class="value"><a href="{{ data.uploadedToLink }}">{{ data.uploadedToTitle }}</a></span>
						<# } else { #>
							<span class="value">{{ data.uploadedToTitle }}</span>
						<# } #>
					</label>
				<# } #>
				<div class="attachment-compat"></div>
			</div>

			<div class="actions">
				<a class="view-attachment" href="{{ data.link }}">View attachment page</a>
				<# if ( data.can.save ) { #> |
					<a href="post.php?post={{ data.id }}&action=edit">Edit more details</a>
				<# } #>
				<# if ( ! data.uploading && data.can.remove ) { #> |
											<button type="button" class="button-link delete-attachment">Delete Permanently</button>
									<# } #>
			</div>

		</div>
	</script>

	<script type="text/html" id="tmpl-attachment">
		<div class="attachment-preview js--select-attachment type-{{ data.type }} subtype-{{ data.subtype }} {{ data.orientation }}">
			<div class="thumbnail">
				<# if ( data.uploading ) { #>
					<div class="media-progress-bar"><div style="width: {{ data.percent }}%"></div></div>
				<# } else if ( 'image' === data.type && data.sizes ) { #>
					<div class="centered">
						<img src="{{ data.size.url }}" draggable="false" alt="" />
					</div>
				<# } else { #>
					<div class="centered">
						<# if ( data.image && data.image.src && data.image.src !== data.icon ) { #>
							<img src="{{ data.image.src }}" class="thumbnail" draggable="false" alt="" />
						<# } else if ( data.sizes && data.sizes.medium ) { #>
							<img src="{{ data.sizes.medium.url }}" class="thumbnail" draggable="false" alt="" />
						<# } else { #>
							<img src="{{ data.icon }}" class="icon" draggable="false" alt="" />
						<# } #>
					</div>
					<div class="filename">
						<div>{{ data.filename }}</div>
					</div>
				<# } #>
			</div>
			<# if ( data.buttons.close ) { #>
				<button type="button" class="button-link attachment-close media-modal-icon"><span class="screen-reader-text">Remove</span></button>
			<# } #>
		</div>
		<# if ( data.buttons.check ) { #>
			<button type="button" class="check" tabindex="-1"><span class="media-modal-icon"></span><span class="screen-reader-text">Deselect</span></button>
		<# } #>
		<#
		var maybeReadOnly = data.can.save || data.allowLocalEdits ? '' : 'readonly';
		if ( data.describe ) {
			if ( 'image' === data.type ) { #>
				<input type="text" value="{{ data.caption }}" class="describe" data-setting="caption"
					placeholder="Caption this image&hellip;" {{ maybeReadOnly }} />
			<# } else { #>
				<input type="text" value="{{ data.title }}" class="describe" data-setting="title"
					<# if ( 'video' === data.type ) { #>
						placeholder="Describe this video&hellip;"
					<# } else if ( 'audio' === data.type ) { #>
						placeholder="Describe this audio file&hellip;"
					<# } else { #>
						placeholder="Describe this media file&hellip;"
					<# } #> {{ maybeReadOnly }} />
			<# }
		} #>
	</script>

	<script type="text/html" id="tmpl-attachment-details">
		<h2>
			Attachment Details			<span class="settings-save-status">
				<span class="spinner"></span>
				<span class="saved">Saved.</span>
			</span>
		</h2>
		<div class="attachment-info">
			<div class="thumbnail thumbnail-{{ data.type }}">
				<# if ( data.uploading ) { #>
					<div class="media-progress-bar"><div></div></div>
				<# } else if ( 'image' === data.type && data.sizes ) { #>
					<img src="{{ data.size.url }}" draggable="false" alt="" />
				<# } else { #>
					<img src="{{ data.icon }}" class="icon" draggable="false" alt="" />
				<# } #>
			</div>
			<div class="details">
				<div class="filename">{{ data.filename }}</div>
				<div class="uploaded">{{ data.dateFormatted }}</div>

				<div class="file-size">{{ data.filesizeHumanReadable }}</div>
				<# if ( 'image' === data.type && ! data.uploading ) { #>
					<# if ( data.width && data.height ) { #>
						<div class="dimensions">{{ data.width }} &times; {{ data.height }}</div>
					<# } #>

					<# if ( data.can.save && data.sizes ) { #>
						<a class="edit-attachment" href="{{ data.editLink }}&amp;image-editor" target="_blank">Edit Image</a>
					<# } #>
				<# } #>

				<# if ( data.fileLength ) { #>
					<div class="file-length">Length: {{ data.fileLength }}</div>
				<# } #>

				<# if ( ! data.uploading && data.can.remove ) { #>
											<button type="button" class="button-link delete-attachment">Delete Permanently</button>
									<# } #>

				<div class="compat-meta">
					<# if ( data.compat && data.compat.meta ) { #>
						{{{ data.compat.meta }}}
					<# } #>
				</div>
			</div>
		</div>

		<label class="setting" data-setting="url">
			<span class="name">URL</span>
			<input type="text" value="{{ data.url }}" readonly />
		</label>
		<# var maybeReadOnly = data.can.save || data.allowLocalEdits ? '' : 'readonly'; #>
				<label class="setting" data-setting="title">
			<span class="name">Title</span>
			<input type="text" value="{{ data.title }}" {{ maybeReadOnly }} />
		</label>
				<# if ( 'audio' === data.type ) { #>
				<label class="setting" data-setting="artist">
			<span class="name">Artist</span>
			<input type="text" value="{{ data.artist || data.meta.artist || '' }}" />
		</label>
				<label class="setting" data-setting="album">
			<span class="name">Album</span>
			<input type="text" value="{{ data.album || data.meta.album || '' }}" />
		</label>
				<# } #>
		<label class="setting" data-setting="caption">
			<span class="name">Caption</span>
			<textarea {{ maybeReadOnly }}>{{ data.caption }}</textarea>
		</label>
		<# if ( 'image' === data.type ) { #>
			<label class="setting" data-setting="alt">
				<span class="name">Alt Text</span>
				<input type="text" value="{{ data.alt }}" {{ maybeReadOnly }} />
			</label>
		<# } #>
		<label class="setting" data-setting="description">
			<span class="name">Description</span>
			<textarea {{ maybeReadOnly }}>{{ data.description }}</textarea>
		</label>
	</script>

	<script type="text/html" id="tmpl-media-selection">
		<div class="selection-info">
			<span class="count"></span>
			<# if ( data.editable ) { #>
				<button type="button" class="button-link edit-selection">Edit Selection</button>
			<# } #>
			<# if ( data.clearable ) { #>
				<button type="button" class="button-link clear-selection">Clear</button>
			<# } #>
		</div>
		<div class="selection-view"></div>
	</script>

	<script type="text/html" id="tmpl-attachment-display-settings">
		<h2>Attachment Display Settings</h2>

		<# if ( 'image' === data.type ) { #>
			<label class="setting align">
				<span>Alignment</span>
				<select class="alignment"
					data-setting="align"
					<# if ( data.userSettings ) { #>
						data-user-setting="align"
					<# } #>>

					<option value="left">
						Left					</option>
					<option value="center">
						Center					</option>
					<option value="right">
						Right					</option>
					<option value="none" selected>
						None					</option>
				</select>
			</label>
		<# } #>

		<div class="setting">
			<label>
				<# if ( data.model.canEmbed ) { #>
					<span>Embed or Link</span>
				<# } else { #>
					<span>Link To</span>
				<# } #>

				<select class="link-to"
					data-setting="link"
					<# if ( data.userSettings && ! data.model.canEmbed ) { #>
						data-user-setting="urlbutton"
					<# } #>>

				<# if ( data.model.canEmbed ) { #>
					<option value="embed" selected>
						Embed Media Player					</option>
					<option value="file">
				<# } else { #>
					<option value="none" selected>
						None					</option>
					<option value="file">
				<# } #>
					<# if ( data.model.canEmbed ) { #>
						Link to Media File					<# } else { #>
						Media File					<# } #>
					</option>
					<option value="post">
					<# if ( data.model.canEmbed ) { #>
						Link to Attachment Page					<# } else { #>
						Attachment Page					<# } #>
					</option>
				<# if ( 'image' === data.type ) { #>
					<option value="custom">
						Custom URL					</option>
				<# } #>
				</select>
			</label>
			<input type="text" class="link-to-custom" data-setting="linkUrl" />
		</div>

		<# if ( 'undefined' !== typeof data.sizes ) { #>
			<label class="setting">
				<span>Size</span>
				<select class="size" name="size"
					data-setting="size"
					<# if ( data.userSettings ) { #>
						data-user-setting="imgsize"
					<# } #>>
											<#
						var size = data.sizes['thumbnail'];
						if ( size ) { #>
							<option value="thumbnail" >
								Thumbnail &ndash; {{ size.width }} &times; {{ size.height }}
							</option>
						<# } #>
											<#
						var size = data.sizes['medium'];
						if ( size ) { #>
							<option value="medium" >
								Medium &ndash; {{ size.width }} &times; {{ size.height }}
							</option>
						<# } #>
											<#
						var size = data.sizes['large'];
						if ( size ) { #>
							<option value="large" >
								Large &ndash; {{ size.width }} &times; {{ size.height }}
							</option>
						<# } #>
											<#
						var size = data.sizes['full'];
						if ( size ) { #>
							<option value="full"  selected='selected'>
								Full Size &ndash; {{ size.width }} &times; {{ size.height }}
							</option>
						<# } #>
									</select>
			</label>
		<# } #>
	</script>

	<script type="text/html" id="tmpl-gallery-settings">
		<h2>Gallery Settings</h2>

		<label class="setting">
			<span>Link To</span>
			<select class="link-to"
				data-setting="link"
				<# if ( data.userSettings ) { #>
					data-user-setting="urlbutton"
				<# } #>>

				<option value="post" <# if ( ! wp.media.galleryDefaults.link || 'post' == wp.media.galleryDefaults.link ) {
					#>selected="selected"<# }
				#>>
					Attachment Page				</option>
				<option value="file" <# if ( 'file' == wp.media.galleryDefaults.link ) { #>selected="selected"<# } #>>
					Media File				</option>
				<option value="none" <# if ( 'none' == wp.media.galleryDefaults.link ) { #>selected="selected"<# } #>>
					None				</option>
			</select>
		</label>

		<label class="setting">
			<span>Columns</span>
			<select class="columns" name="columns"
				data-setting="columns">
									<option value="1" <#
						if ( 1 == wp.media.galleryDefaults.columns ) { #>selected="selected"<# }
					#>>
						1					</option>
									<option value="2" <#
						if ( 2 == wp.media.galleryDefaults.columns ) { #>selected="selected"<# }
					#>>
						2					</option>
									<option value="3" <#
						if ( 3 == wp.media.galleryDefaults.columns ) { #>selected="selected"<# }
					#>>
						3					</option>
									<option value="4" <#
						if ( 4 == wp.media.galleryDefaults.columns ) { #>selected="selected"<# }
					#>>
						4					</option>
									<option value="5" <#
						if ( 5 == wp.media.galleryDefaults.columns ) { #>selected="selected"<# }
					#>>
						5					</option>
									<option value="6" <#
						if ( 6 == wp.media.galleryDefaults.columns ) { #>selected="selected"<# }
					#>>
						6					</option>
									<option value="7" <#
						if ( 7 == wp.media.galleryDefaults.columns ) { #>selected="selected"<# }
					#>>
						7					</option>
									<option value="8" <#
						if ( 8 == wp.media.galleryDefaults.columns ) { #>selected="selected"<# }
					#>>
						8					</option>
									<option value="9" <#
						if ( 9 == wp.media.galleryDefaults.columns ) { #>selected="selected"<# }
					#>>
						9					</option>
							</select>
		</label>

		<label class="setting">
			<span>Random Order</span>
			<input type="checkbox" data-setting="_orderbyRandom" />
		</label>

		<label class="setting size">
			<span>Size</span>
			<select class="size" name="size"
				data-setting="size"
				<# if ( data.userSettings ) { #>
					data-user-setting="imgsize"
				<# } #>
				>
									<option value="thumbnail">
						Thumbnail					</option>
									<option value="medium">
						Medium					</option>
									<option value="large">
						Large					</option>
									<option value="full">
						Full Size					</option>
							</select>
		</label>
	</script>

	<script type="text/html" id="tmpl-playlist-settings">
		<h2>Playlist Settings</h2>

		<# var emptyModel = _.isEmpty( data.model ),
			isVideo = 'video' === data.controller.get('library').props.get('type'); #>

		<label class="setting">
			<input type="checkbox" data-setting="tracklist" <# if ( emptyModel ) { #>
				checked="checked"
			<# } #> />
			<# if ( isVideo ) { #>
			<span>Show Video List</span>
			<# } else { #>
			<span>Show Tracklist</span>
			<# } #>
		</label>

		<# if ( ! isVideo ) { #>
		<label class="setting">
			<input type="checkbox" data-setting="artists" <# if ( emptyModel ) { #>
				checked="checked"
			<# } #> />
			<span>Show Artist Name in Tracklist</span>
		</label>
		<# } #>

		<label class="setting">
			<input type="checkbox" data-setting="images" <# if ( emptyModel ) { #>
				checked="checked"
			<# } #> />
			<span>Show Images</span>
		</label>
	</script>

	<script type="text/html" id="tmpl-embed-link-settings">
		<label class="setting link-text">
			<span>Link Text</span>
			<input type="text" class="alignment" data-setting="linkText" />
		</label>
		<div class="embed-container" style="display: none;">
			<div class="embed-preview"></div>
		</div>
	</script>

	<script type="text/html" id="tmpl-embed-image-settings">
		<div class="thumbnail">
			<img src="{{ data.model.url }}" draggable="false" alt="" />
		</div>

					<label class="setting caption">
				<span>Caption</span>
				<textarea data-setting="caption" />
			</label>
		
		<label class="setting alt-text">
			<span>Alt Text</span>
			<input type="text" data-setting="alt" />
		</label>

		<div class="setting align">
			<span>Align</span>
			<div class="button-group button-large" data-setting="align">
				<button class="button" value="left">
					Left				</button>
				<button class="button" value="center">
					Center				</button>
				<button class="button" value="right">
					Right				</button>
				<button class="button active" value="none">
					None				</button>
			</div>
		</div>

		<div class="setting link-to">
			<span>Link To</span>
			<div class="button-group button-large" data-setting="link">
				<button class="button" value="file">
					Image URL				</button>
				<button class="button" value="custom">
					Custom URL				</button>
				<button class="button active" value="none">
					None				</button>
			</div>
			<input type="text" class="link-to-custom" data-setting="linkUrl" />
		</div>
	</script>

	<script type="text/html" id="tmpl-image-details">
		<div class="media-embed">
			<div class="embed-media-settings">
				<div class="column-image">
					<div class="image">
						<img src="{{ data.model.url }}" draggable="false" alt="" />

						<# if ( data.attachment && window.imageEdit ) { #>
							<div class="actions">
								<input type="button" class="edit-attachment button" value="Edit Original" />
								<input type="button" class="replace-attachment button" value="Replace" />
							</div>
						<# } #>
					</div>
				</div>
				<div class="column-settings">
											<label class="setting caption">
							<span>Caption</span>
							<textarea data-setting="caption">{{ data.model.caption }}</textarea>
						</label>
					
					<label class="setting alt-text">
						<span>Alternative Text</span>
						<input type="text" data-setting="alt" value="{{ data.model.alt }}" />
					</label>

					<h2>Display Settings</h2>
					<div class="setting align">
						<span>Align</span>
						<div class="button-group button-large" data-setting="align">
							<button class="button" value="left">
								Left							</button>
							<button class="button" value="center">
								Center							</button>
							<button class="button" value="right">
								Right							</button>
							<button class="button active" value="none">
								None							</button>
						</div>
					</div>

					<# if ( data.attachment ) { #>
						<# if ( 'undefined' !== typeof data.attachment.sizes ) { #>
							<label class="setting size">
								<span>Size</span>
								<select class="size" name="size"
									data-setting="size"
									<# if ( data.userSettings ) { #>
										data-user-setting="imgsize"
									<# } #>>
																			<#
										var size = data.sizes['thumbnail'];
										if ( size ) { #>
											<option value="thumbnail">
												Thumbnail &ndash; {{ size.width }} &times; {{ size.height }}
											</option>
										<# } #>
																			<#
										var size = data.sizes['medium'];
										if ( size ) { #>
											<option value="medium">
												Medium &ndash; {{ size.width }} &times; {{ size.height }}
											</option>
										<# } #>
																			<#
										var size = data.sizes['large'];
										if ( size ) { #>
											<option value="large">
												Large &ndash; {{ size.width }} &times; {{ size.height }}
											</option>
										<# } #>
																			<#
										var size = data.sizes['full'];
										if ( size ) { #>
											<option value="full">
												Full Size &ndash; {{ size.width }} &times; {{ size.height }}
											</option>
										<# } #>
																		<option value="custom">
										Custom Size									</option>
								</select>
							</label>
						<# } #>
							<div class="custom-size<# if ( data.model.size !== 'custom' ) { #> hidden<# } #>">
								<label><span>Width <small>(px)</small></span> <input data-setting="customWidth" type="number" step="1" value="{{ data.model.customWidth }}" /></label><span class="sep">&times;</span><label><span>Height <small>(px)</small></span><input data-setting="customHeight" type="number" step="1" value="{{ data.model.customHeight }}" /></label>
							</div>
					<# } #>

					<div class="setting link-to">
						<span>Link To</span>
						<select data-setting="link">
						<# if ( data.attachment ) { #>
							<option value="file">
								Media File							</option>
							<option value="post">
								Attachment Page							</option>
						<# } else { #>
							<option value="file">
								Image URL							</option>
						<# } #>
							<option value="custom">
								Custom URL							</option>
							<option value="none">
								None							</option>
						</select>
						<input type="text" class="link-to-custom" data-setting="linkUrl" />
					</div>
					<div class="advanced-section">
						<h2><button type="button" class="button-link advanced-toggle">Advanced Options</button></h2>
						<div class="advanced-settings hidden">
							<div class="advanced-image">
								<label class="setting title-text">
									<span>Image Title Attribute</span>
									<input type="text" data-setting="title" value="{{ data.model.title }}" />
								</label>
								<label class="setting extra-classes">
									<span>Image CSS Class</span>
									<input type="text" data-setting="extraClasses" value="{{ data.model.extraClasses }}" />
								</label>
							</div>
							<div class="advanced-link">
								<div class="setting link-target">
									<label><input type="checkbox" data-setting="linkTargetBlank" value="_blank" <# if ( data.model.linkTargetBlank ) { #>checked="checked"<# } #>>Open link in a new tab</label>
								</div>
								<label class="setting link-rel">
									<span>Link Rel</span>
									<input type="text" data-setting="linkRel" value="{{ data.model.linkClassName }}" />
								</label>
								<label class="setting link-class-name">
									<span>Link CSS Class</span>
									<input type="text" data-setting="linkClassName" value="{{ data.model.linkClassName }}" />
								</label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</script>

	<script type="text/html" id="tmpl-image-editor">
		<div id="media-head-{{ data.id }}"></div>
		<div id="image-editor-{{ data.id }}"></div>
	</script>

	<script type="text/html" id="tmpl-audio-details">
		<# var ext, html5types = {
			mp3: wp.media.view.settings.embedMimes.mp3,
			ogg: wp.media.view.settings.embedMimes.ogg
		}; #>

				<div class="media-embed media-embed-details">
			<div class="embed-media-settings embed-audio-settings">
				<audio style="visibility: hidden"
	controls
	class="wp-audio-shortcode"
	width="{{ _.isUndefined( data.model.width ) ? 400 : data.model.width }}"
	preload="{{ _.isUndefined( data.model.preload ) ? 'none' : data.model.preload }}"
	<#
	if ( ! _.isUndefined( data.model.autoplay ) && data.model.autoplay ) {
		#> autoplay<#
	}
	if ( ! _.isUndefined( data.model.loop ) && data.model.loop ) {
		#> loop<#
	}
	#>
>
	<# if ( ! _.isEmpty( data.model.src ) ) { #>
	<source src="{{ data.model.src }}" type="{{ wp.media.view.settings.embedMimes[ data.model.src.split('.').pop() ] }}" />
	<# } #>

	<# if ( ! _.isEmpty( data.model.mp3 ) ) { #>
	<source src="{{ data.model.mp3 }}" type="{{ wp.media.view.settings.embedMimes[ 'mp3' ] }}" />
	<# } #>
	<# if ( ! _.isEmpty( data.model.ogg ) ) { #>
	<source src="{{ data.model.ogg }}" type="{{ wp.media.view.settings.embedMimes[ 'ogg' ] }}" />
	<# } #>
	<# if ( ! _.isEmpty( data.model.m4a ) ) { #>
	<source src="{{ data.model.m4a }}" type="{{ wp.media.view.settings.embedMimes[ 'm4a' ] }}" />
	<# } #>
	<# if ( ! _.isEmpty( data.model.wav ) ) { #>
	<source src="{{ data.model.wav }}" type="{{ wp.media.view.settings.embedMimes[ 'wav' ] }}" />
	<# } #>
	</audio>

				<# if ( ! _.isEmpty( data.model.src ) ) {
					ext = data.model.src.split('.').pop();
					if ( html5types[ ext ] ) {
						delete html5types[ ext ];
					}
				#>
				<label class="setting">
					<span>SRC</span>
					<input type="text" disabled="disabled" data-setting="src" value="{{ data.model.src }}" />
					<button type="button" class="button-link remove-setting">Remove audio source</button>
				</label>
				<# } #>
				<# if ( ! _.isEmpty( data.model.mp3 ) ) {
					if ( ! _.isUndefined( html5types.mp3 ) ) {
						delete html5types.mp3;
					}
				#>
				<label class="setting">
					<span>MP3</span>
					<input type="text" disabled="disabled" data-setting="mp3" value="{{ data.model.mp3 }}" />
					<button type="button" class="button-link remove-setting">Remove audio source</button>
				</label>
				<# } #>
				<# if ( ! _.isEmpty( data.model.ogg ) ) {
					if ( ! _.isUndefined( html5types.ogg ) ) {
						delete html5types.ogg;
					}
				#>
				<label class="setting">
					<span>OGG</span>
					<input type="text" disabled="disabled" data-setting="ogg" value="{{ data.model.ogg }}" />
					<button type="button" class="button-link remove-setting">Remove audio source</button>
				</label>
				<# } #>
				<# if ( ! _.isEmpty( data.model.m4a ) ) {
					if ( ! _.isUndefined( html5types.m4a ) ) {
						delete html5types.m4a;
					}
				#>
				<label class="setting">
					<span>M4A</span>
					<input type="text" disabled="disabled" data-setting="m4a" value="{{ data.model.m4a }}" />
					<button type="button" class="button-link remove-setting">Remove audio source</button>
				</label>
				<# } #>
				<# if ( ! _.isEmpty( data.model.wav ) ) {
					if ( ! _.isUndefined( html5types.wav ) ) {
						delete html5types.wav;
					}
				#>
				<label class="setting">
					<span>WAV</span>
					<input type="text" disabled="disabled" data-setting="wav" value="{{ data.model.wav }}" />
					<button type="button" class="button-link remove-setting">Remove audio source</button>
				</label>
				<# } #>
				
				<# if ( ! _.isEmpty( html5types ) ) { #>
				<div class="setting">
					<span>Add alternate sources for maximum HTML5 playback:</span>
					<div class="button-large">
					<# _.each( html5types, function (mime, type) { #>
					<button class="button add-media-source" data-mime="{{ mime }}">{{ type }}</button>
					<# } ) #>
					</div>
				</div>
				<# } #>

				<div class="setting preload">
					<span>Preload</span>
					<div class="button-group button-large" data-setting="preload">
						<button class="button" value="auto">Auto</button>
						<button class="button" value="metadata">Metadata</button>
						<button class="button active" value="none">None</button>
					</div>
				</div>

				<label class="setting checkbox-setting autoplay">
					<input type="checkbox" data-setting="autoplay" />
					<span>Autoplay</span>
				</label>

				<label class="setting checkbox-setting">
					<input type="checkbox" data-setting="loop" />
					<span>Loop</span>
				</label>
			</div>
		</div>
	</script>

	<script type="text/html" id="tmpl-video-details">
		<# var ext, html5types = {
			mp4: wp.media.view.settings.embedMimes.mp4,
			ogv: wp.media.view.settings.embedMimes.ogv,
			webm: wp.media.view.settings.embedMimes.webm
		}; #>

				<div class="media-embed media-embed-details">
			<div class="embed-media-settings embed-video-settings">
				<div class="wp-video-holder">
				<#
				var w = ! data.model.width || data.model.width > 640 ? 640 : data.model.width,
					h = ! data.model.height ? 360 : data.model.height;

				if ( data.model.width && w !== data.model.width ) {
					h = Math.ceil( ( h * w ) / data.model.width );
				}
				#>

				<#  var w_rule = '', classes = [],
		w, h, settings = wp.media.view.settings,
		isYouTube = isVimeo = false;

	if ( ! _.isEmpty( data.model.src ) ) {
		isYouTube = data.model.src.match(/youtube|youtu\.be/);
		isVimeo = -1 !== data.model.src.indexOf('vimeo');
	}

	if ( settings.contentWidth && data.model.width >= settings.contentWidth ) {
		w = settings.contentWidth;
	} else {
		w = data.model.width;
	}

	if ( w !== data.model.width ) {
		h = Math.ceil( ( data.model.height * w ) / data.model.width );
	} else {
		h = data.model.height;
 	}

	if ( w ) {
		w_rule = 'width: ' + w + 'px; ';
	}

	if ( isYouTube ) {
		classes.push( 'youtube-video' );
	}

	if ( isVimeo ) {
		classes.push( 'vimeo-video' );
	}

#>
<div style="{{ w_rule }}" class="wp-video">
<video controls
	class="wp-video-shortcode {{ classes.join( ' ' ) }}"
	<# if ( w ) { #>width="{{ w }}"<# } #>
	<# if ( h ) { #>height="{{ h }}"<# } #>
	<#
		if ( ! _.isUndefined( data.model.poster ) && data.model.poster ) {
			#> poster="{{ data.model.poster }}"<#
		} #>
		preload="{{ _.isUndefined( data.model.preload ) ? 'metadata' : data.model.preload }}"<#
	 if ( ! _.isUndefined( data.model.autoplay ) && data.model.autoplay ) {
		#> autoplay<#
	}
	 if ( ! _.isUndefined( data.model.loop ) && data.model.loop ) {
		#> loop<#
	}
	#>
>
	<# if ( ! _.isEmpty( data.model.src ) ) {
		if ( isYouTube ) { #>
		<source src="{{ data.model.src }}" type="video/youtube" />
		<# } else if ( isVimeo ) { #>
		<source src="{{ data.model.src }}" type="video/vimeo" />
		<# } else { #>
		<source src="{{ data.model.src }}" type="{{ settings.embedMimes[ data.model.src.split('.').pop() ] }}" />
		<# }
	} #>

	<# if ( data.model.mp4 ) { #>
	<source src="{{ data.model.mp4 }}" type="{{ settings.embedMimes[ 'mp4' ] }}" />
	<# } #>
	<# if ( data.model.m4v ) { #>
	<source src="{{ data.model.m4v }}" type="{{ settings.embedMimes[ 'm4v' ] }}" />
	<# } #>
	<# if ( data.model.webm ) { #>
	<source src="{{ data.model.webm }}" type="{{ settings.embedMimes[ 'webm' ] }}" />
	<# } #>
	<# if ( data.model.ogv ) { #>
	<source src="{{ data.model.ogv }}" type="{{ settings.embedMimes[ 'ogv' ] }}" />
	<# } #>
	<# if ( data.model.flv ) { #>
	<source src="{{ data.model.flv }}" type="{{ settings.embedMimes[ 'flv' ] }}" />
	<# } #>
		{{{ data.model.content }}}
</video>
</div>

				<# if ( ! _.isEmpty( data.model.src ) ) {
					ext = data.model.src.split('.').pop();
					if ( html5types[ ext ] ) {
						delete html5types[ ext ];
					}
				#>
				<label class="setting">
					<span>SRC</span>
					<input type="text" disabled="disabled" data-setting="src" value="{{ data.model.src }}" />
					<button type="button" class="button-link remove-setting">Remove video source</button>
				</label>
				<# } #>
				<# if ( ! _.isEmpty( data.model.mp4 ) ) {
					if ( ! _.isUndefined( html5types.mp4 ) ) {
						delete html5types.mp4;
					}
				#>
				<label class="setting">
					<span>MP4</span>
					<input type="text" disabled="disabled" data-setting="mp4" value="{{ data.model.mp4 }}" />
					<button type="button" class="button-link remove-setting">Remove video source</button>
				</label>
				<# } #>
				<# if ( ! _.isEmpty( data.model.m4v ) ) {
					if ( ! _.isUndefined( html5types.m4v ) ) {
						delete html5types.m4v;
					}
				#>
				<label class="setting">
					<span>M4V</span>
					<input type="text" disabled="disabled" data-setting="m4v" value="{{ data.model.m4v }}" />
					<button type="button" class="button-link remove-setting">Remove video source</button>
				</label>
				<# } #>
				<# if ( ! _.isEmpty( data.model.webm ) ) {
					if ( ! _.isUndefined( html5types.webm ) ) {
						delete html5types.webm;
					}
				#>
				<label class="setting">
					<span>WEBM</span>
					<input type="text" disabled="disabled" data-setting="webm" value="{{ data.model.webm }}" />
					<button type="button" class="button-link remove-setting">Remove video source</button>
				</label>
				<# } #>
				<# if ( ! _.isEmpty( data.model.ogv ) ) {
					if ( ! _.isUndefined( html5types.ogv ) ) {
						delete html5types.ogv;
					}
				#>
				<label class="setting">
					<span>OGV</span>
					<input type="text" disabled="disabled" data-setting="ogv" value="{{ data.model.ogv }}" />
					<button type="button" class="button-link remove-setting">Remove video source</button>
				</label>
				<# } #>
				<# if ( ! _.isEmpty( data.model.flv ) ) {
					if ( ! _.isUndefined( html5types.flv ) ) {
						delete html5types.flv;
					}
				#>
				<label class="setting">
					<span>FLV</span>
					<input type="text" disabled="disabled" data-setting="flv" value="{{ data.model.flv }}" />
					<button type="button" class="button-link remove-setting">Remove video source</button>
				</label>
				<# } #>
								</div>

				<# if ( ! _.isEmpty( html5types ) ) { #>
				<div class="setting">
					<span>Add alternate sources for maximum HTML5 playback:</span>
					<div class="button-large">
					<# _.each( html5types, function (mime, type) { #>
					<button class="button add-media-source" data-mime="{{ mime }}">{{ type }}</button>
					<# } ) #>
					</div>
				</div>
				<# } #>

				<# if ( ! _.isEmpty( data.model.poster ) ) { #>
				<label class="setting">
					<span>Poster Image</span>
					<input type="text" disabled="disabled" data-setting="poster" value="{{ data.model.poster }}" />
					<button type="button" class="button-link remove-setting">Remove poster image</button>
				</label>
				<# } #>
				<div class="setting preload">
					<span>Preload</span>
					<div class="button-group button-large" data-setting="preload">
						<button class="button" value="auto">Auto</button>
						<button class="button" value="metadata">Metadata</button>
						<button class="button active" value="none">None</button>
					</div>
				</div>

				<label class="setting checkbox-setting autoplay">
					<input type="checkbox" data-setting="autoplay" />
					<span>Autoplay</span>
				</label>

				<label class="setting checkbox-setting">
					<input type="checkbox" data-setting="loop" />
					<span>Loop</span>
				</label>

				<label class="setting" data-setting="content">
					<span>Tracks (subtitles, captions, descriptions, chapters, or metadata)</span>
					<#
					var content = '';
					if ( ! _.isEmpty( data.model.content ) ) {
						var tracks = jQuery( data.model.content ).filter( 'track' );
						_.each( tracks.toArray(), function (track) {
							content += track.outerHTML; #>
						<p>
							<input class="content-track" type="text" value="{{ track.outerHTML }}" />
							<button type="button" class="button-link remove-setting remove-track">Remove video track</button>
						</p>
						<# } ); #>
					<# } else { #>
					<em>There are no associated subtitles.</em>
					<# } #>
					<textarea class="hidden content-setting">{{ content }}</textarea>
				</label>
			</div>
		</div>
	</script>

	<script type="text/html" id="tmpl-editor-gallery">
		<# if ( data.attachments.length ) { #>
			<div class="gallery gallery-columns-{{ data.columns }}">
				<# _.each( data.attachments, function( attachment, index ) { #>
					<dl class="gallery-item">
						<dt class="gallery-icon">
							<# if ( attachment.thumbnail ) { #>
								<img src="{{ attachment.thumbnail.url }}" width="{{ attachment.thumbnail.width }}" height="{{ attachment.thumbnail.height }}" alt="" />
							<# } else { #>
								<img src="{{ attachment.url }}" alt="" />
							<# } #>
						</dt>
						<# if ( attachment.caption ) { #>
							<dd class="wp-caption-text gallery-caption">
								{{{ data.verifyHTML( attachment.caption ) }}}
							</dd>
						<# } #>
					</dl>
					<# if ( index % data.columns === data.columns - 1 ) { #>
						<br style="clear: both;">
					<# } #>
				<# } ); #>
			</div>
		<# } else { #>
			<div class="wpview-error">
				<div class="dashicons dashicons-format-gallery"></div><p>No items found.</p>
			</div>
		<# } #>
	</script>

	<script type="text/html" id="tmpl-crop-content">
		<img class="crop-image" src="{{ data.url }}" alt="Image crop area preview. Requires mouse interaction.">
		<div class="upload-errors"></div>
	</script>

	<script type="text/html" id="tmpl-site-icon-preview">
		<h2>Preview</h2>
		<strong aria-hidden="true">As a browser icon</strong>
		<div class="favicon-preview">
			<img src="https://themes.getbootstrap.com/wp-admin/images/browser.png" class="browser-preview" width="182" height="" alt="" />

			<div class="favicon">
				<img id="preview-favicon" src="{{ data.url }}" alt="Preview as a browser icon"/>
			</div>
			<span class="browser-title" aria-hidden="true">Bootstrap Themes</span>
		</div>

		<strong aria-hidden="true">As an app icon</strong>
		<div class="app-icon-preview">
			<img id="preview-app-icon" src="{{ data.url }}" alt="Preview as an app icon"/>
		</div>
	</script>

	<script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/my-account\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"https:\/\/themes.getbootstrap.com\/cart\/","is_cart":"","cart_redirect_after_add":"no"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=3.1.2'></script>
	<script type='text/javascript'
		src='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/js/select2/select2.full.min.js?ver=4.0.3'></script>
	<script type='text/javascript'
		src='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.70'></script>
	<script type='text/javascript'
		src='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/my-account\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=3.1.2'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/my-account\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments_f4ae36b707d88dab1c30cbaf2aa1f838"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=3.1.2'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/jquery/ui/sortable.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/jquery/ui/datepicker.min.js?ver=1.11.4'></script>
	<script type='text/javascript'>
jQuery(document).ready(function(jQuery){jQuery.datepicker.setDefaults({"closeText":"Close","currentText":"Today","monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"nextText":"Next","prevText":"Previous","dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["S","M","T","W","T","F","S"],"dateFormat":"MM d, yy","firstDay":1,"isRTL":false});});
</script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-content/plugins/dokan-lite/assets/vendors/tooltips/tooltips.js'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-content/plugins/dokan-lite/assets/vendors/chosen/chosen.jquery.min.js'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var DokanValidateMsg = {"required":"This field is required","remote":"Please fix this field.","email":"Please enter a valid email address.","url":"Please enter a valid URL.","date":"Please enter a valid date.","dateISO":"Please enter a valid date (ISO).","number":"Please enter a valid number.","digits":"Please enter only digits.","creditcard":"Please enter a valid credit card number.","equalTo":"Please enter the same value again.","maxlength_msg":"Please enter no more than {0} characters.","minlength_msg":"Please enter at least {0} characters.","rangelength_msg":"Please enter a value between {0} and {1} characters long.","range_msg":"Please enter a value between {0} and {1}.","max_msg":"Please enter a value less than or equal to {0}.","min_msg":"Please enter a value greater than or equal to {0}."};
/* ]]> */
</script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-content/plugins/dokan-lite/assets/vendors/form-validate/form-validate.js'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/imgareaselect/jquery.imgareaselect.min.js?ver=4.8.4'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/underscore.min.js?ver=1.8.3'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/customize-base.min.js?ver=4.8.4'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/backbone.min.js?ver=1.2.3'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/customize-models.js'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var dokan_refund = {"mon_decimal_point":".","remove_item_notice":"Are you sure you want to remove the selected items? If you have previously reduced this item's stock, or this order was submitted by a customer, you will need to manually restore the item's stock.","i18n_select_items":"Please select some items.","i18n_do_refund":"Are you sure you wish to process this refund request? This action cannot be undone.","i18n_delete_refund":"Are you sure you wish to delete this refund? This action cannot be undone.","remove_item_meta":"Remove this item meta?","ajax_url":"https:\/\/themes.getbootstrap.com\/wp-admin\/admin-ajax.php","order_item_nonce":"ddffee41d0","post_id":"","currency_format_num_decimals":"2","currency_format_symbol":"$","currency_format_decimal_sep":".","currency_format_thousand_sep":",","currency_format":"%s%v","rounding_precision":"4"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-content/plugins/dokan-lite/assets/js/dokan.js'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-content/plugins/dokan-lite/assets/vendors/select2/select2.full.min.js'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-content/plugins/dokan-pro/assets/js/dokan-pro.js'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/shortcode.min.js?ver=4.8.4'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var _wpUtilSettings = {"ajax":{"url":"\/wp-admin\/admin-ajax.php"}};
/* ]]> */
</script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/wp-util.min.js?ver=4.8.4'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/wp-backbone.min.js?ver=4.8.4'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var _wpMediaModelsL10n = {"settings":{"ajaxurl":"\/wp-admin\/admin-ajax.php","post":{"id":0}}};
/* ]]> */
</script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/media-models.min.js?ver=4.8.4'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var pluploadL10n = {"queue_limit_exceeded":"You have attempted to queue too many files.","file_exceeds_size_limit":"%s exceeds the maximum upload size for this site.","zero_byte_file":"This file is empty. Please try another.","invalid_filetype":"Sorry, this file type is not permitted for security reasons.","not_an_image":"This file is not an image. Please try another.","image_memory_exceeded":"Memory exceeded. Please try another smaller file.","image_dimensions_exceeded":"This is larger than the maximum size. Please try another.","default_error":"An error occurred in the upload. Please try again later.","missing_upload_url":"There was a configuration error. Please contact the server administrator.","upload_limit_exceeded":"You may only upload 1 file.","http_error":"HTTP error.","upload_failed":"Upload failed.","big_upload_failed":"Please try uploading this file with the %1$sbrowser uploader%2$s.","big_upload_queued":"%s exceeds the maximum upload size for the multi-file uploader when used in your browser.","io_error":"IO error.","security_error":"Security error.","file_cancelled":"File canceled.","upload_stopped":"Upload stopped.","dismiss":"Dismiss","crunching":"Crunching\u2026","deleted":"moved to the trash.","error_uploading":"\u201c%s\u201d has failed to upload."};
var _wpPluploadSettings = {"defaults":{"runtimes":"html5,flash,silverlight,html4","file_data_name":"async-upload","url":"\/wp-admin\/async-upload.php","flash_swf_url":"https:\/\/themes.getbootstrap.com\/wp-includes\/js\/plupload\/plupload.flash.swf","silverlight_xap_url":"https:\/\/themes.getbootstrap.com\/wp-includes\/js\/plupload\/plupload.silverlight.xap","filters":{"max_file_size":"536870912b","mime_types":[{"extensions":"jpg,jpeg,jpe,gif,png,bmp,tiff,tif,ico,asf,asx,wmv,wmx,wm,avi,divx,flv,mov,qt,mpeg,mpg,mpe,mp4,m4v,ogv,webm,mkv,3gp,3gpp,3g2,3gp2,txt,asc,c,cc,h,srt,csv,tsv,ics,rtx,css,vtt,dfxp,mp3,m4a,m4b,ra,ram,wav,ogg,oga,mid,midi,wma,wax,mka,rtf,pdf,class,tar,zip,gz,gzip,rar,7z,psd,xcf,doc,pot,pps,ppt,wri,xla,xls,xlt,xlw,mdb,mpp,docx,docm,dotx,dotm,xlsx,xlsm,xlsb,xltx,xltm,xlam,pptx,pptm,ppsx,ppsm,potx,potm,ppam,sldx,sldm,onetoc,onetoc2,onetmp,onepkg,oxps,xps,odt,odp,ods,odg,odc,odb,odf,wp,wpd,key,numbers,pages"}]},"multipart_params":{"action":"upload-attachment","_wpnonce":"4cc3c2dfcf"}},"browser":{"mobile":false,"supported":true},"limitExceeded":false};
/* ]]> */
</script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/plupload/wp-plupload.min.js?ver=4.8.4'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var mejsL10n = {"language":"en-US","strings":{"Close":"Close","Fullscreen":"Fullscreen","Turn off Fullscreen":"Turn off Fullscreen","Go Fullscreen":"Go Fullscreen","Download File":"Download File","Download Video":"Download Video","Play":"Play","Pause":"Pause","Captions\/Subtitles":"Captions\/Subtitles","None":"None","Time Slider":"Time Slider","Skip back %1 seconds":"Skip back %1 seconds","Video Player":"Video Player","Audio Player":"Audio Player","Volume Slider":"Volume Slider","Mute Toggle":"Mute Toggle","Unmute":"Unmute","Mute":"Mute","Use Up\/Down Arrow keys to increase or decrease volume.":"Use Up\/Down Arrow keys to increase or decrease volume.","Use Left\/Right Arrow keys to advance one second, Up\/Down arrows to advance ten seconds.":"Use Left\/Right Arrow keys to advance one second, Up\/Down arrows to advance ten seconds."}};
var _wpmejsSettings = {"pluginPath":"\/wp-includes\/js\/mediaelement\/"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/mediaelement/mediaelement-and-player.min.js?ver=2.22.0'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/mediaelement/wp-mediaelement.min.js?ver=4.8.4'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var _wpMediaViewsL10n = {"url":"URL","addMedia":"Add Media","search":"Search","select":"Select","cancel":"Cancel","update":"Update","replace":"Replace","remove":"Remove","back":"Back","selected":"%d selected","dragInfo":"Drag and drop to reorder media files.","uploadFilesTitle":"Upload Files","uploadImagesTitle":"Upload Images","mediaLibraryTitle":"Media Library","insertMediaTitle":"Insert Media","createNewGallery":"Create a new gallery","createNewPlaylist":"Create a new playlist","createNewVideoPlaylist":"Create a new video playlist","returnToLibrary":"\u2190 Return to library","allMediaItems":"All media items","allDates":"All dates","noItemsFound":"No items found.","insertIntoPost":"Insert into post","unattached":"Unattached","trash":"Trash","uploadedToThisPost":"Uploaded to this post","warnDelete":"You are about to permanently delete this item from your site.\nThis action cannot be undone.\n 'Cancel' to stop, 'OK' to delete.","warnBulkDelete":"You are about to permanently delete these items from your site.\nThis action cannot be undone.\n 'Cancel' to stop, 'OK' to delete.","warnBulkTrash":"You are about to trash these items.\n  'Cancel' to stop, 'OK' to delete.","bulkSelect":"Bulk Select","cancelSelection":"Cancel Selection","trashSelected":"Trash Selected","untrashSelected":"Untrash Selected","deleteSelected":"Delete Selected","deletePermanently":"Delete Permanently","apply":"Apply","filterByDate":"Filter by date","filterByType":"Filter by type","searchMediaLabel":"Search Media","searchMediaPlaceholder":"Search media items...","noMedia":"No media files found.","attachmentDetails":"Attachment Details","insertFromUrlTitle":"Insert from URL","setFeaturedImageTitle":"Featured Image","setFeaturedImage":"Set featured image","createGalleryTitle":"Create Gallery","editGalleryTitle":"Edit Gallery","cancelGalleryTitle":"\u2190 Cancel Gallery","insertGallery":"Insert gallery","updateGallery":"Update gallery","addToGallery":"Add to gallery","addToGalleryTitle":"Add to Gallery","reverseOrder":"Reverse order","imageDetailsTitle":"Image Details","imageReplaceTitle":"Replace Image","imageDetailsCancel":"Cancel Edit","editImage":"Edit Image","chooseImage":"Choose Image","selectAndCrop":"Select and Crop","skipCropping":"Skip Cropping","cropImage":"Crop Image","cropYourImage":"Crop your image","cropping":"Cropping\u2026","suggestedDimensions":"Suggested image dimensions: %1$s by %2$s pixels.","cropError":"There has been an error cropping your image.","audioDetailsTitle":"Audio Details","audioReplaceTitle":"Replace Audio","audioAddSourceTitle":"Add Audio Source","audioDetailsCancel":"Cancel Edit","videoDetailsTitle":"Video Details","videoReplaceTitle":"Replace Video","videoAddSourceTitle":"Add Video Source","videoDetailsCancel":"Cancel Edit","videoSelectPosterImageTitle":"Select Poster Image","videoAddTrackTitle":"Add Subtitles","playlistDragInfo":"Drag and drop to reorder tracks.","createPlaylistTitle":"Create Audio Playlist","editPlaylistTitle":"Edit Audio Playlist","cancelPlaylistTitle":"\u2190 Cancel Audio Playlist","insertPlaylist":"Insert audio playlist","updatePlaylist":"Update audio playlist","addToPlaylist":"Add to audio playlist","addToPlaylistTitle":"Add to Audio Playlist","videoPlaylistDragInfo":"Drag and drop to reorder videos.","createVideoPlaylistTitle":"Create Video Playlist","editVideoPlaylistTitle":"Edit Video Playlist","cancelVideoPlaylistTitle":"\u2190 Cancel Video Playlist","insertVideoPlaylist":"Insert video playlist","updateVideoPlaylist":"Update video playlist","addToVideoPlaylist":"Add to video playlist","addToVideoPlaylistTitle":"Add to Video Playlist","settings":{"tabs":[],"tabUrl":"https:\/\/themes.getbootstrap.com\/wp-admin\/media-upload.php?chromeless=1","mimeTypes":{"image":"Images","audio":"Audio","video":"Video"},"captions":true,"nonce":{"sendToEditor":"726464d676","wpRestApi":"77764ac8d0"},"post":{"id":0},"defaultProps":{"link":"","align":"","size":""},"attachmentCounts":{"audio":1,"video":1},"oEmbedProxyUrl":"https:\/\/themes.getbootstrap.com\/wp-json\/oembed\/1.0\/proxy","embedExts":["mp3","ogg","m4a","wav","mp4","m4v","webm","ogv","flv"],"embedMimes":{"mp3":"audio\/mpeg","ogg":"audio\/ogg","m4a":"audio\/mpeg","wav":"audio\/wav","mp4":"video\/mp4","m4v":"video\/mp4","webm":"video\/webm","ogv":"video\/ogg","flv":"video\/x-flv"},"contentWidth":640,"months":[{"year":"2018","month":"2","text":"February 2018"},{"year":"2018","month":"1","text":"January 2018"},{"year":"2017","month":"12","text":"December 2017"},{"year":"2017","month":"11","text":"November 2017"},{"year":"2017","month":"10","text":"October 2017"}],"mediaTrash":0}};
/* ]]> */
</script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/media-views.min.js?ver=4.8.4'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/media-editor.min.js?ver=4.8.4'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/media-audiovideo.min.js?ver=4.8.4'></script>
	<script type='text/javascript'
		src='//themes.getbootstrap.com/wp-content/plugins/woocommerce/assets/js/flexslider/jquery.flexslider.min.js?ver=2.6.1'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-content/themes/dokan/assets/js/script.js'></script>
	<script type='text/javascript'
		src='https://themes.getbootstrap.com/wp-includes/js/wp-embed.min.js?ver=4.8.4'></script>
	<script>
	   /* function validate_form(form) {
           var er = 0;
           form.find(".is-invalid").removeClass("is-invalid");
           form.find(".url_invalid").removeClass("url_invalid");
           form.find(".email_invalid").removeClass("email_invalid");

           form.find(".check_url").each(function () {

               if (!jQuery(this).val().match(/^(https?|ftp):\/\/([a-zA-Z0-9.-]+(:[a-zA-Z0-9.&%$-]+)*@)*((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])){3}|([a-zA-Z0-9-]+\.)*[a-zA-Z0-9-]+\.(com|edu|gov|int|mil|net|org|biz|arpa|info|name|pro|aero|coop|museum|[a-zA-Z]{2}))(:[0-9]+)*(\/($|[a-zA-Z0-9.,?'\\+&%$#=~_-]+))*$/)) {
                   if (jQuery(this).val().indexOf("ailto:") > 0) {

                   } else {
                       er = 1;
                       jQuery(this).addClass("is-invalid").addClass("url_invalid");
                   }
               }

           });

           form.find(".check_email").each(function () {
               if (!jQuery(this).val().match(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/)) {
                   er = 1;
                   jQuery(this).addClass("is-invalid").addClass("email_invalid");
               }
           });

           if (jQuery("#upload_cover").length) {
               if (!jQuery("#upload_cover").val().length && jQuery(".upload-image__cover__overlay").css("background-image") !== "none") {
                   jQuery("#cover_input_feedback").hide();
                   jQuery(".upload-image__cover__overlay").removeClass("invalid-img");
               } else {
                   if (!jQuery("#upload_cover").val().length) {
                       jQuery("#cover_input_feedback").show();
                       jQuery(".upload-image__cover__overlay").addClass("invalid-img");
                       er = 1;
                   } else {
                       if (parseInt(jQuery(".upload-image__cover__overlay").attr("data-width")) < 1200) {
                           jQuery(".upload-image__cover__overlay").addClass("invalid-img");
                           jQuery("#cover_input_feedback").html("Cover images need to be at least 1200px wide").show();
                           er = 1;
                       } else {
                           jQuery("#cover_input_feedback").hide();
                           jQuery(".upload-image__cover__overlay").removeClass("invalid-img");
                       }
                   }
               }
           }

           if (jQuery("#preview_screenshot").length) {
               if (!jQuery("#preview_screenshot").val().length && jQuery(".upload-image__cover__overlay").css("background-image") !== "none") {
                   jQuery("#cover_input_feedback").hide();
                   jQuery(".upload-image__cover__overlay").removeClass("invalid-img");
               } else {
                   if (!jQuery("#preview_screenshot").val().length) {
                       jQuery("#cover_input_feedback").show();
                       jQuery(".upload-image__cover__overlay").addClass("invalid-img");
                       er = 1;
                   } else {
                       if (parseInt(jQuery(".upload-image__cover__overlay").attr("data-width")) < 1200 || parseInt(jQuery(".upload-image__cover__overlay").attr("data-height")) < 900) {
                           jQuery(".upload-image__cover__overlay").addClass("invalid-img");
                           jQuery("#cover_input_feedback").html("Cover images need to be at least 1200px wide and 900px tall").show();
                           er = 1;
                       } else {
                           jQuery("#cover_input_feedback").hide();
                           jQuery(".upload-image__cover__overlay").removeClass("invalid-img");
                       }
                   }
               }
           }

           if (jQuery("#upload_avatar").length) {
               if (!jQuery("#upload_avatar").val().length && jQuery(".upload-image__avatar").css("background-image") !== "none") {
                   jQuery("#avatar_input_feedback").hide();
                   jQuery(".upload-image__avatar").removeClass("invalid-img");
               } else {
                   if (!jQuery("#upload_avatar").val().length) {
                       jQuery("#avatar_input_feedback").show();
                       jQuery(".upload-image__avatar").addClass("invalid-img");
                       er = 1;
                   } else {
                       if (parseInt(jQuery(".upload-image__avatar").attr("data-width")) < 300) {
                           jQuery("#avatar_input_feedback").html("Avatar images need to be at least 300px wide").show();
                           jQuery(".upload-image__avatar").addClass("invalid-img");
                           er = 1;
                       } else {
                           jQuery("#avatar_input_feedback").hide();
                           jQuery(".upload-image__avatar").removeClass("invalid-img");
                       }
                   }
               }
           }

           if (jQuery("#theme_file").length) {
               if (jQuery("#theme_file_label a").length) {
                   jQuery("#theme_input_feedback").hide();
               } else {
                   if (!jQuery("#theme_file").val().length) {
                       jQuery("#theme_input_feedback").show();
                       er = 1;
                   } else {
                       if (parseInt(jQuery("#theme_file_label").attr("data-size")) > 100000) {
                           jQuery("#theme_input_feedback").html("The maximum size of uploaded files is 100MB").show();
                           er = 1;
                       } else {
                           jQuery("#theme_input_feedback").hide();
                       }
                   }
               }
           }

           form.find(".required, input[required]").each(function () {
               if (jQuery(this).is("select")) {
                   jQuery(this).addClass("test");
                   if (jQuery(this).is("[multiple]") == false) {
                       if (!jQuery(this).val() || jQuery(this).val() == 0 || jQuery(this).val() < 0) {
                           //alert("bbbb");
                           jQuery(this).addClass("is-invalid");
                           jQuery(this).parent().find(".customSelect").addClass("is-invalid");
                       }
                   } else {
                       if (!jQuery(this).find("option:selected").length) {
                           jQuery(this).addClass("is-invalid");
                           jQuery(this).parent().find(".customSelect").addClass("is-invalid");
                       }
                   }
               } else if (jQuery(this).is('[type="checkbox"]') || jQuery(this).is('[type="radio"]')) {
                   if (!form.find('input[name="' + jQuery(this).attr("name") + '"]:checked').length) {
                       form.find('input[name="' + jQuery(this).attr("name") + '"]').addClass("is-invalid");
                   }
               } else if (jQuery(this).find('input:file').length && !jQuery(this).find('input:file').val()) {
                   jQuery(this).addClass("is-invalid");
               } else if ((jQuery(this).is("input, select, textarea") && !jQuery(this).val()) || jQuery(this).is(".is-invalid_exists")) {
                   //er = 1;
                   if (!jQuery(this).is("#user_core_password") && !jQuery(this).is("#user_core_password_confirm2")) {
                       jQuery(this).addClass("is-invalid");
                       jQuery(this).parent().find(".customSelect").addClass("is-invalid");
                   }
               }
           });
           form.find(".is-invalid_exists").each(function () {
               er = 1;
               jQuery(this).addClass("is-invalid");
           });
           var passok = 1;
           var passmatch = 1;
           form.find("#user_core_password").each(function () {
               if (form.find("#user_core_password_confirm2").length && form.find("#user_core_password").val() != form.find("#user_core_password_confirm2").val()) {
                   passmatch = 0;
               }
               var validated = true;
               if (jQuery(this).val().length < 8) {
                   validated = false;
               }
               //                var res = /[a-z]/;
               //                if (!res.test(jQuery(this).val())) {
               //                    validated = false;
               //                }
               //                var res = /[A-Z]/;
               //                if (!res.test(jQuery(this).val())) {
               //                    validated = false;
               //                }
               //                var res = /[0-9]/;
               //                if (!res.test(jQuery(this).val())) {
               //                    validated = false;
               //                }
               if (validated == true) {
               } else {
                   passok = 0;
               }
               if (!passok || !passmatch) {
                   form.find("#user_core_password").addClass("is-invalid");
                   form.find("#user_core_password_confirm2").addClass("is-invalid");
               } else {
                   form.find("#user_core_password").removeClass("is-invalid");
                   form.find("#user_core_password_confirm2").removeClass("is-invalid");
               }
           });
           if (form.find(".is-invalid").length) {
               er = 1;
           }
           if (!passmatch || !passok) {
               if (!passok) {
                   jQuery("#pass_input_feedback").html("Password must be at least 8 characters in length.");
               } else {

               }
           }
           if (form.find(".email_exists").length) {
               form.find(".email_exists").addClass("is-invalid");
               jQuery("#email_input_feedback").html("That email is already registered.");
           }
           if (form.find(".username_exists").length) {
               jQuery("#email_input_feedback").html("That user name is already registered.");
           }
           if (form.find(".url_invalid").length) {
           }
           if (form.find(".email_invalid").length) {
               jQuery("#email_input_feedback").html("Please input a valid email address.");
           }
           if (er) {
               //form.find(".is-invalid").removeClass("is-invalid");
           }
           if (form.find(".terms").length && !form.find(".terms:checked").length) {
               er = 1;
           }
           if (jQuery("#captcha_completed").val() == 0) {
               er = 1;
           } else {

           }



           if (!er) {
               form.find(".alert-danger").slideUp();
           } else {
               if (form.find(".is-invalid:first").length) {
                   jQuery('html, body').animate({
                       scrollTop: form.find(".is-invalid:first").offset().top - 80
                   }, 1000);
               }
           }
           return er;
       } */
          
        jQuery(document).ready(function () {
            jQuery(".show_if_seller").remove();
           /*  jQuery("form.register p").each(function () {
                jQuery(this).find('input[type="text"], input[type="email"], input[type="password"]').addClass("form-control").prop("required", true);
                jQuery(this).append('<div class="invalid-feedback">输入值不能为空！</div>');
            }); */
            jQuery("form.register").unbind("submit").submit(function (e) {
                //先判断一下是否有空值，并且给出红字提示
                 var er = my_validate_form();alert("er:"+er);
                if (er==false) {alert("daoer");
                    e.stopPropagation();
                    e.preventDefault();
                    return false;
                } else {
                	
                	return true;
                	
                }
            });

            jQuery(".fixed_price").change(function () {
                if (parseInt(jQuery(this).attr("min"))) {
                    if (parseInt(jQuery(this).attr("min")) > parseInt(jQuery(this).val())) {
                        jQuery(this).val(parseInt(jQuery(this).attr("min")));
                    }
                }
                var pr = parseFloat(jQuery(this).val());
                jQuery(this).val(pr.toFixed(2));
            });
            jQuery(".fixed_price").change();

            jQuery(".search-box select").change(function () {
                jQuery(this).closest("form").submit();
            });
        });
    </script>
	<div id="yith-wcwl-popup-message" style="display: none;">
		<div id="yith-wcwl-message"></div>
	</div>

</body>
</html>