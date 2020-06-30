<%@ Page language="vb" AutoEventWireup="false" Codebehind="LiquidOxygenValues.aspx.vb" Inherits="WebApplication2.LiquidOxygenValues" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>LiquidOxygenValues</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
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

	</HEAD>
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
            <div class="row">
                <div class="table-responsive">
			<asp:panel id="Panel3" runat="server">
			<TABLE id="Table2" class="table">
				<TR>
					<TD vAlign="top" align="left"><asp:panel id="Panel1" runat="server">
							
								<TR>
									<TD colSpan="3"> <FONT size="8"> Daily Oxygen Consumption </FONT> <hr class="prettyline" /></TD>
								</TR>
								<TR>
									<TD colSpan="3">
										<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
								</TR>
								<%--<TR>
									<TD colSpan="3">Date and Time in 24 hours format</TD>
								</TR>--%>
								<TR>
									<TD>Date</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtDate" runat="server" Width="85px" AutoPostBack="True" CssClass="form-control"></asp:TextBox>
										<asp:CheckBox id="CheckBox1" runat="server" AutoPostBack="True" Text="ReSet " CssClass="checkbox"></asp:CheckBox>&nbsp;</TD>
								</TR>
								<TR>
									<TD colSpan="3">
										<asp:RadioButtonList id="rblHour" runat="server" Width="443px" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl">
										 <asp:ListItem Value="FurA" Selected="True">FurA</asp:ListItem>
											<asp:ListItem Value="FurB">FurB</asp:ListItem>
											<asp:ListItem Value="FurC">FurC</asp:ListItem>
											<asp:ListItem Value="HC_MRS">HC_MRS</asp:ListItem>
										
                                        </asp:RadioButtonList></TD>
								</TR>
								<TR>
									<TD colSpan="3">
										<asp:RadioButtonList id="rblArea" runat="server" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl">
											<asp:ListItem Value="TPCL1" Selected="True">TPCL1</asp:ListItem>
											<asp:ListItem Value="TPCL2">TPCL2</asp:ListItem>
											<asp:ListItem Value="TBDC1">TBDC1</asp:ListItem>
											<asp:ListItem Value="TBDC2">TBDC2</asp:ListItem>
											
                                           	
										</asp:RadioButtonList></TD>
								</TR>
                               <TR>
									<TD colSpan="3">
										<asp:RadioButtonList id="rblQuant" runat="server" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl">
											<asp:ListItem Value="No. of tanks " Selected="True">Receipt-No.of Tanks</asp:ListItem>
											<asp:ListItem Value=" Tanks QtyKgs">Receipt-QtyKgs</asp:ListItem>
											
										</asp:RadioButtonList></TD>
								</TR>
								<TR>
									<TD>Meter Reading</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtValue" runat="server" Width="86px" AutoPostBack="True" CssClass="form-control"></asp:TextBox>&nbsp;
									</TD>
								</TR>
							
					
								<TR>
									<TD colSpan="4">
										<asp:Panel id="Panel2" runat="server" ForeColor="White" Width="546px" BackColor="#8080FF" Height="17px">&nbsp;Present Meter 
            MaxValue : 
<asp:TextBox id="txtMax" runat="server" CSSClass="form-control"></asp:TextBox>&nbsp;Next 
            Meter Initial Reading : 
<asp:TextBox id="txtInitial" runat="server" CSSClass="form-control"></asp:TextBox></asp:Panel></TD>
								</TR>
				
							<TR>
									<TD>Challan Number</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtCallanNumber" runat="server" AutoPostBack="True" CssClass="form-control"></asp:TextBox></TD>
								</TR>
                            <TR>
									<TD>Challan Date</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtCallanDate" runat="server" AutoPostBack="True" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>Remarks</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtRemarks" runat="server" AutoPostBack="True" CssClass="form-control"></asp:TextBox></TD>
								</TR>

								<TR>
									<TD vAlign="top" align="middle" colSpan="3">
										<asp:Button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:Button></TD>
								</TR>
							
							<asp:DataGrid id="dgSavedData" runat="server" BorderWidth="1px">
								<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
								<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
								<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
							</asp:DataGrid>
						</asp:panel></TD>
					<TD vAlign="top" align="left"><asp:datagrid id="dgMeterRdg" runat="server" BackColor="White" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC">
							<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
							<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
							<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
							<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></TD>
				</TR>
			</TABLE>
                </asp:panel>
                    </div></div>
		</form>
             <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
