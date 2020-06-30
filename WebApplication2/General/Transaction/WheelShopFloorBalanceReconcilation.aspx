<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WheelShopFloorBalanceReconcilation.aspx.vb" Inherits="WebApplication2.WheelShopFloorBalanceReconcilation" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML>
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD runat="server">
		<title>WheelShopFloorBalanceOBforNextDay</title>
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
       <link rel="stylesheet" href="../../StyleSheet1.css" />
              <script>

function OnlyNumericEntry() {
        if ((event.keyCode < 48 || event.keyCode > 57)) {
        event.returnValue = false;
    }
}
</script>
	</HEAD>
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
			<TABLE id="Table1" class="table">
				<TR>
					<TD align="middle" colSpan="3"><STRONG><FONT color="#ff00cc" size="4">Wheel 
								Shop Floor Balance Reconcilaton</FONT></STRONG><hr class="prettyline" /></TD>
				</TR>
				<TR>
					<TD noWrap >Message:
					</TD>
					<TD colSpan="3" noWrap  rowSpan="1"><asp:label id="lblMessage" runat="server"  Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:label></TD>
				</TR>
				<TR>
					<TD >Input Date</TD>
					<TD>Shift</TD>
					<TD>Operator</TD>
				</TR>
				<TR>
					<TD><asp:textbox id="txtInputDate" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
					<TD><asp:dropdownlist id="ddlShift" runat="server" CssClass="form-control">
							<asp:ListItem Value="G" Selected="True">G</asp:ListItem>
							<asp:ListItem Value="A">A</asp:ListItem>
							<asp:ListItem Value="B">B</asp:ListItem>
							<asp:ListItem Value="C">C</asp:ListItem>
						</asp:dropdownlist></TD>
					<TD><asp:textbox id="txtOperator" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD noWrap >Closing Balance&nbsp;As On&nbsp;Date</TD>
					<TD colSpan="2">&nbsp;
						<asp:textbox id="txtCBForDate" runat="server" CssClass="form-control"  onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
				</TR>
				<TR>
					<TD noWrap ><STRONG>Product</STRONG></TD>
					<TD colSpan="2" noWrap><STRONG>Closing Balance</STRONG>(<EM>Rolls over as OB for next 
							day</EM>)
					</TD>
				</TR>
				<TR>
					<TD >BoxN</TD>
					<TD colSpan="2"><asp:textbox id="txtBoxNQty" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
				</TR>
                <TR>
                <TD >BGC</TD>
					<TD colSpan="2"><asp:textbox id="txtBGCQty" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
				</TR>
                <TR>
                <TD >Dispatch</TD>
					<TD colSpan="2"><asp:textbox id="txtDisQty" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
				</TR>
                <TR>
                <TD >Wheels(HT+M/C)</TD>
					<TD colSpan="2"><asp:textbox id="txtWhlQty" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
				</TR>
                
				<%--<%--<TR>
					<TD >840</TD>
					<TD colSpan="2"><asp:textbox id="txt840Qty" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
				</TR>--%>
				<%--<TR>
					
				<TR>
					<TD >MGC</TD>
					<TD colSpan="2"><asp:textbox id="txtMGCQty" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
				</TR>
				<TR>
					<TD >915 as CAST</TD>
					<TD colSpan="2">
						<asp:textbox id="txt915DQty" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
				</TR>
				<TR>
					<TD >EMUBG</TD>
					<TD colSpan="2">
						<asp:TextBox id="txtEMUBGQty" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD >EMU (ROUGH)</TD>
					<TD colSpan="2">
						<asp:TextBox id="txtEMUQty" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD>Others</TD>
					<TD colSpan="2"><asp:textbox id="txtOthersQty" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
				</TR>--%>
				<TR>
					<TD align="middle"  colSpan="3"><asp:button id="btnSave" runat="server" CssClass="button button2" Text="Save"></asp:button></TD>
				</TR>
			</TABLE>
		</div></div></form></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
