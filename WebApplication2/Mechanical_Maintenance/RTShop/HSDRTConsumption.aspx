<%@ Page Language="vb" AutoEventWireup="false" Codebehind="HSDRTConsumption.aspx.vb" Inherits="WebApplication2.HSDRTConsumption" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd html 4.0 transitional//EN">
<html>
	<head runat="server">
		<title>HSD RTSHOP Consumption</title>
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

	    <style type="text/css">
            .auto-style1 {
                height: 73px;
            }
        </style>

	</head>
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

                              <FONT size="5">
							<asp:Label id="lblShop" runat="server"></asp:Label></FONT>
                                            
			<asp:panel id="Panel1" runat="server">
				<table id="table1" class="table">
					<tr>
						<td align="middle" class="auto-style1"><strong>RTSHOP HSD FLOW METER </strong><FONT size="20">&nbsp;</FONT></td>
					</tr>
 <%--                   <TR>
                               
								<TD class="auto-style2">
									<asp:RadioButtonList id="rblArea" runat="server" CSSClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="True">
											<asp:ListItem Value="LPG" Selected="True">LPG</asp:ListItem>
								            <asp:ListItem Value="BMCG">BMCG</asp:ListItem>
										   </asp:RadioButtonList>
                                    </TD>
                   <%--                </TR> --%>
                   <%-- <TR>
                               
								<TD class="auto-style2">
									<asp:RadioButtonList id="RadioButtonList1" runat="server" CSSClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="True">
											<asp:ListItem Value="FM01" Selected="True">FM01</asp:ListItem>
								            <asp:ListItem Value="DF">DF</asp:ListItem>
                                             <asp:ListItem Value="SP">SP</asp:ListItem>
                                         <asp:ListItem Value="LPH">LPH</asp:ListItem>
										 <asp:ListItem Value="TPH">TPH</asp:ListItem>   
                                        </asp:RadioButtonList>
                                    </TD>
                                   </TR> --%>
                                <%--<TR>
                               
								<TD class="auto-style2">
									<asp:RadioButtonList id="RadioButtonList2" runat="server" CSSClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="True">
											<asp:ListItem Value="HC1" Selected="True">HC1</asp:ListItem>
								            <asp:ListItem Value="HC2">HC2</asp:ListItem>
                                         <asp:ListItem Value="HC3">HC3</asp:ListItem>
                                         <asp:ListItem Value="MRS">MRS</asp:ListItem>
										   </asp:RadioButtonList>
                                    </TD>
                                   </TR>--%>
                             

					<%--<tr>
						<td align="middle">
							&nbsp;</td>
					</tr>--%>
					<tr>
						<td>
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></td>
					</tr>
				</table>
				<table id="table2" class="table">
					<tr>
						<td>
							<asp:RadioButtonList id="rblDataPoints" runat="server" AutoPostBack="true" Repeatdirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                               
							</asp:RadioButtonList></td>
					</tr>
				</table>
				<asp:Panel id="Panel2" runat="server">
					<table id="table4" class="table">
						<tr>
							<td>PreviousDate</td>
							<td>:</td>
							<td>
								<asp:TextBox id="txtPreDate" runat="server" AutoPostBack="true" CssClass="form-control"></asp:TextBox></td>
							<td>MeterReading</td>
							<td>:</td>
							<td>
								<asp:TextBox id="txtPreMeterReading" runat="server" AutoPostBack="true" CssClass="form-control"></asp:TextBox></td>
							<td>Consumption</td>
							<td>:</td>
							<td>
								<asp:Label id="lblConsumption" runat="server"></asp:Label></td>
						</tr>
						<tr>
							<td>Remarks</td>
							<td>:</td>
							<td colSpan="7">
								<asp:TextBox id="txtremarks" runat="server" CssClass="form-control"></asp:TextBox></td>
						</tr>
					</table>
				</asp:Panel>
				<table id="table5" class="table">
					<tr>
						<td>Date</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtdate" runat="server" AutoPostBack="true" CssClass="form-control"></asp:TextBox></td>
						<td>MeterReading</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtMeterReading" runat="server" AutoPostBack="true" CssClass="form-control"></asp:TextBox></td>
					</tr>
					<tr>
						<td vAlign="top" align="middle" colSpan="6">
							<asp:Button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:Button></td>
					</tr>
				</table>
				<asp:DataGrid id="DataGrid1" runat="server" BackColor="White" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966" CssClass="Table">
					<SelectedItemStyle Font-Bold="true" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<headerStyle Font-Bold="true" ForeColor="#FFFFCC" BackColor="#990000"></headerStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
			</asp:panel>
    </div>
    </div>
    </div>
    </form>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
