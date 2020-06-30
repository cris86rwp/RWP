<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BHNChemicalValues.aspx.vb" Inherits="WebApplication2.BHNChemicalValues" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>BHNChemicalValues</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
             <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
         <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../../../../StyleSheet1.css" />
</head>

<body>

<nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
   <a class="navbar-brand p-0" href="#"><img src="../../../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse " id="navbarSupportedContent-333">
      <ul class="navbar-nav ml-auto  navbar-center">
          <li class="nav-item"> <a class="nav-link" href="#" style="color:white; font-size:25px;">Rail Wheel Plant Bela</a></li>
      </ul>
    <ul class="navbar-nav ml-auto  navbar-right">
        <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../../../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
  </div>
</nav>
<!--/.Navbar -->

      <div class="container">    
		<form id="Form1" method="post" runat="server">
            <div class="row">
    
                  <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
      </div>

             <div class="row">
                 <div class="table-responsive">

			       
                            <div class="container-fluid">
								<div class="row">
                                    <div class="col" style="margin:20px 20px 20px 20px; align-content:center;"><h3>Spectro Chemical Values </h3></div>
                                   <div class="col"> <asp:Label id="lblMode" runat="server"></asp:Label></div>
									<div class="col"><asp:Label id="lblClass" runat="server" Visible="False"></asp:Label></div>
                                 </div>

                                <div class="row">
                                    <div class="col"><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></div>
                              </div>

                                 <asp:panel id="pnlProduct" runat="server">
                                   
                                 <div class="row">
                                    <div class="col-6"><h4>Select Product : </h4></div>
                                     <div class="col-6"><asp:RadioButtonList id="rdoProduct" runat="server" CssClass="rbl" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal">
														<asp:ListItem Value="Wheel">Wheel</asp:ListItem>

														<asp:ListItem Value="Axle">Axle</asp:ListItem>
													</asp:RadioButtonList></div>
                                     </div>
                                       <div class="row">
                                   <div class="col-12"><asp:Button id="btnProduct" runat="server" Text="Submit" class="btn btn-default" Width="141px" style="margin-left:300px;"></asp:Button></div> 
                                     </div>
                                  </asp:Panel>

                                </div>
							
                     </div>
                 </div>

              <div class="row">
                 <div class="table-responsive">
							
									<asp:panel id="pnlProductNo" runat="server">
				                      <div class="container-fluid">

								<div class="row">
                                    <div class="col"><h4>Product : </h4></div>
									<div class="col"><asp:Label id="lblProduct" runat="server"></asp:Label></div>
								</div>

								<div class="row">
                                    <div class="col"><asp:Label id="lblLabel" runat="server" Width="171px">:</asp:Label></div>
										<div class="col">
													<asp:DropDownList id="ddlProductNo" runat="server" AutoPostBack="True" CssClass=" form-control ll"></asp:DropDownList></div>
											</div>

											<div class="row">
                                                <div class="col">
													<asp:Button id="btnProductNo" runat="server" Text="Submit" class="btn btn-default" Width="125px"></asp:Button>
                                                 </div>
                                                 <div class="col">
													 <br />
													<asp:Button id="Button1" runat="server" Width="202px" Text="ChangeProduct" class="btn btn-default"></asp:Button></div>
											     </div>
										</div>
									</asp:panel>

									<asp:panel id="pnlDetails" runat="server" >
										 <div class="container-fluid">

								<div class="row">
                                    <div class="col">Product</div>
												<div class="col"><asp:Label id="lblProductCopy" runat="server" Width="92px"></asp:Label></div>
									</div>
												<div class="row">
                                                   <div class="col">
													<asp:Label id="lblProductNo" runat="server" Width="137px"></asp:Label></div>
												<div class="col">
													<asp:Label id="lblProductNoCopy" runat="server"></asp:Label></div>
											</div>
											<div class="row">
                                                   <div class="col">
													<asp:Label id="lblProductType" runat="server" Width="138px"></asp:Label></div>
												<div class="col">
													<asp:Label id="lblProdType" runat="server" ForeColor="Red" Font-Size="Medium" Font-Bold="True"></asp:Label></div>
											</div>
										</div>
									</asp:panel>
                 </div>
                  </div>
							   <div class="row">
                                 <div class="table-responsive">
							       <div class="col">
									<asp:panel id="pnlDetails1" runat="server">
										<div class="row">
                                             <div class="col">Lab Number :</div>
                                            <div class="col"><asp:label id="lblLabNumber" runat="server" Width="98px"></asp:label></div>
                                            <div class="col"><asp:Label id="lblInspector" runat="server" Width="91px">Inspector </asp:Label></div>
                                            <div class="col"><asp:TextBox id="txtEmployeeCode" runat="server" Width="84px" AutoPostBack="True" ReadOnly="True" CssClass="form-control"></asp:TextBox></div>
                                          </div>

										<div class="row">
                                             <div class="col">Carbon</div>

												<div class="col">
													<asp:textbox id="txtC" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox>%</div>
												<div class="col">Manganese</div>
												<div class="col">
													<asp:textbox id="txtMn" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox>%</div>
											</div>

										   <div class="row">

                                             <div class="col">Silicon</div>
												<div class="col">
													<asp:textbox id="txtSi" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox>%</div>
												<div class="col">Phosphorus</div>

												<div class="col">
													<asp:textbox id="txtP" runat="server" Width="74px" AutoPostBack="True" CssClass="form-control">0.0</asp:textbox>%</div>
											</div>

											  <div class="row">

                                             <div class="col">Sulphur</div>
												<div class="col">
													<asp:textbox id="txtS" runat="server" Width="74px" AutoPostBack="True" CssClass="form-control">0.0</asp:textbox>%</div>
												<div class="col">Chromium</div>
												<div class="col">
													<asp:textbox id="txtCr" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox>%</div>
											</div>

										 <div class="row">

                                             <div class="col">Nickel</div>
												<div class="col">
													<asp:textbox id="txtNi" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox>%</div>
												<div class="col">Copper</div>
												<div class="col">
													<asp:textbox id="txtCu" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox>%</div>
											</div>

											 <div class="row">

                                             <div class="col">
													<asp:Label id="lblAlu" runat="server">Aluminium</asp:Label></div>
												<div class="col">
													<asp:textbox id="txtAl" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox></div>
													<div class="col"><asp:Label id="lblPer" runat="server">%</asp:Label></div>
												<div class="col">Molybdenum</div>
												<div class="col">
													<asp:textbox id="txtMo" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox>%</div>
											</div>

											 <div class="row">

                                             <div class="col">Vanadium</div>
												<div class="col">
													<asp:textbox id="txtV" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox>%</div>
												<div class="col">Phosphorus+Sulphur</div>
												<div class="col">
													<asp:textbox id="txtPS" runat="server" Width="74px" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</div>
											</div>

											<div class="row">

                                             <div class="col">Nitrogen</div>
											<div class="col">
													<asp:textbox id="txtN" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox>ppm</div>
												<div class="col">
													<asp:Label id="lblH" runat="server">Hydrogen</asp:Label></div>
												<div class="col">
													<asp:textbox id="txtH" runat="server" Width="74px" CssClass="form-control">0.0</asp:textbox>
													<asp:Label id="lblPPM" runat="server">ppm</asp:Label></div>
											</div>
											<div class="row">
												<div class="col">
													<asp:Button id="btnSave" runat="server" Width="80px" Text="Save" class="btn btn-default"></asp:Button>
											</div>
										</div>

										<asp:Button id="btnChangeProduct" runat="server" Width="115px" Text="ChangeProduct" class="btn btn-default"></asp:Button>
										<asp:Button id="btnChangeProductNo" runat="server" Width="115px" Text="ChangeProductNo" Height="24px" class="btn btn-default"></asp:Button>
									</asp:panel>
							</div>
						</div>
					</div>

					<div class="row">
				      
                       <div class="col">
						<asp:Panel id="pnlA" runat="server">
							<asp:Image id="imgChemClassA" runat="server" ImageUrl="file:///C:\Inetpub\wwwroot\MSS\images\imgChemClassA.jpg"></asp:Image>
						</asp:Panel>
						<asp:Panel id="pnlB" runat="server">
							<asp:Image id="imgChemClassB" runat="server" ImageUrl="file:///C:\Inetpub\wwwroot\MSS\images\imgChemClassB.jpg"></asp:Image>
						</asp:Panel>
						<asp:Panel id="pnlSpl" runat="server">
							<asp:Image id="imgChemSpl" runat="server" ImageUrl="file:///C:\Inetpub\wwwroot\MSS\images\imgChemClassSpl.jpg"></asp:Image>
						</asp:Panel>
                    </div>
				</div>
   
		</form>
    </div>
	</body>
</html>