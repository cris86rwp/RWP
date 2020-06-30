<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MRRejections.aspx.vb" Inherits="WebApplication2.MRRejections" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 

		<title>MRRejections</title>
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
      <link rel="stylesheet" href="../StyleSheet1.css" />
    
   <%--<link rel="stylesheet" href="../../StyleSheet1.css" />--%>
	    <style type="text/css">
            .auto-style3 {
                width: 942px;
                height: 14px;
            }
            .auto-style4 {
                width: 999px;
            }
            </style>

	</head>
	<body >
        <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href=../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>

          <div class="container">
               <div class="row">
                <div class="table-responsive">

   <form id="Form2" method="post" runat="server">

                     
    
                  <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
     

		<%--<form id="Form1" method="post" runat="server">--%>
			<asp:panel id="Panel1"  runat="server">
         
				<table id="Table1" class="table">
					<TR>
						<TD><h2>MR Rejections Details</h2><hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD>
							<asp:RadioButtonList id="rblType" runat="server" AutoPostBack="True"  CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal">
								<asp:ListItem Value="Data" Selected="True">Data</asp:ListItem>
								<asp:ListItem Value="Reasons">Reasons</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
				</table>
				<table id="Table8" class="table">
					<TR>
						<TD>
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
					</TR>

				</table>
				<asp:Panel id="pnlData" runat="server">
					<table id="Table2" class="table">
						<TR>
							<TD>TappedDate</TD>
							<TD>:</TD>
							<TD>
								<asp:TextBox id="txtTappedDate" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></TD>
						</TR>
					</table>
					<TABLE id="Table6">
						<TR>
							<TD>WheelNo</TD>
							<TD>
								<asp:Label id="lblWheelNo" runat="server"></asp:Label></TD>
							<TD>HeatNo</TD>
							<TD>
								<asp:Label id="lblHeatNo" runat="server"></asp:Label></TD>
						</TR>
					</TABLE>
					<TABLE id="Table4" class="table"  >
						<TR>
							<TD>MRXC</TD>
							<TD>:</TD>
							<TD>
								<asp:TextBox id="txtMRRej" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
						</TR>
					</TABLE>
					<TABLE id="Table10" class="table">
						<TR>
							<TD>
								<asp:RadioButtonList id="RadioButtonList1" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal">
									<asp:ListItem Value="PIC" Selected="True">PIC</asp:ListItem>
									<asp:ListItem Value="BIC">BIC</asp:ListItem>
									<asp:ListItem Value="HIC">HIC</asp:ListItem>
									<asp:ListItem Value="SpIC">SpIC</asp:ListItem>
								</asp:RadioButtonList></TD>
							<TD>
								<asp:TextBox id="txtLIC" runat="server"  CssClass="form-control"></asp:TextBox></TD>
							<TD>ShiftIC</TD>
							<TD>
								<asp:TextBox id="txtSIC" runat="server" CssClass="form-control"></asp:TextBox></TD>
						</TR>
					</TABLE>
					<TABLE id="Table7" class="table">
						<TR>
							<TD >Reasons</TD>
							<TD>:</TD>
							<TD>
								<asp:DropDownList id="ddlReasons" runat="server" CssClass="form-control ll" ></asp:DropDownList></TD>
						</TR>
						<TR>
							<TD >Remarks</TD>
							<TD>:</TD>
							<TD>
								<asp:TextBox id="txtRemarks" runat="server" CssClass="form-control" ></asp:TextBox></TD>
						</TR>
						<TR>
							<TD align="middle" colspan="6">
								<asp:Button id="btnRemarks" runat="server" CssClass="button button2" Text="Save Remarks"></asp:Button></TD>
						</TR>
					</TABLE>
					<asp:DataGrid id="DataGrid1" runat="server" CssClass="table" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966">
						<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
						<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
						<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
						<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
						<Columns>
							<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
						</Columns>
						<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
					</asp:DataGrid>
				</asp:Panel>
				<asp:Panel id="pnlReasons" runat="server">
					<TABLE id="Table5" class="table" >
						<TR>
							<TD>MR XC</TD>
							<TD>:</TD>
							<TD>
								<asp:TextBox id="txtMRXC" runat="server"  CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
						</TR>
					
						<TR>
							<TD>Reason</TD>
							<TD>:</TD>
							<TD>
								<asp:TextBox id="txtReason" runat="server" CssClass="form-control"></asp:TextBox></TD>
						</TR>
						<TR>
							<TD align="middle" colspan="6">
								<asp:Button id="btnReason" runat="server" CssClass="button button2" Text="Save Reason"></asp:Button></TD>
						</TR>
					</TABLE>
					<asp:DataGrid id="DataGrid2" runat="server" CssClass="table"  BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966">
						<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
						<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
						<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
						<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
						<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
					</asp:DataGrid>
				</asp:Panel>
            
			</asp:panel></form>
                    </div></div></div>
        
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>