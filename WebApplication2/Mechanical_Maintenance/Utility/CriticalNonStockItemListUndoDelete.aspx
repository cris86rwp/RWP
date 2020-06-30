<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CriticalNonStockItemListUndoDelete.aspx.vb" Inherits="WebApplication2.CriticalNonStockItemListUndoDelete" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>CriticalNonStockItemListUndoDelete</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR" />
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE" />
		<meta content="JavaScript" name="vs_defaultClientScript" />
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
         <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../StyleSheet1.css" />
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../logon.aspx">
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
     
                
    
                              <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                             <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                                 <asp:ListItem>select</asp:ListItem>
                                 <asp:ListItem>Theme1</asp:ListItem>
                                 <asp:ListItem>Theme2</asp:ListItem>
                                 <asp:ListItem>Theme3</asp:ListItem>
                             </asp:DropDownList>
                             <br />

			<TABLE id="Table2" class="table">
                </TABLE>
				
						<TABLE id="Table1" class="table">
							<TR>
								<TD colSpan="6"><FONT size="5"><asp:label id="lblConsignee" runat="server"></asp:label>&nbsp;Critical 
										Item List - Non Stock</FONT>&nbsp; ( Undo Delete )
								</TD>
							</TR>
							<TR>
								<TD colSpan="6"><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
							</TR>
							<TR>
								<TD>Pl Number</TD>
								<TD>:</TD>
								<TD><asp:dropdownlist id="ddlPLNumber" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></TD>
								<TD>Sl No</TD>
								<TD>:</TD>
								<TD><asp:textbox id="txtSlNo" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
							</TR>
							<TR>
								<TD>Pl Desc</TD>
								<TD>:</TD>
								<TD colSpan="4"><asp:label id="lblPlDesc" runat="server"></asp:label>&nbsp;</TD>
							</TR>
							<TR>
								<TD>UnitName</TD>
								<TD>:</TD>
								<TD><asp:label id="lblUnitName" runat="server"></asp:label>&nbsp;</TD>
								<TD>Equipepment</TD>
								<TD>:</TD>
								<TD><asp:textbox id="txtEquip" runat="server" CssClass="form-control"></asp:textbox></TD>
							</TR>
						</TABLE>
					
						<TABLE id="Table3" class="table">
							<TR>
								<TD>Number</TD>
								<TD>:</TD>
								<TD><asp:textbox id="txtNum" runat="server" CssClass="form-control"></asp:textbox></TD>
								<TD>Date</TD>
								<TD>:</TD>
								<TD><asp:textbox id="txtDt" runat="server" CssClass="form-control"></asp:textbox></TD>
								<TD>Qty</TD>
								<TD>:</TD>
								<TD><asp:textbox id="txtQty" runat="server" CssClass="form-control"></asp:textbox></TD>
							</TR>
							<TR>
								<TD>Supplier</TD>
								<TD>:</TD>
								<TD colSpan="7"><asp:textbox id="txtSup" runat="server" CssClass="form-control"></asp:textbox>&nbsp;DD:
									<asp:textbox id="txtDD" runat="server" CssClass="form-control"></asp:textbox></TD>
							</TR>
							<TR>
								<TD>RecdQty</TD>
								<TD>:</TD>
								<TD><asp:textbox id="txtRecdQty" runat="server" CssClass="form-control"></asp:textbox></TD>
								<TD>QtyUT</TD>
								<TD>:</TD>
								<TD ><asp:textbox id="txtQtyUT" runat="server" CssClass="form-control"></asp:textbox></TD>
								<TD>QtyDue</TD>
								<TD>:</TD>
								<TD><asp:textbox id="txtQtyDue" runat="server" CssClass="form-control"></asp:textbox></TD>
							</TR>
							<TR>
								<TD>Remarks</TD>
								<TD>:</TD>
								<TD colSpan="7"><asp:textbox id="txtRemarks" runat="server" CssClass="form-control"></asp:textbox></TD>
							</TR>
							<TR>
								<TD vAlign="top" align="middle" colSpan="9"><asp:button id="btnSave" runat="server" Text="Undo Delete" CssClass="button button2"></asp:button><asp:label id="lblRecID" runat="server" Visible="False"></asp:label></TD>
							</TR>
						</TABLE>
						<asp:datagrid id="dgSavedData" runat="server" Font-Size="Smaller" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical" CssClass="Table">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:ButtonColumn Text="Undo Delete" HeaderText="Undo Delete" CommandName="Delete"></asp:ButtonColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" Mode="NumericPages"></PagerStyle>
						</asp:datagrid>
				
			
    </div>
    </div>
    </div>
		</form>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
