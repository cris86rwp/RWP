<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IngateAssemblyEdit.aspx.vb" Inherits="WebApplication2.IngateAssemblyEdit" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>IngateAssemblyEdit</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
		<meta name="vs_defaultClientScript" content="JavaScript"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>

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
       <link rel="stylesheet" href="StyleSheet1.css" />
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
					
							<TABLE id="Table5" class="table">
								<TR>
									<TD><FONT size="5">Ingate Assembly&nbsp;Details - Edit</FONT><hr class="prettyline" /></TD>
								</TR>
							</TABLE>
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label>
							<TABLE id="Table1" class="table">
								<TR>
									<TD>Date</TD>
									<TD>:</TD>
									<TD >
										<asp:textbox id="txtIngateDate" runat="server" CssClass="form-control" AutoPostBack="True" BorderStyle="Groove" ToolTip="date format mm/dd/yyyy" onkeypress="OnlyNumericEntry()"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvld1" runat="server" ErrorMessage="*" ControlToValidate="txtIngateDate" Display="Dynamic"></asp:requiredfieldvalidator></TD>
									<TD>Shift</TD>
									<TD>:</TD>
									<TD>
										<asp:radiobuttonlist id="rblShift" runat="server" CssClass="rbl" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal">
											<asp:ListItem Value="A" Selected="True">A</asp:ListItem>
											<asp:ListItem Value="B">B</asp:ListItem>
											<asp:ListItem Value="C">C</asp:ListItem>
										</asp:radiobuttonlist></TD>
								</TR>
								<TR>
									<TD>DragNo</TD>
									<TD>:</TD>
									<TD >
										<asp:textbox id="txtMouldNumber" runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="4" ToolTip="enter drag number(only numeric)" onkeypress="OnlyNumericEntry()"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvMldNo" runat="server" ErrorMessage="*" ControlToValidate="txtMouldNumber" Display="Dynamic"></asp:requiredfieldvalidator></TD>
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
										<asp:radiobuttonlist id="rblPresentIng" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal">
											<asp:ListItem Value="B21" Selected="True">B21</asp:ListItem>
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
										<asp:textbox id="txtDtFitted" runat="server" CssClass="form-control" ToolTip="date format mm/dd/yyyy" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
									<TD >DateRemoved</TD>
									<TD>:</TD>
									<TD>
										<asp:textbox id="txtDtRemoved" runat="server" CssClass="form-control" ToolTip="date format mm/dd/yyyy" onkeypress="OnlyNumericEntry()"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvld4" runat="server" ErrorMessage="*" ControlToValidate="txtDtRemoved" Display="Dynamic"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD>WheelCast</TD>
									<TD>:</TD>
									<TD >
										<asp:textbox id="txtWheels_cast" runat="server" CssClass="form-control" ToolTip="enter wheel cast number(0 to 999999)" onkeypress="OnlyNumericEntry()"></asp:textbox>
										<asp:rangevalidator id="rngvld1" runat="server" ErrorMessage="*" ControlToValidate="txtWheels_cast" Display="Dynamic" Type="Integer" MinimumValue="0" MaximumValue="999999"></asp:rangevalidator></TD>
									<TD>IG Supplier</TD>
									<TD>:</TD>
									<TD>
										<asp:radiobuttonlist id="rblSupplier" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal">
											<asp:ListItem Value="ZIRCAR">ZIRCAR</asp:ListItem>
											<asp:ListItem Value="VESUVIUS">VESUVIUS</asp:ListItem>
										</asp:radiobuttonlist></TD>
								</TR>
								<TR>
									<TD>Reason</TD>
									<TD>:</TD>
									<TD >
										<asp:dropdownlist id="ddlReason" runat="server" CssClass="form-control ll"></asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="middle" colSpan="6">
										<asp:button id="btnSave" accessKey="s" runat="server" CssClass="button button2" Text="Save"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:Button id="btnClear" runat="server" Text="Clear" CssClass="button button2"></asp:Button></TD>
								</TR>
							</TABLE>
					
				
				<asp:DataGrid id="grdIngateAssembly" runat="server" CssClass="table" BorderStyle="None" AutoGenerateColumns="False" CellPadding="4" BackColor="White" BorderWidth="1px" BorderColor="#CC9966">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
						<asp:BoundColumn DataField="IgDate" ReadOnly="True" HeaderText="IgDate"></asp:BoundColumn>
						<asp:BoundColumn DataField="Shift" ReadOnly="True" HeaderText="Shift"></asp:BoundColumn>
						<asp:BoundColumn DataField="DragNo" ReadOnly="True" HeaderText="DragNo"></asp:BoundColumn>
						<asp:BoundColumn DataField="EngNo" ReadOnly="True" HeaderText="EngNo"></asp:BoundColumn>
						<asp:BoundColumn DataField="PresentIG" ReadOnly="True" HeaderText="PresentIG"></asp:BoundColumn>
						<asp:BoundColumn DataField="Supplier" ReadOnly="True" HeaderText="Supplier"></asp:BoundColumn>
						<asp:BoundColumn DataField="PastIG" ReadOnly="True" HeaderText="PastIG"></asp:BoundColumn>
						<asp:BoundColumn DataField="WC" ReadOnly="True" HeaderText="WC"></asp:BoundColumn>
						<asp:BoundColumn DataField="DateFitted" ReadOnly="True" HeaderText="DateFitted"></asp:BoundColumn>
						<asp:BoundColumn DataField="DateRemoved" ReadOnly="True" HeaderText="DateRemoved"></asp:BoundColumn>
						<asp:BoundColumn DataField="reason" ReadOnly="True" HeaderText="reason"></asp:BoundColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
			</asp:panel>
		</div></div></form></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
