<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProdBreakDown.aspx.vb" Inherits="WebApplication2.ProdBreakDown" %>
<!DOCTYPE HTML >
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>ProdBreakDown</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
		<meta name="vs_defaultClientScript" content="JavaScript"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

        
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
   
          <link rel="stylesheet" href="../../../StyleSheet1.css" />
	</head>
	<body >
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
			
           
			<asp:Panel id="Panel2" runat="server">
                 <div class ="row">
                <div class="table-responsive">

				<table id="Table8" class="table">
			</table>

							<asp:Panel id="Panel1" runat="server">
								<table id="Table1" class="table">
									<tr>
										<td>Break Down Momo - Time Loss duration ( will be taken for PCDO only if BreakDown 
											if saved as 'Affected - Yes'<hr class="prettyline"/></td>
									</tr>
								</table>
								<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
								<table id="Table2" class="table">
									<tr>
										<td>BreakDownDate</td>
										<td>:</td>
										<td>
											<asp:TextBox id="txtBrDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></td>
									</tr>
								</table>
								<asp:DataGrid id="DataGrid1" runat="server" CssClass="table">
									<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
									<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
									<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
									<Columns>
										<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
									</Columns>
									<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
								</asp:DataGrid>
								<table id="Table3" class="table">
									<tr>
										<td>TimeLossAsPerPCDO</td>
										<td>
											<asp:TextBox id="txtLoss" runat="server" CssClass="form-control"></asp:TextBox></td>
										<td>MemoSlipNo</td>
										<td>
											<asp:TextBox id="txtMemoSlipNo" runat="server" CssClass="form-control"></asp:TextBox></td>
										<td>Affected</td>
										<td>
											<asp:RadioButtonList id="rblAff" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
												<asp:ListItem Value="1">Yes</asp:ListItem>
												<asp:ListItem Value="0">No</asp:ListItem>
											</asp:RadioButtonList></td>
									</tr>
								</table>
								<table id="Table4" class="table">
									<tr>
										<td vAlign="top" align="center">
											<asp:Label id="lblSlipNo" runat="server" Visible="False"></asp:Label>
											<asp:Button id="btnUpdate" CssClass="button button2" runat="server" Text="Update"></asp:Button>
											<asp:Label id="lblMemoNo" runat="server" Visible="False"></asp:Label></td>
									</tr>
								</table>
							</asp:Panel>
				
				<table id="Table9" class="table">
			</table>
							<asp:Panel id="pnlOff" runat="server" >
								<table id="Table5" class="table">
									<tr>
										<td colspan="3">Off Heat Remarks</td>
									</tr>
									<tr>
										<td>HeatNo</td>
										<td>:</td>
										<td>
											<asp:TextBox id="txtHeatNo" runat="server"  CssClass="form-control" AutoPostBack="True"></asp:TextBox></td>
									</tr>
								</table>
								<table id="Table6" class="table">
									<tr>
										<td>Remarks&nbsp;&nbsp;
											<asp:Label id="lblMess" runat="server" ForeColor="Red">( Do not use 'Enter' key between words )</asp:Label>
										</td>
										<td>:</td>
										<td>
											<asp:TextBox id="txtHeatRemarks" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox></td>
									</tr>
								</table>
								<table id="Table7" class="table">
									<tr>
										<td align="center">
											<asp:Button id="btnRem" CssClass="button button2" runat="server" Text="Update Remarks"></asp:Button></td>
									</tr>
								</table>
							</asp:Panel>
                </div></div>
			</asp:Panel>
		</form>
             </div>
           <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
