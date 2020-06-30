<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ReferenceTaxDetails.aspx.vb" Inherits="WebApplication2.ReferenceTaxDetails" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>ReferenceTaxDetails</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
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
	<body>
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
				<TABLE id="Table1" class="table">
					<TR>
						<TD><h2>Invoice TAX Details</h2><hr class="prettyline" /></TD>
					</TR>
				</TABLE>
				<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
				<TABLE id="Table3" class="table">
					<TR>
						<TD>
							<asp:RadioButtonList id="rblGroup" runat="server" CssClass="rbl" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal">
								<asp:ListItem Value="MRKTING" Selected="True">MRKTING</asp:ListItem>
								<asp:ListItem Value="PCOPCO">PCOPCO</asp:ListItem>
								<asp:ListItem Value="WARD30">WARD30</asp:ListItem>
								<asp:ListItem Value="C&amp;F">C&amp;F</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
				</TABLE>
				<asp:Panel id="pnlPCO" runat="server">
					<TABLE id="Table12" class="table">
						<TR>
							<TD>Despatch Advice No</TD>
							<TD colSpan="2">
								<asp:DropDownList id="ddlDespatchAdviceNo" CssClass="form-control ll" runat="server" AutoPostBack="True"></asp:DropDownList></TD>
						</TR>
					</TABLE>
				</asp:Panel>
				<asp:Panel id="pnlMrk" runat="server">
					<TABLE id="Table2" class="table">
						<TR>
							<TD>ReferenceID</TD>
							<TD>:</TD>
							<TD>
								<asp:DropDownList id="ddlRefID" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:DropDownList></TD>
						</TR>
					</TABLE>
				</asp:Panel>
				<asp:Panel id="pnlWard" runat="server">
					<TABLE id="Table15" class="table">
						<TR>
							<TD>SaleOrders</TD>
							<TD>
								<asp:DropDownList id="ddlSaleOrders" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:DropDownList></TD>
						</TR>
					</TABLE>
					
				</asp:Panel>
				<asp:Panel id="pnlInvoice" runat="server">
					<TABLE id="Table14" class="table">
						<TR>
							<TD>InvoiceNo</TD>
							<TD>
								<asp:RadioButtonList id="rblInvoice" runat="server" CssClass="rbl" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal"></asp:RadioButtonList></TD>
						</TR>
					</TABLE>
					<TABLE id="Table13" class="table">
						<TR>
							<TD>WagonLorryNo</TD>
							<TD>
								<asp:Label id="lblWagonNo" runat="server"></asp:Label></TD>
						</TR>
					</TABLE>
				</asp:Panel>
				<asp:Panel id="pnlGen" runat="server">
					<TABLE id="Table4" class="table">
						<TR>
							<TD colSpan="3">InvoiceDate</TD>
							<TD>
								<asp:TextBox id="txtInvoiceDate" runat="server" CssClass="form-control" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:TextBox></TD>
							<TD>TotalValue</TD>
							<TD>
								<asp:TextBox id="txtTotalValue" runat="server" CssClass="form-control"></asp:TextBox></TD>
							<TD>TaxableValue</TD>
							<TD>
								<asp:TextBox id="txtTaxableValue" runat="server" CssClass="form-control"></asp:TextBox></TD>
						</TR>
					</TABLE>
					<TABLE id="Table5" class="table">
						<TR>
							<TD>Goods A/c HSN
							</TD>
							<TD>
								<asp:TextBox id="txtGoodsHSN" runat="server" CssClass="form-control"></asp:TextBox></TD>
							<TD>GoodsDescription</TD>
							<TD>
								<asp:TextBox id="txtGoodsDescription" runat="server" CssClass="form-control"></asp:TextBox></TD>
						</TR>
					</TABLE>
					<TABLE id="Table6" class="table">
						<TR>
							<TD>UnitCode</TD>
							<TD>
								<asp:DropDownList id="ddlUnitCode" runat="server" CssClass="form-control"></asp:DropDownList></TD>
							<TD>Quantity</TD>
							<TD>
								<asp:TextBox id="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox></TD>
							<TD>Rate</TD>
							<TD>
								<asp:TextBox id="txtRate" runat="server" CssClass="form-control"></asp:TextBox></TD>
							<TD>EligibleForITC</TD>
							<TD>
								<asp:RadioButtonList id="rblITC" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal">
									<asp:ListItem Value="0" Selected="True">No</asp:ListItem>
									<asp:ListItem Value="1">Yes</asp:ListItem>
								</asp:RadioButtonList></TD>
						</TR>
					</TABLE>
					<TABLE id="Table7" class="table">
						<TR>
							<TD>IGSTRate</TD>
							<TD>
								<asp:TextBox id="txtIGSTRate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
							<TD>IGSTChargedAmt</TD>
							<TD>
								<asp:TextBox id="txtIGSTChargedAmt" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></TD>
						</TR>
						<TR>
							<TD>CGSTRate</TD>
							<TD>
								<asp:TextBox id="txtCGSTRate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
							<TD>CGSTChargedAmt</TD>
							<TD>
								<asp:TextBox id="txtCGSTChargedAmt" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></TD>
						</TR>
						<TR>
							<TD>SGSTRate</TD>
							<TD>
								<asp:TextBox id="txtSGSTRate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
							<TD>SGSTChargedAmt</TD>
							<TD>
								<asp:TextBox id="txtSGSTChargedAmt" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></TD>
						</TR>
						<TR>
							<TD>UGSTRate</TD>
							<TD>
								<asp:TextBox id="txtUGSTRate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
							<TD>UGSTChargedAmt</TD>
							<TD>
								<asp:TextBox id="txtUGSTChargedAmt" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></TD>
						</TR>
						<TR>
							<TD>CessRate</TD>
							<TD>
								<asp:TextBox id="txtCessRate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
							<TD>CessChargedAmt</TD>
							<TD>
								<asp:TextBox id="txtCessChargedAmt" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></TD>
						</TR>
					</TABLE>
					<TABLE id="Table8" class="table">
						<TR>
							<TD>Name /Recipient of Service/Goods</TD>
							<TD>
								<asp:TextBox id="txtGoodsName" runat="server" CssClass="form-control"></asp:TextBox></TD>
						</TR>
					</TABLE>
					<TABLE id="Table9" class="table">
						<TR>
							<TD>Place Of Supply</TD>
							<TD>
								<asp:TextBox id="txtPlaceOfSupply" runat="server" CssClass="form-control"></asp:TextBox></TD>
							<TD>Recepient GSTIN</TD>
							<TD>
								<asp:TextBox id="txtRecepientGSTIN" runat="server" CssClass="form-control"></asp:TextBox></TD>
						</TR>
					</TABLE>
					<TABLE id="Table10" class="table">
						<TR>
							<TD>Tax Payable on Reverse Charge basis</TD>
							<TD>
								<asp:RadioButtonList id="rblReverseTax" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal">
									<asp:ListItem Value="0" Selected="True">No</asp:ListItem>
									<asp:ListItem Value="1">Yes</asp:ListItem>
								</asp:RadioButtonList></TD>
							<TD>TDS</TD>
							<TD>
								<asp:TextBox id="txtTDS" runat="server" CssClass="form-control"></asp:TextBox></TD>
						</TR>
					</TABLE>
					<TABLE id="Table11" class="table">
						<TR>
							<TD>
								<asp:Button id="btnSave" runat="server" Text="Save Details" CssClass="button button2"></asp:Button></TD>
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
			</asp:panel></form>
                     </div></div></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
