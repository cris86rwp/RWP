<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IngateAssemblyNew.aspx.vb" Inherits="WebApplication2.IngateAssemblyNew" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>IngateAssemblyNew</title>
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
       <link rel="stylesheet" href="../../StyleSheet1.css" />
                  <script>

function OnlyNumericEntry() {
        if ((event.keyCode < 48 || event.keyCode > 57)) {
        event.returnValue = false;
    }
                      }
                      </script>

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
            <div class="row"><div class="table-responsive">
			<asp:panel id="Panel1"  runat="server" >
				<TABLE id="Table4" class="table"></TABLE>
					
							<TABLE id="Table1" class="table">
								<TR>
									<TD colSpan="6"><FONT size="5">Ingate Assembly&nbsp;Details</FONT><hr class="prettyline" /></TD>
								</TR>
								<TR>
									<TD colSpan="6">
										<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
								</TR>
								<TR>
									<TD>Date</TD>
									<TD>:</TD>
									<TD>
										<asp:textbox id="txtIngateDate" runat="server" CssClass="form-control" BorderStyle="Groove" AutoPostBack="True" ToolTip="date format mm/dd/yyyy" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
									<TD>Shift</TD>
									<TD>:</TD>
									<TD>
										<asp:radiobuttonlist id="rblShift" runat="server" CssClass="rbl" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow">
											<asp:ListItem Value="A" Selected="True">A</asp:ListItem>
											<asp:ListItem Value="B">B</asp:ListItem>
											<asp:ListItem Value="C">C</asp:ListItem>
										</asp:radiobuttonlist></TD>
								</TR>
								<TR>
									<TD>DragNo</TD>
									<TD>:</TD>
									<TD >
										<asp:textbox id="txtMouldNumber" runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="4" ToolTip="enter drag number(only numeric)" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
									<TD>PastIG</TD>
									<TD>:</TD>
									<TD>
										<asp:textbox id="txtPastIngate" runat="server" CssClass="form-control" BorderStyle="Groove"></asp:textbox></TD>
								</TR>
							</TABLE>
							<TABLE id="Table2" class="table">
								<TR>
									<TD>PresentIG</TD>
									<TD>:</TD>
									<TD>
										<asp:radiobuttonlist id="rblPresentIng" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
											<asp:ListItem Value="B21">B21</asp:ListItem>
											<asp:ListItem Value="B2">B2</asp:ListItem>
											<asp:ListItem Value="B3">B3</asp:ListItem>
											<asp:ListItem Value="B4">B4</asp:ListItem>
											<asp:ListItem Value="D14">D14</asp:ListItem>
											<asp:ListItem Value="D17">D17</asp:ListItem>
											<asp:ListItem Value="D19">D19</asp:ListItem>
											<asp:ListItem Value="D21">D21</asp:ListItem>
										</asp:radiobuttonlist></TD>
								</TR>
							</TABLE>
							<TABLE id="Table3" class="table">
								<TR>
									<TD >DateFitted</TD>
									<TD >:</TD>
									<TD>
										<asp:textbox id="txtDtFitted" runat="server" CssClass="form-control" BorderStyle="Groove" ToolTip="date format mm/dd/yyyy" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
									<TD >DateRemoved</TD>
									<TD>:</TD>
									<TD >
										<asp:textbox id="txtDtRemoved" runat="server" CssClass="form-control" BorderStyle="Groove" ToolTip="date format mm/dd/yyyy" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
								</TR>
								<TR>
									<TD>WheelCast</TD>
									<TD>:</TD>
									<TD >
										<asp:textbox id="txtWheels_cast" runat="server" CssClass="form-control" BorderStyle="Groove" ToolTip="enter wheel cast number(0 to 999999)" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
									<TD>IG Supplier</TD>
									<TD>:</TD>
									<TD>
										<asp:radiobuttonlist id="rblSupplier" CssClass="rbl" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
											<asp:ListItem Value="ZIRCAR">ZIRCAR</asp:ListItem>
											<asp:ListItem Value="VESUVIUS">VESUVIUS</asp:ListItem>
										</asp:radiobuttonlist></TD>
								</TR>
								<TR>
									<TD>Reason</TD>
									<TD>:</TD>
									<TD  colSpan="4">
										<asp:dropdownlist id="txtReason_for_removal" CssClass="form-control ll" runat="server"></asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="middle" colSpan="6">
										<asp:button id="btnSave" accessKey="s" runat="server" CssClass="button button2" Text="Save"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:Button id="btnClear" runat="server" Text="Clear" CssClass="button button2"></asp:Button></TD>
								</TR>
							</TABLE>
						
							<asp:DataGrid id="dgPastDetails" CssClass="table" runat="server" BorderStyle="None" BorderColor="#3366CC" BorderWidth="1px" BackColor="White" CellPadding="4">
								<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
								<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
								<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid>&nbsp;
				
				<asp:DataGrid id="grdIngateAssembly" CssClass="table" runat="server" BorderStyle="None" BorderColor="#CC9966" BorderWidth="1px" BackColor="White" CellPadding="4">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
			</asp:panel>
                </div></div></form></div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
