<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PCDOEntry.aspx.vb" Inherits="WebApplication2.PCDOEntry" %>
<!DOCTYPE HTML  >
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>PCDOEntry</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
		<meta name="vs_defaultClientScript" content="JavaScript"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

        
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
   
          <%--<link rel="stylesheet" href="../../../StyleSheet1.css" />--%>
	</head>
	<body>
         <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
 <a class="navbar-brand p-0" href="#"><img src="../../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../logon.aspx">
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
        <div class="container">
		<form id="Form1" method="post" runat="server">
              <div class="row">
    
                  <h4>&nbsp&nbsp&nbspSelect Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px" >
                     
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                </div>
          
			<asp:Panel id="Panel1"   runat="server">
                    <div class="row">
                <div class="table-responsive">
				<table id="Table1" class="table">
					<tr>
						<td>PCDO Entry<hr class="prettyline"/></td>
					</tr>
				</table>
				<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
				<table id="Table2" class="table">
					<tr>
						<td>
							<asp:RadioButtonList id="rblYear" runat="server" CssClass="rbl " AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow"></asp:RadioButtonList></td>
						<td>
							<asp:RadioButtonList id="rblMonth" runat="server" CssClass="rbl" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow"></asp:RadioButtonList></td>
					</tr>
				</table>
				<table id="Table8"  class="table">
					 </table>
							<table id="Table4"  class="table">
								<tr>
									<td>Accidents</td>
									<td>
										<asp:TextBox id="txtAccidents" runat="server"  CssClass="form-control"></asp:TextBox></td>
									<td>DARCases</td>
									<td>
										<asp:TextBox id="txtDAR" runat="server" CssClass="form-control"  ></asp:TextBox></td>
									<td>OTHours</td>
									<td>
										<asp:TextBox id="txtOT" runat="server" CssClass="table"></asp:TextBox></td>
								</tr>
							</table>
							<table id="Table5"  class="table">
								<tr>
									<td>PFNo</td>
									<td>
										<asp:TextBox id="txtPFNo" runat="server" AutoPostBack="True"  CssClass="form-control"></asp:TextBox></td>
								</tr>
							</table>
						 
							<asp:DataGrid id="DataGrid1" runat="server"  CssClass="table">
								<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
								<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
								<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
							</asp:DataGrid>
				<table id="Table7" class="table">
					<tr>
						<td> enter the remarks in the following textbox without pressing 'Enter' key to 
							move to next line&nbsp;)</td>
					</tr>
				</table>
				<table id="table6"  class="table">
					<tr>
						<td>PFRemarks</td>
						<td>
							<asp:TextBox id="txtPFRemarks" runat="server"  CssClass="form-control" TextMode="MultiLine"></asp:TextBox></td>
					</tr>
				</table>
				<table id="Table9"  class="table">
					<tr>
						<td>
							<asp:Button id="btnSave" runat="server" CssClass="button button2" Text="Save Details"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:CheckBox id="chkDelete" runat="server" Text="Delete ?"></asp:CheckBox></td>
					</tr>
				</table>
				<asp:DataGrid id="DataGrid2" runat="server"  CssClass="table" AutoGenerateColumns="False">
					<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
					<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
					<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
					<Columns>
						<asp:BoundColumn DataField="PFNo" ReadOnly="True" HeaderText="PFNo"></asp:BoundColumn>
						<asp:BoundColumn DataField="EmployeeName" ReadOnly="True" HeaderText="EmployeeName"></asp:BoundColumn>
						<asp:BoundColumn DataField="Designation" ReadOnly="True" HeaderText="Designation"></asp:BoundColumn>
						<asp:BoundColumn DataField="PFRemarks" ReadOnly="True" HeaderText="PFRemarks"></asp:BoundColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
				</asp:DataGrid>
                         </div>
        </div>
			</asp:Panel>
   
		</form>
                </div>
          <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>

	</body>
</html>
