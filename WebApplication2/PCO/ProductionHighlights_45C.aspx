<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProductionHighlights_45C.aspx.vb" Inherits="WebApplication2.ProductionHighlights_45C" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>Production Highliths Generation</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
		<script language="javascript" id="clientEventHandlersJS">
		//function callReport(var rptName)
		//{
		//	window.open("http://localhost/wap/mms/" + rptName)
		//}		
		</script>
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
        <script>
             function isNumber1(evt, element) {

                    var charCode = (evt.which) ? evt.which : event.keyCode

                      if (
                           (charCode != 45 ) && (charCode != 47 ) &&     // 
                           (charCode < 48 || charCode > 57))
                      return false;

                  return true;
            } 
        </script>
	</head>
	<body language="javascript">
           <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
   <a class="navbar-brand p-0" href="#"><img src="../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
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
							<TABLE id="Table6" class="table">
								<TR>
									<TD><h2>PRODUCTION PLANNING CONTROL</h2><hr class="prettyline" /></TD>
								</TR>
								<TR>
									<TD>
										<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
								</TR>
								<TR>
									<TD>
										<asp:Label id="lblMeltDtUpdtMsg" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label></TD>
								</TR>
							</TABLE>
							<TABLE id="Table3" class="table">
								<TR>
									<TD>
										<asp:RadioButtonList id="rblPink" CssClass="rbl" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
											<asp:ListItem Value="0" Selected="True">WithPinkSheet</asp:ListItem>
											<asp:ListItem Value="1">WithOutPinkSheet</asp:ListItem>
										</asp:RadioButtonList></TD>
									<TD>FortheDate&nbsp;:</TD>
									<TD>
										<asp:textbox id="txtDate" runat="server" CssClass="form-control" AutoPostBack="True" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:textbox></TD>
									<TD>
										<asp:RequiredFieldValidator id="rfvld1" runat="server" Display="Dynamic" ControlToValidate="txtDate">*</asp:RequiredFieldValidator></TD>
								</TR>
							</TABLE>
							<TABLE id="Table1" class="table">
								<TR>
									<TD vAlign="center" align="middle" colSpan="4">
										<asp:CheckBox id="chkRegen" runat="server" Text="Re-Generate"></asp:CheckBox>&nbsp;
									</TD>
								</TR>
								<TR>
									<TD vAlign="center" align="middle" colSpan="4">
										<asp:button id="btnGenerate" runat="server" CssClass="button button2" BorderStyle="Groove" Text="Generate Report" Font-Names="Arial" Font-Size="Smaller" Visible="False"></asp:button>&nbsp;&nbsp;&nbsp;
										<asp:Button id="Button1" runat="server" Text="Export to Excel WO Details" CssClass="button button2"></asp:Button></TD>
								</TR>
							</TABLE>
							<asp:DataGrid id="dgMmyrprdn" runat="server" CssClass="table" BorderStyle="None" BorderColor="#CC9966" BorderWidth="1px" BackColor="White" CellPadding="4">
								<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
								<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
								<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
							</asp:DataGrid>
						</asp:panel>
						<TABLE id="Table5" class="table">
							<TR>
								<TD>Following Workorders have Produced Qty more than WO Qty</TD>
							</TR>
							<TR>
								<TD>
									<asp:DataGrid id="DataGrid1" runat="server" CssClass="table" BorderStyle="None" CellPadding="4" BackColor="White" BorderWidth="1px" BorderColor="#CC9966">
										<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
										<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
										<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
										<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
									</asp:DataGrid></TD>
							</TR>
							<TR>
								<TD>Following Descpatches during Holidays :</TD>
							</TR>
							<TR>
								<TD>
									<asp:DataGrid id="DataGrid2" runat="server" CssClass="table" BorderStyle="None" CellPadding="4" BackColor="White" BorderWidth="1px" BorderColor="#CC9966">
										<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
										<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
										<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
										<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
									</asp:DataGrid></TD>
							</TR>
						</TABLE>
					
		</form>
		 </div></div></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
