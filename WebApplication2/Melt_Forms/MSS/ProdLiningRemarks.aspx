<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProdLiningRemarks.aspx.vb" Inherits="WebApplication2.ProdLiningRemarks" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>ProdLiningRemarks</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

         
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
   
          <link rel="stylesheet" href="../StyleSheet1.css" />
	  <%--  <style type="text/css">
            .auto-style1 {
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
	  <%--  <style type="text/css">
            .auto-style1 {
                width: 1620px;
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
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px" >
                     
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                </div>
           
	
			<asp:panel id="Panel1"  runat="server">
                 <div class ="row">
                <div class="table-responsive">
                <%--style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px"--%>
				<table id="Table2" class="table">
                   <%-- cellSpacing="1" cellPadding="1" width="300"--%>
					<tr>
						 <td>
							<asp:label id="lblConsignee" runat="server" Font-Bold="True"></asp:label><strong>-&nbsp;Lining&nbsp;Remarks</strong><hr class="prettyline" /></td>
					</tr>
					<tr>
						 <td>
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></td>
					</tr>
				</table>
				<table id="Table3" class="table">
                  <%--  style="WIDTH: 1079px; HEIGHT: 28px" cellSpacing="1" cellPadding="1" width="1079"--%>
					<tr>
						 <td>
							<asp:RadioButtonList id="rblLiningType" runat="server"  CssClass="rbl"   RepeatLayout="Flow" RepeatDirection="Horizontal" AutoPostBack="True"></asp:RadioButtonList></td>
					</tr>
				</table>
				<table id="Table4" class="table" >
                   <%-- style="WIDTH: 223px; HEIGHT: 32px" cellSpacing="1" cellPadding="1" width="223"--%>
					<tr>
						 <td>LiningNo</td>
						 <td>:</td>
						 <td>
							<asp:DropDownList id="ddlLiningNo"  CssClass=" form-control" runat="server" AutoPostBack="True"></asp:DropDownList></td>
					</tr>
				</table>
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table" >
                   <%-- BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4"--%>
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
				<table id="Table8" class="table">
                    <%--cellSpacing="1" cellPadding="1" width="300" bgColor="#cccc33"--%>
					<tr>
						<td>Refractory Condemned DueTo</td>
						 <td>:</td>
						 <td>
							<asp:RadioButtonList id="rblRefCondemned" CssClass="rbl" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal"></asp:RadioButtonList></td>
					</tr>
				</table>
				<asp:Panel id="pnlLT3" runat="server">
					<table id="Table9" class="table">
						<tr>
							<td>
                                </td>
                            </tr>
                        </table>
								<table id="Table1" class="table">
									<tr>
										<td colspan="2">Bottom:</td>
                                        
									</tr>
									<tr>
										<td colspan="2">
											<asp:RadioButtonList id="rblSpalling"  CssClass="rbl" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal"  >
												<asp:ListItem Value="1">Spalling</asp:ListItem>
												<asp:ListItem Value="0" Selected="True">No Spalling</asp:ListItem>
											</asp:RadioButtonList></td>
									</tr>
									<tr>
										 <td>Depth:</td>
										 <td>
											<asp:TextBox id="txtSpallingDepth" runat="server" CssClass="form-control"></asp:TextBox></td>
									</tr>
									<tr>
										 <td>Area:</td>
										 <td>
											<asp:TextBox id="txtSpallingArea" runat="server" CssClass="form-control"></asp:TextBox></td>
									</tr>
								</table>
							
						
								<table id="Table5" class="table">
									<tr>
										 <td>Side Wall</td>
										 <td></td>
										 <td></td>
										 <td></td>
										<td></td>
										 <td></td>
									</tr>
									<tr>
										 <td>Maximum Erosion of Bricks:</td>
										 <td>
											<asp:TextBox id="txtMaxErosion" runat="server" CssClass="form-control"></asp:TextBox></td>
										 <td>MM</td>
										 <td>Location</td>
										<td  colspan="2">
											<asp:TextBox id="txtErosionLoc" runat="server" CssClass="form-control"></asp:TextBox></td>
									</tr>
									<tr>
										 <td>Maximum penitration of metal:</td>
										 <td>
											<asp:TextBox id="txtMaxPenitration" runat="server" CssClass="form-control"></asp:TextBox></td>
										 <td>MM</td>
										 <td>Location:</td>
										<td colspan="2">
											<asp:TextBox id="txtPenitrationLoc" runat="server" CssClass="form-control"></asp:TextBox></td>
									</tr>
									<tr>
										 <td>Condition of safety lining:</td>
										<td colspan="2">
											<asp:TextBox id="txtLiningCondition" runat="server" CssClass="form-control"></asp:TextBox></td>
										<td colspan="2">Area in Sq.Inches:</td>
										 <td>
											<asp:TextBox id="txtAreaCon" runat="server" CssClass="form-control"></asp:TextBox></td>
									</tr>
								</table>
					
				</asp:Panel>
				<table id="Table7" class="table">
					<tr>
						 <td>Remarks:</td>
						 <td>
							<asp:TextBox id="txtRemarks" runat="server" CssClass="form-control"></asp:TextBox></td>
					</tr>
				</table>
				<table id="Table6" class="table">
					<tr>
						<td align="center">
							<asp:Button id="btnRemarks" runat="server"  CssClass="button button2" Text="Save"></asp:Button></td>
					</tr>
				</table>
				<asp:DataGrid id="DataGrid2" CssClass="table"  runat="server" >
                    <%--BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4"--%>
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
                      </div>
            </div>
			</asp:panel></form>
                    </div>
            <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
             
              
	</body>
</html>
