<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<!-- index-540:42-->
<head>
    <!-- Basic Page Needs==================================================-->
    <title>Job Stock - Responsive Job Portal Bootstrap Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS==================================================-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/css/plugins.css">
    <link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet">
    <link type="text/css" rel="${pageContext.request.contextPath}/resources/stylesheet" id="jssDefault" href="${pageContext.request.contextPath}/resources/assets/css/colors/green-style.css">
</head>
<body>
<div class="Loader"></div>
<div class="wrapper">
    <nav class="navbar navbar-default navbar-fixed navbar-light white bootsnav">
        <div class="container">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu"><i
                    class="fa fa-bars"></i></button>
            <div class="navbar-header"><a class="navbar-brand" href="index-6.jsp"><img src="${pageContext.request.contextPath}/resources/assets/img/logo.png"
                                                                                        class="logo logo-scrolled"
                                                                                        alt=""></a></div>
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav navbar-left" data-in="fadeInDown" data-out="fadeOutUp">

                    <li class="dropdown megamenu-fw">
                    <li><a href="search-new.html">Jobs</a></li>
                    <li><a href="create-job.html">Creata Job</a></li>
                    <li><a href="blog.html">Blog</a></li>

                </ul>
                <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">

                    <li><a href="pricing.html"><i class="fa fa-sign-in" aria-hidden="true"></i>Pricing</a></li>
                    <li><a href="e-wallet.html"><i class="fa fa-dollar" aria-hidden="true"></i>Payment</a></li>
                    <li><a href="signup.html"><i class="" aria-hidden="true"></i>Sign Up Now</a></li>
                    <li class="left-br"><a href="javascript:void(0)" data-toggle="modal" data-target="#signup"
                                           class="signin">Sign In Now</a></li>

                </ul>
            </div>
        </div>
    </nav>
    <div class="clearfix"></div>
    <div class="banner home-5" style="background-image:url(${pageContext.request.contextPath}/resources/assets/img/6604.jpg);">
        <div class="container">
            <div class="banner-caption">
                <div class="col-md-12 col-sm-12 banner-text">
                    <h1>7,000+ Browse Jobs</h1>

                    <form class="form-horizontal">
                        <div class="col-md-4 no-padd">
                            <div class="input-group"><input type="text" class="form-control right-bor" id="joblist"
                                                            placeholder="Skills, Designations, Companies"></div>
                        </div>
                        <div class="col-md-3 no-padd">
                            <div class="input-group"><input type="text" class="form-control right-bor" id="location"
                                                            placeholder="Search By Location.."></div>
                        </div>
                        <div class="col-md-3 no-padd">
                            <div class="input-group">
                                <select id="choose-city" class="form-control">
                                    <option>Choose City</option>
                                    <option>Thá»§ Äá»©c</option>
                                    <option>Quáº­n 1</option>
                                    <option>Quáº­n 2</option>
                                    <option>Quáº­n 3</option>
                                    <option>Quáº­n 4</option>
                                    <option>Quáº­n 5</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2 no-padd">
                            <div class="input-group">
                                <button type="submit" class="btn btn-primary">Search Job</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <section>
        <div class="container">
            <div class="row">
                <div class="main-heading">
                    <p>200 New Jobs</p>

                    <h2>New <span>Jobs</span></h2>
                </div>
            </div>
            <!-- Job List -->
            <div class="row extra-mrg">
                <div class="col-md-3 col-sm-6">
                    <div class="grid-view brows-job-list">
                    	<a href="${pageContext.request.contextPath}/job-apply-detail?id_job=1">
                        <div class="brows-job-company-img"><img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-responsive"
                                                                alt=""/></div>
                        <div class="brows-job-position">
                            <h3><a href="job-detail.html">Design Logo</a></h3>

                            <p><span>Google</span></p>
                        </div>
                        </a>
                        <div class="job-position"><span class="job-num">5 Position</span></div>
                        <div class="brows-job-type"><span class="freelanc">Freelancer</span></div>
                        <ul class="grid-view-caption">
                            <li>
                                <div class="brows-job-location">
                                    <p><i class="fa fa-map-marker"></i>NL University</p>
                                </div>
                            </li>
                            <li>
                                <p><span class="brows-job-sallery"><i class="fa fa-money"></i>$110 - 200</span></p>
                            </li>
                        </ul>
                        <span class="tg-themetag tg-featuretag">UlTIMATE</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="grid-view brows-job-list">
                        <div class="brows-job-company-img"><img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-responsive"
                                                                alt=""/></div>
                        <div class="brows-job-position">
                            <h3><a href="job-detail.html">Design Logo</a></h3>

                            <p><span>Google</span></p>
                        </div>
                        <div class="job-position"><span class="job-num">5 Position</span></div>
                        <div class="brows-job-type"><span class="freelanc">Freelancer</span></div>
                        <ul class="grid-view-caption">
                            <li>
                                <div class="brows-job-location">
                                    <p><i class="fa fa-map-marker"></i>NL University</p>
                                </div>
                            </li>
                            <li>
                                <p><span class="brows-job-sallery"><i class="fa fa-money"></i>$110 - 200</span></p>
                            </li>
                        </ul>
                        <span class="tg-themetag tg-featuretag">UlTIMATE</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="grid-view brows-job-list">
                        <div class="brows-job-company-img"><img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-responsive"
                                                                alt=""/></div>
                        <div class="brows-job-position">
                            <h3><a href="job-detail.html">Design Logo</a></h3>

                            <p><span>Google</span></p>
                        </div>
                        <div class="job-position"><span class="job-num">5 Position</span></div>
                        <div class="brows-job-type"><span class="freelanc">Freelancer</span></div>
                        <ul class="grid-view-caption">
                            <li>
                                <div class="brows-job-location">
                                    <p><i class="fa fa-map-marker"></i>NL University</p>
                                </div>
                            </li>
                            <li>
                                <p><span class="brows-job-sallery"><i class="fa fa-money"></i>$110 - 200</span></p>
                            </li>
                        </ul>
                        <span class="tg-themetag tg-featuretag">UlTIMATE</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="grid-view brows-job-list">
                        <div class="brows-job-company-img"><img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-responsive"
                                                                alt=""/></div>
                        <div class="brows-job-position">
                            <h3><a href="job-detail.html">Design Logo</a></h3>

                            <p><span>Google</span></p>
                        </div>
                        <div class="job-position"><span class="job-num">5 Position</span></div>
                        <div class="brows-job-type"><span class="freelanc">Freelancer</span></div>
                        <ul class="grid-view-caption">
                            <li>
                                <div class="brows-job-location">
                                    <p><i class="fa fa-map-marker"></i>NL University</p>
                                </div>
                            </li>
                            <li>
                                <p><span class="brows-job-sallery"><i class="fa fa-money"></i>$110 - 200</span></p>
                            </li>
                        </ul>
                        <span class="tg-themetag tg-featuretag">UlTIMATE</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="grid-view brows-job-list">
                        <div class="brows-job-company-img"><img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-responsive"
                                                                alt=""/></div>
                        <div class="brows-job-position">
                            <h3><a href="job-detail.html">Design Logo</a></h3>

                            <p><span>Google</span></p>
                        </div>
                        <div class="job-position"><span class="job-num">5 Position</span></div>
                        <div class="brows-job-type"><span class="freelanc">Freelancer</span></div>
                        <ul class="grid-view-caption">
                            <li>
                                <div class="brows-job-location">
                                    <p><i class="fa fa-map-marker"></i>NL University</p>
                                </div>
                            </li>
                            <li>
                                <p><span class="brows-job-sallery"><i class="fa fa-money"></i>$110 - 200</span></p>
                            </li>
                        </ul>
                        <span class="tg-themetag tg-featuretag">UlTIMATE</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="grid-view brows-job-list">
                        <div class="brows-job-company-img"><img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-responsive"
                                                                alt=""/></div>
                        <div class="brows-job-position">
                            <h3><a href="job-detail.html">Design Logo</a></h3>

                            <p><span>Google</span></p>
                        </div>
                        <div class="job-position"><span class="job-num">5 Position</span></div>
                        <div class="brows-job-type"><span class="freelanc">Freelancer</span></div>
                        <ul class="grid-view-caption">
                            <li>
                                <div class="brows-job-location">
                                    <p><i class="fa fa-map-marker"></i>NL University</p>
                                </div>
                            </li>
                            <li>
                                <p><span class="brows-job-sallery"><i class="fa fa-money"></i>$110 - 200</span></p>
                            </li>
                        </ul>
                        <span class="tg-themetag tg-featuretag">UlTIMATE</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="grid-view brows-job-list">
                        <div class="brows-job-company-img"><img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-responsive"
                                                                alt=""/></div>
                        <div class="brows-job-position">
                            <h3><a href="job-detail.html">Design Logo</a></h3>

                            <p><span>Google</span></p>
                        </div>
                        <div class="job-position"><span class="job-num">5 Position</span></div>
                        <div class="brows-job-type"><span class="freelanc">Freelancer</span></div>
                        <ul class="grid-view-caption">
                            <li>
                                <div class="brows-job-location">
                                    <p><i class="fa fa-map-marker"></i>NL University</p>
                                </div>
                            </li>
                            <li>
                                <p><span class="brows-job-sallery"><i class="fa fa-money"></i>$110 - 200</span></p>
                            </li>
                        </ul>
                        <span class="tg-themetag tg-featuretag">UlTIMATE</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="grid-view brows-job-list">
                        <div class="brows-job-company-img"><img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-responsive"
                                                                alt=""/></div>
                        <div class="brows-job-position">
                            <h3><a href="job-detail.html">Design Logo</a></h3>

                            <p><span>Google</span></p>
                        </div>
                        <div class="job-position"><span class="job-num">5 Position</span></div>
                        <div class="brows-job-type"><span class="freelanc">Freelancer</span></div>
                        <ul class="grid-view-caption">
                            <li>
                                <div class="brows-job-location">
                                    <p><i class="fa fa-map-marker"></i>NL University</p>
                                </div>
                            </li>
                            <li>
                                <p><span class="brows-job-sallery"><i class="fa fa-money"></i>$110 - 200</span></p>
                            </li>
                        </ul>
                        <span class="tg-themetag tg-featuretag">UlTIMATE</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="main-heading">
                    <a href="search-new.html">
                    <h3>Load More</h3>
                    </a>
                </div>
            </div>

        </div>
    </section>
    <div class="clearfix"></div>
    <div class="clearfix"></div>
    <section class="wp-process">
        <div class="container">
            <div class="row">
                <div class="main-heading">
                    <p>How We Work</p>

                    <h2>Our Work <span>Process</span></h2>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="work-process">
                    <div class="work-process-icon"><span class="icon-search"></span></div>
                    <div class="work-process-caption">
                        <h4>Search Job</h4>

                        <p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien ac condimentum. Vestibulum congue
                            posuere lacus</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="work-process">
                    <div class="work-process-icon"><span class="icon-mobile"></span></div>
                    <div class="work-process-caption">
                        <h4>Find Job</h4>

                        <p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien ac condimentum. Vestibulum congue
                            posuere lacus</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="work-process">
                    <div class="work-process-icon"><span class="icon-profile-male"></span></div>
                    <div class="work-process-caption">
                        <h4>Hire Employee</h4>

                        <p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien ac condimentum. Vestibulum congue
                            posuere lacus</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="work-process">
                    <div class="work-process-icon"><span class="icon-layers"></span></div>
                    <div class="work-process-caption">
                        <h4>Start Work</h4>

                        <p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien ac condimentum. Vestibulum congue
                            posuere lacus</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="work-process">
                    <div class="work-process-icon"><span class="icon-wallet"></span></div>
                    <div class="work-process-caption">
                        <h4>Pay Money</h4>

                        <p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien ac condimentum. Vestibulum congue
                            posuere lacus</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="work-process">
                    <div class="work-process-icon"><span class="icon-happy"></span></div>
                    <div class="work-process-caption">
                        <h4>Happy</h4>

                        <p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien ac condimentum. Vestibulum congue
                            posuere lacus</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="testimonial" id="testimonial">
        <div class="container">
            <div class="row">
                <div class="main-heading">
                    <p>What Say Our Client</p>

                    <h2>Our Success <span>Stories</span></h2>
                </div>
            </div>
            <div class="row">
                <div id="client-testimonial-slider" class="owl-carousel">
                    <div class="client-testimonial">
                        <div class="pic"><img src="${pageContext.request.contextPath}/resources/assets/img/client-1.jpg" alt=""></div>
                        <p class="client-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                            eiusmod tempor et dolore magna aliqua.</p>

                        <h3 class="client-testimonial-title">Lacky Mole</h3>
                        <ul class="client-testimonial-rating">
                            <li class="fa fa-star-o"></li>
                            <li class="fa fa-star-o"></li>
                            <li class="fa fa-star"></li>
                        </ul>
                    </div>
                    <div class="client-testimonial">
                        <div class="pic"><img src="${pageContext.request.contextPath}/resources/assets/img/client-2.jpg" alt=""></div>
                        <p class="client-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                            eiusmod tempor et dolore magna aliqua.</p>

                        <h3 class="client-testimonial-title">Karan Wessi</h3>
                        <ul class="client-testimonial-rating">
                            <li class="fa fa-star-o"></li>
                            <li class="fa fa-star"></li>
                            <li class="fa fa-star"></li>
                        </ul>
                    </div>
                    <div class="client-testimonial">
                        <div class="pic"><img src="${pageContext.request.contextPath}/resources/assets/img/client-3.jpg" alt=""></div>
                        <p class="client-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                            eiusmod tempor et dolore magna aliqua.</p>

                        <h3 class="client-testimonial-title">Roul Pinchai</h3>
                        <ul class="client-testimonial-rating">
                            <li class="fa fa-star-o"></li>
                            <li class="fa fa-star-o"></li>
                            <li class="fa fa-star"></li>
                        </ul>
                    </div>
                    <div class="client-testimonial">
                        <div class="pic"><img src="${pageContext.request.contextPath}/resources/assets/img/client-4.jpg" alt=""></div>
                        <p class="client-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                            eiusmod tempor et dolore magna aliqua.</p>

                        <h3 class="client-testimonial-title">Adam Jinna</h3>
                        <ul class="client-testimonial-rating">
                            <li class="fa fa-star-o"></li>
                            <li class="fa fa-star-o"></li>
                            <li class="fa fa-star"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="pricing">
        <div class="container">
            <div class="row">
                <div class="main-heading">
                    <p>Check Our Packages</p>

                    <h2>Our Best <span>Offers</span></h2>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="pr-table">
                    <div class="pr-header">
                        <div class="pr-plan">
                            <h4>Try out</h4>
                        </div>
                        <div class="pr-price">
                            <h3>Free<sub>/Week</sub></h3>
                        </div>
                    </div>
                    <div class="pr-features">
                        <ul>
                            <li>Time : 1 week</li>
                            <li >Prioritize : <a style="color: #11b719">normal</a></li>
                            <li>Post limit : 3 posts<sub>/Week</sub></li>
                            <li>You can only try it once</li>
                        </ul>
                    </div>
                    <div class="pr-buy-button"><a href="#" class="pr-btn" title="Price Button">Get Started</a></div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="pr-table">
                    <div class="pr-header active">
                        <div class="pr-plan">
                            <h4>Ultimate</h4>
                        </div>
                        <div class="pr-price">
                            <h3><sup>$</sup>50<sub>/6 Months</sub></h3>
                        </div>
                    </div>
                    <div class="pr-features">
                        <ul>
                            <li>Time : 6 months</li>
                            <li >Prioritize : <a style="color: #ff526c">very hight</a></li>
                            <li>Post limit : unlimited</li>
                            <li>You can purchase more than once</li>
                        </ul>
                    </div>
                    <div class="pr-buy-button"><a href="#" class="pr-btn active" title="Price Button">Get Started</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="pr-table">
                    <div class="pr-header">
                        <div class="pr-plan">
                            <h4>Premium</h4>
                        </div>
                        <div class="pr-price">
                            <h3><sup>$</sup>15<sub>/Month</sub></h3>
                        </div>
                    </div>
                    <div class="pr-features">
                        <ul>
                            <li>Time : 1 months</li>
                            <li >Prioritize : <a style="color: #26a9e1">hight</a></li>
                            <li>Post limit : unlimited</li>
                            <li>You can purchase more than once</li>
                        </ul>
                    </div>
                    <div class="pr-buy-button"><a href="#" class="pr-btn" title="Price Button">Get Started</a></div>
                </div>
            </div>
        </div>
    </section>

    <div class="clearfix"></div>
    <footer class="footer">
        <div class="row lg-menu">
            <div class="container">
                <div class="col-md-4 col-sm-4"><img src="${pageContext.request.contextPath}/resources/assets/img/footer-logo.png" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-8 co-sm-8 pull-right">
                    <ul>
                        <li><a href="index-2.html" title="">Home</a></li>
                        <li><a href="blog.html" title="">Blog</a></li>
                        <li><a href="404.html" title="">404</a></li>
                        <li><a href="faq.html" title="">FAQ</a></li>
                        <li><a href="contact.html" title="">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row no-padding">
            <div class="container">
                <div class="col-md-3 col-sm-12">
                    <div class="footer-widget">
                        <h3 class="widgettitle widget-title">About Job Stock</h3>

                        <div class="textwidget">
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>

                            <p>7860 North Park Place<br>San Francisco, CA 94120</p>

                            <p><strong>Email:</strong> Support@careerdesk</p>

                            <p><strong>Call:</strong> <a href="tel:+15555555555">555-555-1234</a></p>
                            <ul class="footer-social">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="footer-widget">
                        <h3 class="widgettitle widget-title">All Navigation</h3>

                        <div class="textwidget">
                            <div class="textwidget">
                                <ul class="footer-navigation">
                                    <li><a href="manage-company.html" title="">Front-end Design</a></li>
                                    <li><a href="manage-company.html" title="">Android Developer</a></li>
                                    <li><a href="manage-company.html" title="">CMS Development</a></li>
                                    <li><a href="manage-company.html" title="">PHP Development</a></li>
                                    <li><a href="manage-company.html" title="">IOS Developer</a></li>
                                    <li><a href="manage-company.html" title="">Iphone Developer</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="footer-widget">
                        <h3 class="widgettitle widget-title">All Categories</h3>

                        <div class="textwidget">
                            <ul class="footer-navigation">
                                <li><a href="manage-company.html" title="">Front-end Design</a></li>
                                <li><a href="manage-company.html" title="">Android Developer</a></li>
                                <li><a href="manage-company.html" title="">CMS Development</a></li>
                                <li><a href="manage-company.html" title="">PHP Development</a></li>
                                <li><a href="manage-company.html" title="">IOS Developer</a></li>
                                <li><a href="manage-company.html" title="">Iphone Developer</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="footer-widget">
                        <h3 class="widgettitle widget-title">Connect Us</h3>

                        <div class="textwidget">
                            <form class="footer-form"><input type="text" class="form-control" placeholder="Your Name">
                                <input type="text" class="form-control" placeholder="Email"><textarea
                                        class="form-control" placeholder="Message"></textarea>
                                <button type="submit" class="btn btn-primary">Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row copyright">
            <div class="container">
                <p><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></p>
            </div>
        </div>
    </footer>
    <div class="clearfix"></div>
    <div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="tab" role="tabpanel">
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#login" role="tab" data-toggle="tab">Sign
                                In</a></li>
                            <li role="presentation"><a href="#register" role="tab" data-toggle="tab">Sign Up</a></li>
                        </ul>
                        <div class="tab-content" id="myModalLabel2">
                            <div role="tabpanel" class="tab-pane fade in active" id="login">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" class="img-responsive" alt=""/>

                                <div class="subscribe wow fadeInUp">
                                    <form class="form-inline" method="post">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <input type="email" name="email" class="form-control"
                                                       placeholder="Username" required=""><input type="password"
                                                                                                 name="password"
                                                                                                 class="form-control"
                                                                                                 placeholder="Password"
                                                                                                 required="">

                                                <div class="center">
                                                    <button type="submit" id="login-btn" class="submit-btn"> Login
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="register">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" class="img-responsive" alt=""/>

                                <form class="form-inline" method="post">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <input type="text" name="email" class="form-control" placeholder="Your Name"
                                                   required=""><input type="email" name="email" class="form-control"
                                                                      placeholder="Your Email" required=""><input
                                                type="email" name="email" class="form-control" placeholder="Username"
                                                required=""><input type="password" name="password" class="form-control"
                                                                   placeholder="Password" required="">

                                            <div class="center">
                                                <button type="submit" id="subscribe" class="submit-btn"> Create
                                                    Account
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <button class="w3-button w3-teal w3-xlarge w3-right" onclick="openRightMenu()"><i class="spin fa fa-cog"
                                                                                      aria-hidden="true"></i></button>
    <div class="w3-sidebar w3-bar-block w3-card-2 w3-animate-right" style="display:none;right:0;" id="rightMenu">
        <button onclick="closeRightMenu()" class="w3-bar-item w3-button w3-large">Close &times;</button>
        <ul id="styleOptions" title="switch styling">
            <li><a href="javascript: void(0)" class="cl-box blue" data-theme="colors/blue-style"></a></li>
            <li><a href="javascript: void(0)" class="cl-box red" data-theme="colors/red-style"></a></li>
            <li><a href="javascript: void(0)" class="cl-box purple" data-theme="colors/purple-style"></a></li>
            <li><a href="javascript: void(0)" class="cl-box green" data-theme="colors/green-style"></a></li>
            <li><a href="javascript: void(0)" class="cl-box dark-red" data-theme="colors/dark-red-style"></a></li>
            <li><a href="javascript: void(0)" class="cl-box orange" data-theme="colors/orange-style"></a></li>
            <li><a href="javascript: void(0)" class="cl-box sea-blue" data-theme="colors/sea-blue-style "></a></li>
            <li><a href="javascript: void(0)" class="cl-box pink" data-theme="colors/pink-style"></a></li>
        </ul>
    </div>
    <!-- Scripts==================================================-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/viewportchecker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootsnav.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/select2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/wysihtml5-0.3.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootstrap-wysihtml5.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/datedropper.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/dropzone.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/loader.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/slick.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/gmap3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.easy-autocomplete.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jQuery.style.switcher.js"></script>
    <script type="text/javascript">$(document).ready(function () {
        $('#styleOptions').styleSwitcher();
    });</script>
    <script>function openRightMenu() {
        document.getElementById("rightMenu").style.display = "block";
    }
    function closeRightMenu() {
        document.getElementById("rightMenu").style.display = "none";
    }</script>
</div>
</body>
<!-- index-540:45-->
</html>