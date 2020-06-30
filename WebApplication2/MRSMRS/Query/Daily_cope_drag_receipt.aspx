<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Daily_cope_drag_receipt.aspx.vb" Inherits="WebApplication2.Daily_cope_drag_receipt" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Axles_received_ams</title>
		<LINK href="/wap.css" rel="stylesheet"/>
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
        
        <link href="../../StyleSheet1.css" rel="stylesheet" />
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
	<body>
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

		<form id="Form1" method="post" runat="server">
             <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
			<asp:Panel id="Panel3" runat="server">
				<asp:Panel id="Panel1" runat="server">
					<TABLE id="Table3" class="table">
						<TR>
							<TD><h2>Enter&nbsp;Cope or Drag&nbsp;Received Date.</h2><hr class="prettyline" /></TD>
						</TR>
						<TR>
							<TD>
								<asp:Label id="lblerr" runat="server" ForeColor="Red"></asp:Label></TD>
						</TR>
						<TR>
							<TD>Date&nbsp; :&nbsp;
								<asp:textbox id="txtDate" runat="server" CssClass="form-control" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:textbox></TD>
						</TR>
						<TR>
							<TD vAlign="top" align="middle">
								<asp:Button id="btnReceipt" runat="server" Text="Show Receipt Details" CssClass="button button2"></asp:Button></TD>
						</TR>
					</TABLE>
					<%--<TABLE id="Table5" class="table">
						<TR>
							<TD>--%>
								<TABLE id="Table6" class="table">
									<TR>
										<TD>MouldNumber</TD>
										<TD>:</TD>
										<TD>
											<asp:TextBox id="TextBox1" runat="server" CssClass="form-control" MaxLength="5" ToolTip="enter 5-digit mould number" onkeypress="OnlyNumericEntry()"></asp:TextBox></TD>
									</TR>
									<TR>
										<TD>From Date</TD>
										<TD>:</TD>
										<TD>
											<asp:TextBox id="txtFromDate" runat="server" CssClass="form-control" AutoPostBack="True" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:TextBox></TD>
									</TR>
									<TR>
										<TD>To date</TD>
										<TD>:</TD>
										<TD>
											<asp:TextBox id="txtToDate" runat="server" CssClass="form-control" AutoPostBack="True" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:TextBox>
                                       
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtToDate" ControlToValidate="txtFromDate" ErrorMessage="To Date should be greater than From Date" ForeColor="#FF3300" Operator="LessThanEqual" Type="Date"></asp:CompareValidator>

										</TD>

									</TR>
									<TR>
										<TD vAlign="top" align="middle" colSpan="3">
											<asp:Button id="Button1" runat="server" Text="Show Data" CssClass="button button2"></asp:Button></TD>
									</TR>
								</TABLE>
							<%--</TD>
							<TD>--%>
								<TABLE id="Table7" class="table">
									<TR>
										<TD colSpan="3">New Moulds PO Details</TD>
									</TR>
									<TR>
										<TD>FromDate</TD>
										<TD>:</TD>
										<TD>
											<asp:TextBox id="txtFrDt" runat="server" CssClass="form-control" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:TextBox></TD>
									</TR>
									<TR>
										<TD>ToDate</TD>
										<TD>:</TD>
										<TD>
											<asp:TextBox id="txtToDt" runat="server" CssClass="form-control" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:TextBox>
                                             <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtToDt" ControlToValidate="txtFrDt" ErrorMessage="To Date should be greater than From Date" ForeColor="#FF3300" Operator="LessThanEqual" Type="Date"></asp:CompareValidator>
										</TD>
									</TR>
									<TR>
										<TD vAlign="top" align="middle" colSpan="3">
											<asp:Button id="btnPODetails" runat="server" Text="Show PO Details" CssClass="button button2"></asp:Button></TD>
									</TR>
								</TABLE>
							<table>
                                
						
						<TR>
							<TD vAlign="top" align="left" colSpan="2">
								<asp:DataGrid id="DataGrid1" runat="server" CssClass="table" BorderStyle="None" CellPadding="4" BackColor="White" BorderWidth="1px" BorderColor="#CC9966">
									<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
									<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
									<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
									<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
								</asp:DataGrid>
								<asp:DataGrid id="DataGrid2" runat="server" CssClass="table" BorderStyle="None" CellPadding="4" BackColor="White" BorderWidth="1px" BorderColor="#3366CC">
									<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
									<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
									<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
									<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
								</asp:DataGrid>
								<asp:DataGrid id="DataGrid3" runat="server" CssClass="table" ForeColor="Black" BorderStyle="Solid" CellPadding="3" BackColor="White" BorderWidth="1px" BorderColor="#999999" GridLines="Vertical">
									<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#000099"></SelectedItemStyle>
									<AlternatingItemStyle BackColor="#CCCCCC"></AlternatingItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="Black"></HeaderStyle>
									<FooterStyle BackColor="#CCCCCC"></FooterStyle>
									<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#999999"></PagerStyle>
								</asp:DataGrid></TD>
						</TR>
					</table>
				</asp:Panel>
			</asp:Panel>
		</form>
                    
                                                          </div>
                </div>
            </div>
     <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
