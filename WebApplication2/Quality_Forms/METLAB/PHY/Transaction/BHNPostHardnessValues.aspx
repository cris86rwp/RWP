<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BHNPostHardnessValues.aspx.vb" Inherits="WebApplication2.BHNPostHardnessValues" smartNavigation="True" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>BHNPostHardnessValues</title>
		<META content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<META content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<META content="JavaScript" name="vs_defaultClientScript">
		<META content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">

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
	</HEAD>
	<BODY >

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
		<FORM id="Form1" method="post" runat="server">
            <div class="row"><div class="table-responsive">
			<asp:image id="imgHSBlank" runat="server" Height="595px"  ImageUrl="../../NewFolder1/HS-BLANKforReport.jpg" ></asp:image>
            <asp:label id="lblLabNum" runat="server"></asp:label>
            <asp:label id="Label1" runat="server">LabNumber :</asp:label>
			<TABLE id="Table1" class="table">
				<TR>
					<TD colSpan="3"><asp:label id="lblmessage" runat="server"  ForeColor="Red" Font-Size="Large" Font-Bold="True"></asp:label>
                        <asp:label id="lblTestType" runat="server" Visible="False"></asp:label></TD>
				</TR>
			</TABLE>
			<asp:dropdownlist id="ddlWheelNumber" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist>
            <asp:customvalidator id="CustomValidator1"  runat="server" ControlToValidate="txtBHN" ErrorMessage="*" Display="Dynamic"></asp:customvalidator>
            <asp:label id="lblProductType" runat="server"></asp:label>
            <asp:textbox id="txtBHN"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtF11"  runat="server" CssClass="form-control" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR11"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR12"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR13"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR14"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR21"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR22"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR23"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR24"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR31"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR32"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR33"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR34"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR41"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtR42"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            
            
            
            <asp:textbox id="txtR43"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtP11"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtP12"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtP21"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtP31"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtP41"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtP51"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtP61"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtP71"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtP81"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            
            <asp:textbox id="txtP91"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH11"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH12"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH21"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH22"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH23"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH24"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH25"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH26"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH31"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH32"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH33"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH34"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            
            <asp:textbox id="txtH35"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:textbox id="txtH36"  runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox>
            <asp:button id="btnSave"  runat="server" CssClass="button button2" Text="Save"></asp:button>
                </div></div></FORM>
            </div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</BODY>
</HTML>
