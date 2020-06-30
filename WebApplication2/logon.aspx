<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="logon.aspx.vb" Inherits="WebApplication2.logon" %>

<!DOCTYPE html>

<head runat="server">
    <title></title>
     <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        body {
       background-image: linear-gradient(to right, #ff8177 0%, #ff867a 0%, #ff8c7f 21%, #f99185 52%, #cf556c 78%, #b12a5b 100%);
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
   background-image: linear-gradient(to right, #ff8177 0%, #ff867a 0%, #ff8c7f 21%, #f99185 52%, #cf556c 78%, #b12a5b 100%);
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
    height: 600px;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color:#1e8cf4;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #1e8cf4;
  }
  .carousel-indicators li {
    border-color:#1e8cf4;
  }
  .carousel-indicators li.active {
    background-color: #1e8cf4;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #f4511e !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  .navbar {
    margin-bottom: 0;
    background-color:black;
    z-index: 9999;
    border: 0;
    font-size: 25px !important;
    line-height: 2 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: black !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }

  .button {
  background-color:dimgray; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

.button1 {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
    </style>
  
   
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage"><img src="NewFolder1/unnamed.png" class=" rounded-circle img-responsive" style="height:30px ; width :40px;" /></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#services">LOGIN</a></li>
        <li><a href="#portfolio">HISTORY</a></li>
        <!--<li><a href="#pricing">PRODUCTION CYCLE</a></li>-->
        <li><a href="#contact">CONTACT US</a></li>
      </ul>
    </div>
  </div>
</nav>
    <div class="jumbotron text-center" style="height:500px">
  <h1>RAIL WHEEL PLANT  BELA</h1> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style=" height:100px">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" ></li>
      <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img class="img-responsive" src="NewFolder1/rwp2.jpg" alt="Los Angeles" style="width:100%; height:300px"/>
      </div>

      <div class="item">
        <img class="img-responsive" src="NewFolder1/rwp1.jpg" alt="Chicago" style="width:100%; height:300px"/>
      </div>
    
      <div class="item">
        <img class="img-responsive" src="NewFolder1/rwp3.jpg.png" alt="New york" style="width:100%; height:300px"/>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
        </a>
        </div>
 
</div>
        <div id="about" class="container-fluid">
  <div class="row">
   
      <h2 class="text-center">About RWP , BELA</h2><br/>
      <h4 class="text-center">Rail Wheel Plant (RWP) is situated at Bela, in Saran Distt. of Bihar (India). It is established to meet the growing requirement of wheel discs for the Indian Railways.</h4><br />
      <p style="color:black;">RWP strives to build successful and lasting relationships with its customers by consistently exceeding their expectations. Customer focus and quality remain our watchwords. RWP Bela has been declared  as Production Unit of Indian Railways w.e.f 1.8.2014.

       All our products are subjected to stage and final inspection, starting from the chemical composition of the molten metal till the final inspection. This includes micro/macro properties of material, magnetic particle testing, Ultrasonic testing, Hardness, Warpage, dimensional parameters, surface finish etc.</p>
     

  </div>
</div>
    <div class="container-fluid bg-grey">
  <div class="row">
    
    
      <h2 class="text-center">Our Vision , Our Mission , Our Quality Policy</h2><br/>
      <h4 class="text-center"><strong>VISION:</strong> <br />To become a global leader in the technology of manufacturing Cast Steel Wheels for use by indian Railways and become cost effective for imports sustitution </h4><br>
      <strong class="text-center">MISSION:</strong> 
          <ul style="list-style-type:circle;">
              <li>To emerge as a global player for design, development and manufacturing of our products through continuous improvementby upgrading our quality , reliability , dependability and value addition in a deliberate and proactive manner.</li>
              <li>To perennially endeavour to sustain excellence in customer satisfaction by consistently exceeding their expectations</li>
              <li>To develop our human capital by constant enhancement of their technical , managerial and innovative capabilities</li>
              <li>To promote ethical business practices and values in the true spirit of corporate governance</li>
              <li>To become a growth engine for development of region.</li>
          </ul>
      <strong class="text-center">QUALITY POLICY:</strong> <br />
      <p>We, the employees of Rail Wheel Plant , will strive :</p>
    <ul style="list-style-type:circle;">
        <li>To achieve excellence in quality in the manufacturing of wheel discs</li>
        <li>To satisfy our customers</li>
        <li>To continually improve</li>
        </ul>
  </div>
</div>
    <div id="services" class="container-fluid text-center">
 
  
    
        
           <h3 class="text-center">INTEGRATED INFORMATION MANAGEMENT SYSTEM<br /><br /></h3>
            
                <form id="f1" runat="server">
                    <div class="form-group  " style="align-content:center ;"> 
                        
                        <asp:Label class="form-inline" runat="server" visible="true" id="lblmessage"></asp:Label><br />
                    </div>
                 <div class="form-group  " style="align-content:center ;">
                     
                     <asp:Label class="form-inline" runat="server" ID="lblapplication" Text="APPLICATION"></asp:Label><br />
                     <asp:DropDownList CssClass="form-inline" runat="server" ID="ddapplication" style="width:200px; height:35px; border-radius:15px" DataSourceID="SqlDataSource1" DataTextField="application" DataValueField="application"></asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:misConnectionString %>" SelectCommand="select distinct application from menu_your_password_new"></asp:SqlDataSource>
                 </div>
                    <div class="form-group" style="align-content:center ;">
                     <asp:Label class="form-inline" runat="server" ID="group" Text="GROUP"></asp:Label><br />
                     <asp:DropDownList CssClass="form-inline" runat="server" ID="ddgroup" style="width:200px; height:35px; border-radius:15px" DataSourceID="SqlDataSource2" DataTextField="group_code" DataValueField="group_code"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:misConnectionString %>" SelectCommand="select distinct group_code from menu_your_password_new"></asp:SqlDataSource>
                 </div>
                     <div class="form-group  " style="align-content:center ;">
                     <asp:Label class="form-inline" runat="server" ID="empcode" Text="EMPLOYEE CODE"></asp:Label><br />
                         <div class="input-group-prepend"><span class="glyphicon glyphicon-user"></span><br />000
                     <asp:TextBox CssClass="form-inline" runat="server" ID="txtempcode" style="width:200px ; height:35px; border-radius:15px" ></asp:TextBox></div>
   </div>
                       <div class="form-group " style="align-content:center ;">
                    <asp:Label class="form-inline" runat="server" ID="password" Text="PASSWORD"></asp:Label><br />
                          <div class="input-group-prepend"><span class="glyphicon glyphicon-lock"></span><br />
                     <asp:TextBox CssClass="form-inline" TextMode="Password" runat="server" ID="txtpassword" style="width:200px; height:35px; border-radius:15px"></asp:TextBox></div><br /> <br />
                 </div>
                      <div class="form-group " style="align-content:center ;">
                     <asp:Button CssClass="form-inline button button2" runat="server" ID="btnlogin" type="submit"  style="width:200px ; border-radius:15px" Text="LOGIN"></asp:Button><br /><br />
                     <asp:Button CssClass="form-inline button button2" runat="server" type="submit" ID="btnclear" style="width:200px; border-radius:15px " Text="CLEAR"></asp:Button>
                     </div>
                </form>
            
        

    
  
  
</div>
    <div id="portfolio" class="container-fluid text-center bg-grey">
        <h3 class="text-center">HISTORY</h3>
        <p>
            Rail Wheel Plant, Bela is a Production Unit of Indian Railways w.e.f 1.8.2014. It is situated at Bela in Dariyapur Block of Saran district in Bihar (India). Foundation stone of this Plant was laid in 2008 by the then Minister for Railways Shri Lalu Prasad Yadav. It is being built at an approx. cost of Rs. 1500 crores. It is spread over a land area of 295 acres. The project work is being looked after by Workshop Projects/Indian Railways, Patna. At present, the Project work is continuing and wheel discs are being produced on trial production. However production has started w.e.f 1.8.2014 though colony, track connectivity, implementation of ERP etc are still pending on account of Workshop Projects Organisation, Patna.
            </p>
<strong>Construction
</strong>
        <p>
      The Rail Wheel Plant’s construction started in July 2008. This plant is a step to revive industrialisation in Northern Bihar .Indian Railways made history by awarding this project as EPC contract to M/s Larsen & Toubro Limited. It was for the first time in history of Indian Railways that a highly sophisticated factory was set up without any foreign collaboration. It was possible because of inhouse capability of Railway engineers and Expertise of World renowned Indian company.

     It was a challenge for Railways to start civil works in such a difficult site which is surrounded by river bodies from two sides. To add to the complication, the elevation of Plant was lower than the river bed. Also the soil was so loose, Railways made use of stone columning for increasing the load-bearing capacity of soil.
        </p>
        </div>
      <!--  <div id="pricing" class="container-fluid">
  <div class="text-center">
    <h2>RAIL WHEEL PRODUCTION CYCLE</h2>
      <img class="img-responsive col-md-offset-1
"  src="NewFolder1/download.png"/>
        </div>
        </div> -->
   
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2><br />
      <h2 >Rail Wheel Plant/Bela</h2><br />
    <p>  P.O.- Arvind Nagar <br /><br />
        District - Saran, Bihar - 841221  <br /><br />
        Phone:  06158-272120 Fax:  06158-272120
    </p>
    </div>
    <div class="modal-footer text-capitalize text-center" style="background-image: linear-gradient(to right, #ff8177 0%, #ff867a 0%, #ff8c7f 21%, #f99185 52%, #cf556c 78%, #b12a5b 100%);color:black;"> MAINTAINED BY CRIS</div>     
</body>

</html>
