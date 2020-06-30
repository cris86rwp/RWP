<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CalibrationOfUVIntensity.aspx.vb" Inherits="WebApplication2.CalibrationOfUVIntensity" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>CalibrationOfUVIntensity</title>
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
        <link href="../../../StyleSheet1.css" rel="stylesheet" />
	</head>
	<body>
                 <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../../..//NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
<!--/.Navbar -->
        <div class="container">
             <div class="row">
                 <div class="table-responsive">
                     
            
             
	
		<form id="Form1" method="post" runat="server">
              <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
                <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
			<asp:panel id="Panel1" runat="server">
				<TABLE id="Table4" class="table">
					<TR>
						<TD vAlign="top" align="middle" colSpan="5"><FONT size="5"> UV Intensity Records<hr class="prettyline" /></FONT></TD>
					</TR>
					<TR>
						<TD colSpan="5">
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
					</TR>
					<TR>
						<TD>Date</TD>
						<TD>
							<asp:textbox id="txtDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
						<TD>Shift</TD>
						<TD colSpan="2">
							<asp:radiobuttonlist id="rblShift" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="A" Selected="True">A</asp:ListItem>
								<asp:ListItem Value="B">B</asp:ListItem>
								<asp:ListItem Value="C">C</asp:ListItem>
                                <asp:ListItem Value="G">G</asp:ListItem>
							</asp:radiobuttonlist></TD>
					</TR>
					<TR>
						<TD>LineNumber</TD>
						<TD>
							<asp:radiobuttonlist id="rblLine" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow" Height="10px">
								<asp:ListItem Value="1" Selected="True">1</asp:ListItem>
								<asp:ListItem Value="2">2</asp:ListItem>
								<asp:ListItem Value="3">3</asp:ListItem>
								<asp:ListItem Value="4">4</asp:ListItem>
							</asp:radiobuttonlist></TD>
						<TD>Operator</TD>
						<TD colSpan="2">
							<asp:TextBox id="txtOperator" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
                        <td>Drag(l)</td>
                        <td><asp:TextBox ID="txtdrag" runat="server" CssClass="form-control" ></asp:TextBox></td>
					</TR>
				</TABLE>
				<TABLE id="Table1" class="table">
					<TR>
						<TD>Cope:</TD>
                        <td>C1</td>
			
						<TD>
							<asp:textbox id="txtCopeone" runat="server" CssClass="form-control" MaxLength="4"></asp:textbox></TD>
                        <td>C2</td>
                        <td><asp:textbox id="txtCopetwo" runat="server" CssClass="form-control" MaxLength="4"></asp:textbox></td>
                        <td>C3</td>
                        <td><asp:textbox id="txtCopethree" runat="server" CssClass="form-control"  MaxLength="4"></asp:textbox></td>
                        <td>C4</td>
                        <td><asp:textbox id="txtCopefour" runat="server" CssClass="form-control"  MaxLength="4"></asp:textbox></td>
                        </tr>
                    <tr>
						<TD>Drag:</TD>
						<td>D1</td>
						<TD>
							<asp:textbox id="txtDragone" runat="server" CssClass="form-control"  MaxLength="4"></asp:textbox></TD>
                        <td>D2</td>
                        <td><asp:textbox id="txtDragtwo" runat="server" CssClass="form-control"  MaxLength="4"></asp:textbox></td>
                        <td>D3</td>
                        <td><asp:textbox id="txtDragthree" runat="server" CssClass="form-control"  MaxLength="4"></asp:textbox></td>
                        <td>D4</td>
                        <td><asp:textbox id="txtDragfour" runat="server" CssClass="form-control" MaxLength="4"></asp:textbox></td>
					</TR>
                    <tr>
                        <td>Tread</td>
                        <td><asp:TextBox runat="server" CssClass="form-control" ID="txttread"></asp:TextBox></td>
                    </tr>
					<TR>
						<TD vAlign="top" align="middle" colSpan="6">( Intensity measured in 
							micro-watts/sq-cm )</TD>
					</TR>
					<TR>
						<TD>DueDate:</TD>
						
						<TD colSpan="4">
							<asp:textbox id="txtDueDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
					</TR>
					<TR>
						<TD>Results:</TD>
						
						<TD colSpan="4">
							<asp:RadioButtonList id="rblShim" runat="server" CssClass="rbl" RepeatLayout="Flow">
								<asp:ListItem Value="1" Selected="True">FOUND SATISFACTORY</asp:ListItem>
								<asp:ListItem Value="2">FOUND NOT SATISFACTORY</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD>Remarks:</TD>
						
						<TD colSpan="4">
							<asp:textbox id="txtRemark" runat="server" CssClass="form-control"></asp:textbox></TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="6">
							<asp:button id="btnSave" runat="server" CssClass="button button2" Text="Save"></asp:button>
							<asp:Label id="lblSl" runat="server" Visible="False"></asp:Label></TD>
					</TR>
				</TABLE>
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" BackColor="White">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
			</asp:panel></form></div></div></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
