<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RHome.aspx.cs" Inherits="WebApplication1.RHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    
    <title>Lab Pathology</title>
    
</head>
<body>
    <form id="form1" runat="server">
         <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->

        <h2 style="color: blue; text-align: center;">LAB PATHOLOGY</h2>
         <%--  Navbar starts  --%>

          <nav class="navbar navbar-expand-lg bg-primary">
  <div class="container-fluid">
     <span class="container" style="height: 39px;
    width: 123px;">
    <a class="navbar-brand" href="RHome.aspx">
      <img src="images/img16.jpg" alt="logo" width="75" height="43">
    </a>
  </span>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" style="color:whitesmoke" aria-current="page" href="HomeP1.aspx">Home</a>
        </li>
        <li class="nav-item" style="margin: 8px 12px;">
          <a class=" d-block mt -3" data-bs-toggle="offcanvas" role="button" aria-controls="sidebar"  style="color:whitesmoke ;text-decoration: none;" href="#sidebar">About  </a>
        </li>
        <li class="nav-item" style="margin: 8px 12px;">
          <a class=" d-block mt -3" data-bs-toggle="offcanvas" role="button" aria-controls="sidebar"  style="color:whitesmoke ;text-decoration: none;" href="#sidebar1">Contact  </a>

        </li>
       <div class="btn-group dropend">
  <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Master
  </button>
  <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="Department.aspx">Department</a></li>
    <li><a class="dropdown-item" href="Doctor.aspx">Doctor</a></li>
    <li><a class="dropdown-item" href="Patient.aspx">Patient</a></li>
    <li><a class="dropdown-item" href="Parameter.aspx">Parameters</a></li>
       <li><a class="dropdown-item" href="Test.aspx">Test</a></li>
       <li><a class="dropdown-item" href="Machine.aspx">Machine</a></li>
       <li><a class="dropdown-item" href="Sample.aspx">Sample</a></li>
       <li><a class="dropdown-item" href="Unit.aspx">Unit</a></li>
       <li><a class="dropdown-item" href="Parameterdetail.aspx">Parameters details</a></li>
      <li><a class="dropdown-item" href="HomePage.aspx">ViewData</a></li>
  </ul>
</div>
           <div class="btn-group dropend">
  <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Transaction
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="Bill.aspx">Bill</a></li>
    <li><a class="dropdown-item" href="CasePaper.aspx">Case Paper</a></li>
    <li><a class="dropdown-item" href="CasePaperTest.aspx">Case paper detail</a></li>
  </ul>
</div>
      </ul>
    
    </div>
  </div>
</nav>
        <%--  offcanvas  --%>
        <div class="offcanvas offcanvas-start" tabindex="-1" id="sidebar" aria-labelledby="sidebar-label">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="sidebar-label">About Us</h5>
                <button type="button"class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body"><p>Pathology is considered part of laboratory medicine, a group of medical specialties that study body fluids, such as blood and urine, and cells or tissues to diagnose specific diseases and thus assist medical practitioners in identifying the cause and severity of disease, and in monitoring treatment.</p>
                <img src="images/img4.jpg" style="width: 263px; height: 184px; margin: 0px 37px;" />
            </div>
        </div>
         <div class="offcanvas offcanvas-end" tabindex="-1" id="sidebar1" aria-labelledby="sidebar-label">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="H1">About Us</h5>
                <button type="button"class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="row">
		<div class="col-md-3" style="    background-color: #24a0e2;">
			<div class="contact-info">
				<img src="images/images.png" alt="image" style="height:50px; width:50px;" >
				<h5>Contact Us</h5>
				<h5>We would love to hear from you !</h5>
			</div>
		</div>
		<div class="col-md-9">
			<div class="contact-form">
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname">First Name:</label>
				  <div class="col-sm-10">          
					<input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname">
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="lname">Mobile Number</label>
				  <div class="col-sm-10">          
					<input type="text" class="form-control" id="lname" placeholder="Enter Mobile Number" name="lname">
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="email">Email:</label>
				  <div class="col-sm-10">
					<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="comment">Comment:</label>
				  <div class="col-sm-10">
					<textarea class="form-control" rows="5" id="comment"></textarea>
				  </div>
				</div>
				<div class="form-group">        
				  <div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
				  </div>
				</div>
			</div>
		</div>
	</div>
            </div>
        </div>

         <%--  Carousel starts  --%>
          <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true" style="position: relative; top: 12px; left: 4px; margin: 0px 84px;">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
       <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/img4.jpg" style="width: 100% !important; height: 364px; background-color: #66CCFF;">
    </div>
    <div class="carousel-item">
      <img src="images/img2.jpg" style="width: 100% !important; height: 364px; background-color: #66CCFF;">
    </div>
    <div class="carousel-item">
      <img src="images/img3.jpg" style="width: 100% !important; height: 364px; background-color: #66CCFF;">
    </div>
      <div class="carousel-item">
      <img src="images/img1.jpg" style="width: 100% !important; height: 364px; background-color: #66CCFF;">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

         <%--  examples starts  --%>

        <div style="margin: 91px 247px; position: relative; top: -44px;">
            <div class="col-lg-4">

                <img src="images/img9.jpg" svg class="bd-placeholder-img rounded-circle" width="224" height="233" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveaspectratio="xMidYMid slice" focusable="false" /><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em"></text></svg>
       
        <h6>Dr. Sally Jones</h6>
                <h5>Urologist, Robotic Surgeon | Urologist And Robotic Prostate Surgeon</h5>
                <p>
                    Dr.Sally Jones  graduated from R.G. Kar Medical College in America, America where he completed his MBBS.
                </p>
                <p><a class="btn btn-secondary" href="#">View details »</a></p>
            </div>
        </div>
        <div style="position: absolute; top: 504px; left: 823px;">
            <div class="col-lg-8">

                <img src="images/img7.jpg" svg class="bd-placeholder-img rounded-circle" width="224" height="233" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveaspectratio="xMidYMid slice" focusable="false" /><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em"></text></svg>
       
        <h6>Dr. George Beller</h6>
                <h5>Oncologist | Principal Consultant</h5>
                <p>
                    Dr.George Beller  is Senior Consultant of Medical Oncology at the Max Super Speciality Hospital, UK.
                </p>
                <p><a class="btn btn-secondary" href="#">View details »</a></p>
            </div>
        </div>

          <%--  Doctors  starts  --%>

        <div style="margin:0px; padding:0px">
         <div class="card mb-3" style="max-width: 483px;
    position: absolute;
    top: 980px;
    left: 772px;" >
         
  <div class="row g-0">
    <div class="col-md-4">
      <img src="images/img12.jpg" class="img-fluid rounded-start" alt="..." style="height:175px" >
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Dr.Eugene Barrett</h5>
        <p class="card-text">Neurosurgeon | Director And Senior Consultant
