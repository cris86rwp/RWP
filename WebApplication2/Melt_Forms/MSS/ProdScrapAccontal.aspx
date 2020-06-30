<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProdScrapAccontal.aspx.vb" Inherits="WebApplication2.ProdScrapAccontal" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0   transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>ProdScrapAccontal</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
         
        
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
   
          <link rel="stylesheet" href="../StyleSheet1.css" />
	   <%-- <style type="text/css">
            .auto-style1 {
                height: 33px;
            }
            .auto-style4 {
                height: 27px;
            }
            .auto-style5 {
                height: 34px;
            }
            .auto-style6 {
                height: 36px;
            }
            .auto-style7 {
                z-index: 101;
                left: 8px;
                position: absolute;
                top: 8px;
            }
            .auto-style8 {
                display: block;
                font-size: 1rem;
                font-weight: 400;
                line-height: 1.5;
                color: #495057;
                background-clip: padding-box;
                border-radius: .25rem;
                  transition: none;
                border: 1px solid #ced4da;
                background-color: #fff;
            }
        </style>--%>
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
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="  true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-con  trol ll" Width="400px" >
                     
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                </div>
			<asp:panel id="Panel1" runat="server"  >
                 <div class ="row">
                <div class="table-responsive">
				<table id="Table1" class="table" >
                  <%--  style="WIDTH: 381px; HEIGHT: 27px" cellSpacing="1" cellPadding="1" width="381"--%>
					<tr>
						<td align="center"  >
							<asp:label id="lblConsignee" runat="server" Font-Bold="  true"></asp:label>&nbsp;<strong>Production 
								Scrap&nbsp;Accountal Details</strong><hr class="prettyline"/></td>
					</tr>
				</table>
				<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label>
				
                <table id="Table2"   class="table">
                   <%-- style="WIDTH: 202px; HEIGHT: 15px" cellSpacing="1" cellPadding="1" width="202"--%>
					<tr>
						<td>
							<asp:Label id="lblDate" runat="server"></asp:Label>Date</td>
						<td>:</td>
						<td>
							<asp:textbox id="txtUsageDate" runat="server" AutoPostBack="  true" CssClass="form-con  trol"></asp:textbox></td>
						<td>
							<asp:RadioButtonList id="rblType"     runat="server" AutoPostBack="  true"  RepeatLayout="Flow" RepeatDirection="Horizontal" Width="221px" >
                              <%--  Width="114px"Height="2px"--%>
								<asp:ListItem Value="0" Selected="  true">Usage</asp:ListItem>
								<asp:ListItem Value="CB">CB</asp:ListItem>
							</asp:RadioButtonList></td>
                        </tr>
                    </table>
						                      
							<asp:panel id="Panel2" runat="server">
								
                                <table id="Table4" class="table"  >
                                   <%-- style="WIDTH: 177px; HEIGHT: 32px" cellSpacing="1" cellPadding="1" width="177"--%>
									<tr>
										<td>MRXCWheelWt</td>
										<td>
											<asp:TextBox id="txtMRXC" runat="server" CssClass="form-control"></asp:TextBox></td>
										<td>MRRisersHub</td>
										<td>
											<asp:TextBox id="txtMRRisersHub" runat="server" CssClass="form-control"></asp:TextBox></td>
									</tr>
							 </table>
							</asp:panel>
                       
				<asp:Panel id="Panel3" runat="server" >
					<table id="Table5" class="table"  >
						<tr>
							<td class="auto-style1">Heats :
								<asp:Label id="lblH" runat="server" Style="Color:#C000C0"></asp:Label>&nbsp; 
								WheelCast :
								<asp:Label id="lblC" runat="server" Style="Color:#804040"></asp:Label>&nbsp; 
								Total OB :
								<asp:Label id="lblTOB" runat="server" Style="Color:Purple"></asp:Label>&nbsp;Total 
								Receipt :&nbsp;
								<asp:Label id="lbltr" runat="server" Style="Color:#C00000"></asp:Label>&nbsp;&nbsp; 
								Total Usage :
								<asp:Label id="lblTU" runat="server" Style="Color:Blue"></asp:Label>&nbsp;&nbsp;AvgPerHeat:
								<asp:Label id="lblAvg" runat="server" Style="Color:Red"></asp:Label></td>
						</tr>
					</table>
				</asp:Panel>
				<table id="Table3" class="table">
					<tr>
						<td class="auto-style4"></td>
						<td align="center" colspan="2" class="auto-style4">HMS</td>
						<%--<TD align="center" colSpan="2">Axle End Cut</td>
						<<TD align="center" colSpan="2">Rail Cut</td>
						TD align="center" colSpan="2">ProScrap</td>--%>
						<td align="center" colspan="2" class="auto-style4">Risers&amp;Hub</td>
						<td align="center" colspan="2" class="auto-style4">LMS</td>
						<td colspan="2" class="auto-style4">ChipsAMSCR&nbsp;</td>
					</tr>
					<tr>
						<td class="auto-style5">Item</td>
						<td class="auto-style5">Receipt</td>
						<td class="auto-style5">Usage</td>
						<%--<td>Receipt</td>
						<td>Usage</td>
						<td>Receipt</td>
						<td>Usage</td>
						<td>Receipt</td>
						<td>Usage</td>--%>
						<td class="auto-style5">Receipt&nbsp;</td>
						<td class="auto-style5">Usage</td>
						<td class="auto-style5">Receipt</td>
						<td class="auto-style5">Usage&nbsp;&nbsp;&nbsp;</td>
						<td class="auto-style5">Receipt</td>
						<td class="auto-style5">Usage</td>
					</tr>
					<tr>
						<td class="auto-style1">
							<asp:Label id="lblOB" runat="server">OB</asp:Label></td>
						<td class="auto-style1">
							<asp:Label id="lblWCOB" runat="server"></asp:Label></td>
						<td class="auto-style1"></td>
						<%--<td>
							<asp:Label id="lblRCOB" runat="server"></asp:Label></td>
						<td></td>
						<td>
							<asp:Label id="lblAEOB" runat="server"></asp:Label></td>
						<td></td>
						<td>
							<asp:Label id="lblPROB" runat="server"></asp:Label></td>
						<td></td>--%>
						<td>
							<asp:Label id="lblRHOB" runat="server"></asp:Label></td>
						<td ></td>
						<td >
							<asp:Label id="lblLOB" runat="server"></asp:Label></td>
						<td ></td>
						<td>
							<asp:Label id="lblCOB" runat="server"></asp:Label></td>
						<td  ></td>
					</tr>
					<tr>
						<td  >
							<asp:Label id="lbl" runat="server"></asp:Label></td>
						<td  >
							<asp:Label id="lblWCR" runat="server"></asp:Label></td>
						<td>
							<asp:TextBox id="txtWCU" runat="server" AutoPostBack="  true" CssClass="form-control"></asp:TextBox></td>
						<%--<td>
							<asp:Label id="lblRCR" runat="server"></asp:Label></td>
						<td>
							<asp:TextBox id="tx  trCU" runat="server" AutoPostBack="  true" Width="69px"></asp:TextBox></td>
						<td>
							<asp:Label id="lblAER" runat="server"></asp:Label></td>
						<td>
							<asp:TextBox id="txtAEU" runat="server" AutoPostBack="  true" Width="69px"></asp:TextBox></td>
						<td>
							<asp:Label id="lblPRR" runat="server"></asp:Label></td>
						<td>
							<asp:TextBox id="txtPRU" runat="server" AutoPostBack="  true" Width="69px"></asp:TextBox></td>--%>
						<td  >
							<asp:Label id="lblRHR" runat="server"></asp:Label></td>
						<td>
							<asp:TextBox id="txtrHU" runat="server" AutoPostBack="  true" CssClass="form-control"></asp:TextBox></td>
						<td>
							<asp:Label id="lblLR" runat="server"></asp:Label></td>
						<td>
							<asp:TextBox id="txtLU" runat="server" AutoPostBack="  true" CssClass="form-control"></asp:TextBox></td>
						<td>
							<asp:Label id="lblCR" runat="server"></asp:Label></td>
						<td>
							<asp:TextBox id="txtCU" runat="server" AutoPostBack="  true" CssClass="form-control"></asp:TextBox></td>
					</tr>
					<tr>
						<td align="center" colspan="9">
							<asp:Button id="btnSave" runat="server" CssClass="button button2" Text="Save"></asp:Button></td>
					</tr>
				</table>
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table"  >
					<SelectedItemStyle Font-Bold="  true" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="  true" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
                      </div>
              </div>
			</asp:panel>
            
		</form>
             </div>       
              <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>  
	</body>
</html>
