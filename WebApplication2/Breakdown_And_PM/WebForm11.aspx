<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm11.aspx.vb" Inherits="WebApplication2.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <title>PreventiveMaintenance</title>
		<LINK id="mss" href="/wap.css" rel="stylesheet"/>
		<META content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<META content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<META content="JavaScript" name="vs_defaultClientScript"/>
		<META content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
        
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" type="text/javascript"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" type="text/javascript"></script>
         <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
        <link href="jQuery.datetimepicker.min.css" rel="stylesheet" />
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
            <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script type="text/javascript" src= "https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js">  </script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
     <style type="text/css">
         .ui-datepicker {
    background: #333;
    border: 1px solid #555;
    color: #EEE;
    
}
         </style>
        </head>
	<body>
           
    <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../../..//NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse " id="navbarSupportedContent-333" >
      <ul class="navbar-nav ml-auto navbar-center">
         <li class="nav-item" style="font-weight: bold">
             <h1 style="color:white; font-size:30px; margin-left:430px; margin-top:5px">Rail Wheel Plant, Bela</h1> 
       
         </li>
          </ul>
    <ul class="navbar-nav ml-auto  navbar-right">
        <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "  style="font-size:30px"></i>
        </a></li>

       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"  style="font-size:30px"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
         
        <img src="../../../NewFolder1/CRIS-Recruitment.jpg" height="45" style="border-radius:43%"/>
       </a>
      </li>
     </ul>
      
  </div>
</nav> 
    <form id="form1" runat="server">
     <div class="container">
          <div class="table">
					<div class="row">
							<div  class="col" align="center" colSpan="6">
                            <h3>
                                CheckList Entry   </h3>
                                <div  class="col" align="right">Group:
				
								<asp:label id="lblMGroup" runat="server"></asp:label></div >
                            </div></div><br />
              <div class="row">
                  <div class="col">
                      
								<asp:label id="lblMessage" runat="server" ForeColor="Red" ></asp:label></div >
                 
								<asp:label id="lblUserID" runat="server" Visible="false"></asp:label>
              </div>
         <div class="row">
             <div class="col">Shop</div>
             
						<div class="col">
							<asp:dropdownList id="ddlShopCode" runat="server" CssClass="form-control ll" AutoPostBack="True" >
                                <asp:ListItem Value="MS" >MS</asp:ListItem>
                                        <asp:ListItem Value="MO" Selected="True">MO</asp:ListItem>
                                   
                                     <asp:ListItem Value="PC">PC</asp:ListItem>
                                        <asp:ListItem Value="CL">CL</asp:ListItem>
                                        <asp:ListItem Value="ME"  >ME</asp:ListItem>
                                        <asp:ListItem Value="RT">RT</asp:ListItem>
                                       
                                    </asp:dropdownList></div>
             <div class="col">Machine</div>
             <div class="col">
							<asp:dropdownlist id="ddlMachine" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></div >
             <div class="col">Preventive Maintenance</div>
             <div class="col"><asp:dropdownlist id="ddlType" CssClass="form-control ll" runat="server"  AutoPostBack="true">
								<asp:ListItem Value="Weekly" selected="True">Weekly</asp:ListItem>
								<asp:ListItem Value="Monthly">Monthly</asp:ListItem>
								<asp:ListItem Value="Quarterly">Quarterly</asp:ListItem>
								<asp:ListItem Value="Halfyearly">Halfyearly</asp:ListItem>
                                <asp:ListItem Value="Yearly">Yearly</asp:ListItem>
                                <asp:ListItem Value="50hrs">50hrs</asp:ListItem>
                                <asp:ListItem Value="250hrs">250hrs</asp:ListItem>
                                <asp:ListItem Value="500hrs">500hrs</asp:ListItem>
                                <asp:ListItem Value="1000hrs">1000hrs</asp:ListItem>
                                <asp:ListItem Value="10000hrs">10000hrs</asp:ListItem>
							</asp:dropdownlist></div></div>
  <br />
        <div class="row">
            <div class="col">Item to be inspected</div>
            <div class="col">
                <asp:textbox id="SubAssembly" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox>
              </div >
                                  <div class="col"></div>
            <div class="col"></div>
            <div class="col"></div>
            <div class="col"></div></div>
         <div class="row">
                <div class="col" align="center">
                           <asp:button id="btnSave" runat="server" Text="Add"  Font-Size="16px"  BorderStyle="Solid" Font-Bold="True"  CssClass="btn btn-dark" ></asp:button></div>
            </div>
    </form>
</body>
</html>