MBBS, MS (Surgery)

Works at  Artemis Hospital
UK</p>
       
      </div>
    </div>
  </div>
</div>
            <div class="card mb-3" style="max-width: 489px; margin: -66px 162px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="images/img13.jpg" class="img-fluid rounded-start" alt="..." style="height:175px" >
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Dr.Peyton Taylor</h5>
        <p class="card-text">Otolaryngologist | Director - ENT
MBBS, DCH, MS

Works at  Max Super Specialty Hospital Saket
Russia </p>

      </div>
    </div>
  </div>
</div>
            <div class="card mb-3" style="max-width: 483px; position: absolute; top: 1208px; left: 773px;">
         
  <div class="row g-0">
    <div class="col-md-4">
      <img src="images/img14.jpg" class="img-fluid rounded-start" alt="..." style="height:175px" >
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Dr. Surbhi Anand</h5>
        <p class="card-text">Dentist | Senior Consultant
B.D.S. and M.D.S.

Works at  Dental Bliss
New Delhi, India</p>
      
      </div>
    </div>
  </div>
</div>
            <div class="card mb-3" style="max-width: 484px; margin: 50px 163px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="images/img15.jpg" class="img-fluid rounded-start" alt="..." style="height:175px" >
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Dr.VL Bhargava</h5>
        <p class="card-text">Uro - Oncologist | Head Of Department
M.Ch (Urology) ,M.S (Surgery),DNB (Surgery),MBBS

Works at  Max Super Specialty Hospital Saket
America -</p>
       
      </div>
    </div>
  </div>
</div>
    </div>

      <!-- Footer -->
<footer class="page-footer font-small blue pt-4" style="background-color:#1e72c5;">

  <!-- Footer Links -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
        <h5 class="text-uppercase" style="color:orange">Lab Pathalogy</h5>
        <p style="color:whitesmoke;">Live More Grow More!!!</p>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase">Have a Query??</h5>

        <ul class="list-unstyled">
          <li>
          <a class=" d-block mt -3" data-bs-toggle="offcanvas" role="button" aria-controls="sidebar"  style="color:whitesmoke ;text-decoration: none;" href="#sidebar1">Contact  </a>
          </li>
         
        </ul>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase">Our Lab</h5>

        <ul class="list-unstyled">
          <li>
          <a class=" d-block mt -3" data-bs-toggle="offcanvas" role="button" aria-controls="sidebar"  style="color:whitesmoke ;text-decoration: none;" href="#sidebar">About  </a>
          </li>
          
        </ul>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2022 Copyright:
    <a href="/" style="color:whitesmoke" > labpathalogy.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->


    </form>
</body>
</html>
