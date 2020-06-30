<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Holidays.aspx.vb" Inherits="WebApplication2.Holidays" Culture="en-GB" uiCulture="en-GB" errorPage="InvalidSession.aspx" %>
<!DOCTYPE HTML>
<HTML>
	<HEAD>
		<title>Holidays</title>
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

 
	</HEAD>
<a href="Holidays.aspx">Holidays.aspx</a>
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
			<asp:Panel id="Panel1"  runat="server">
                
				<TABLE id="Table1" class="table">
					<TR>
						<TD vAlign="middle" align="center" colSpan="6"><h2>MMS 
									Holiday Master</h2><hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="left"  colSpan="6">Message:
							<asp:label id="lblMessage" runat="server" ForeColor="Red" ></asp:label></TD>
					</TR>
					<TR>
						<TD >From Date</TD>
						<TD>
							<asp:textbox id="txtFromDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
						<TD >Days</TD>
						<TD >
							<asp:textbox id="txtDays" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
						<TD >To Date</TD>
						<TD>
							<asp:textbox id="txtToDate" runat="server" CssClass="form-control" AutoPostBack="True" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:textbox></TD>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtToDate" ControlToValidate="txtFromDate" ErrorMessage="To Date should be greater than From Date" ForeColor="#FF3300" Operator="LessThanEqual" Type="Date"></asp:CompareValidator>
					</TR>
					<TR>
						<TD  colSpan="2">Shop</TD>
						<TD >
							<asp:checkbox id="chkMEME" runat="server" AutoPostBack="True" Text="Melting" CssClass="checkbox-inline"></asp:checkbox></TD>
						<TD>
							<asp:checkbox id="chkMOPO" runat="server" AutoPostBack="True" Text="Moulding" CssClass="checkbox-inline"></asp:checkbox></TD>
						<TD >
							<asp:checkbox id="chkWFPS" runat="server" AutoPostBack="True" Text="WFP Shop" CssClass="checkbox-inline"></asp:checkbox></TD>
						<%--<TD>
							<asp:checkbox id="chkAMA" runat="server" AutoPostBack="True" Text="Axle Shop" CssClass="checkbox-inline"></asp:checkbox></TD>--%>
					</TR>
					<TR>
						<TD >Reasons</TD>
						<TD colSpan="2">
							<asp:dropdownlist id="ddlReasons" runat="server" CssClass="form-control ll"  AutoPostBack="True"></asp:dropdownlist></TD>
						<TD  colSpan="3">
							<asp:textbox id="txtReason" runat="server"  CssClass="form-control "  AutoPostBack ="True"></asp:textbox></TD>
					</TR>
					<TR>
						
						<TD colspan="6">
							<asp:checkbox id="chkSundays" runat="server" AutoPostBack="True" Text="Sundays only" CssClass="checkbox-inline" ></asp:checkbox></TD></tr>
                    <tr>
						<TD colspan="6"> 
							<asp:button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:button>
						
							<asp:button id="btnDelete" runat="server"  Text="Delete" CssClass="button button2"></asp:button></TD>
						
					</TR>
				</TABLE>
				<TABLE id="Table2" class="table">
					<TR>
						<TD vAlign="top" align="left">
							<asp:datagrid id="dgHolidays" runat="server" CssClass="table">
								<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
								<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
								<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
							</asp:datagrid></TD>
						<TD vAlign="top" align="left">
							<asp:DataGrid id="DataGrid1" runat="server" CssClass="table">
								<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
								<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
								<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
							</asp:DataGrid>
							<asp:DataGrid id="DataGrid2" runat="server" CssClass="table">
								<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
								<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
								<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid>
							<asp:DataGrid id="DataGrid3" runat="server" CssClass="table">
								<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
								<AlternatingItemStyle BackColor="#DCDCDC"></AlternatingItemStyle>
								<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
								<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid></TD>
					</TR>
				</TABLE>
                    
			</asp:Panel>
		</form>
          
         </div></div></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
