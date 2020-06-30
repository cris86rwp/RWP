<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PostPouring.aspx.vb" Inherits="WebApplication2.PostPouring" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>PouringNew</title>
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
        
        <%--<link href="../StyleSheet1.css" rel="stylesheet" />--%>
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
            <TABLE id="Table10" class="table">
					<TR>
						<TD><h2>302FormEntry</h2><hr class="prettyline" /></TD>
						<TD>
							&nbsp;</TD>
                        	</TR>
				</TABLE>
			<asp:Panel id="Panel1" runat="server">
				
            
				<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
				
							<%--<asp:panel id="pnlPost" runat="server" BackColor="#FFE0C0">--%>
								<TABLE id="Table7" class="table">
									<TR>
										<TD></TD>
                                            </TR>
								</TABLE>
											<TABLE id="Table12" class="table">
												<TR>
													<TD>HeatNumber</TD>
													<TD>
														<asp:textbox id="txtHeat_number" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
													<TD>MeltingWONo:&nbsp;</TD>
													<TD>
														<asp:Label ID="lblWoval" runat="server"></asp:Label>
                                                    </TD>
													<TD>
														<asp:Label ID="lblWODesc" runat="server"></asp:Label>
                                                    </TD>
												    <td>
                                                        <asp:Label ID="lblHtNo" runat="server" Visible="False"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblSlNo" runat="server" Visible="False"></asp:Label>
                                                    </td>
												</TR>
                                                    
											
															<TR>
                                                                <TD>Date</TD>
																<TD>
																	<asp:textbox id="txtCastDate" runat="server" CssClass="form-control"></asp:textbox></TD>
														
																<TD>Operator</TD>
																<TD>
																	<asp:textbox id="txtOperator_mould" runat="server" CssClass="form-control"></asp:textbox></TD>
															</TR><TR>	<TD>SSE/JE</TD>
																<TD>
																	<asp:textbox id="txtShift_supervisor" runat="server" CssClass="form-control"></asp:textbox></TD>
																<TD>Shift</TD>
																<TD>
																	<asp:RadioButtonList id="rblGroup" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl">
																		<asp:ListItem Value="A">A</asp:ListItem>
																		<asp:ListItem Value="B">B</asp:ListItem>
																		<asp:ListItem Value="C">C</asp:ListItem>
																	    <asp:ListItem Selected="True">G</asp:ListItem>
																	</asp:RadioButtonList></TD>
															</TR>
														</TABLE>
												<table class="table">
												<TR>
													<TD>DomeDisc</TD>
													<TD>
														<asp:textbox id="txtDomedisc_used" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>End Date and Time</TD>
													<TD>
														<asp:textbox id="txtEndDate" runat="server" CssClass="form-control" ToolTip="fill Date"></asp:textbox></TD>
												    <td>
                                                        <asp:TextBox ID="txtEnd_time" runat="server" MaxLength="5" CssClass="form-control" ToolTip="Fill Time"></asp:TextBox>
                                                    </td>
												</TR>
											    <tr>
                                                    <td>Drain Metal Level </td>
                                                    <td>
                                                        <asp:TextBox ID="txtDrain_MM" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                    <td>EndTemp</td>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="txtEnd_temperature" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
											</table>
											<TABLE id="Table15" class="table">
												<tr>
                                                    <td></td>
                                                    <td>StartDate</td>
                                                    <td>StartTime</td>
                                                    <td>EndDate</td>
                                                    <td>EndTime</td>
                                                </tr>
                                                <tr>
                                                    <td>Pouring</td>
                                                    <td>
                                                        <asp:TextBox ID="txtCBStartDate" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCorebakingSttm" runat="server" AutoPostBack="false" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCBEndDate" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCorebackEndTm" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
												<TR>
													<TD>TotalPourTime</TD>
													<TD>
														<asp:textbox id="txtTotalpour_time" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
													<TD>FinalTemp.ofMetal</TD>
													<TD>
														<asp:TextBox ID="ftempofmtl" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </TD>
												</TR>
											</TABLE>
											<table id="Table13" class="table">
												<TR>
													<TD>Metal Weight after Pouring</TD>
													<TD>
														<asp:textbox id="txtmetalwt" runat="server" CssClass="form-control"></asp:textbox></TD>
													
												</TR>
                                                	<TR>
													<TD>Riser Weight </TD>
													<TD>
														<asp:textbox id="txtriserwt" runat="server" CssClass="form-control"></asp:textbox></TD>
													
												</TR>
                                                <TR>
													<TD>Ladle Weight After Pouring</TD>
													<TD>
														<asp:TextBox ID="txtw4" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </TD>
													
												</TR>
											</table>
											<table id="Table14" class="table">
												<TR>
													<TD><strong>WhlCast</strong></TD>
													<TD>
														<asp:textbox id="txtWheelsCast" runat="server" CssClass="form-control" ReadOnly="True"></asp:textbox></TD>
													<TD><strong>CopesUsed</strong></TD>
													<TD>
														<asp:textbox id="txtwheelcast_cope" runat="server" CssClass="form-control" ReadOnly="True"></asp:textbox></TD>
													<TD><strong>DragsUsed</strong></TD>
													<TD>
														<asp:textbox id="txtwheelcast_drag" runat="server" CssClass="form-control" ReadOnly="True"></asp:textbox></TD>
												</TR>
											</table>
                              			
											<TABLE id="Table8" class="table">
												<TR>
													<TD>Tube1Cond</TD>
													<TD>
														<asp:TextBox ID="txtTube_condition0" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </TD>
												</TR>
												<tr>
                                                    <td>Tube2Cond</td>
                                                    <td>
                                                        <asp:TextBox ID="txtTube_condition1" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Tube3Cond</td>
                                                    <td>
                                                        <asp:TextBox ID="txtTube_condition2" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
                                              
                                                <tr>
                                                    <td>Reason of Less Wheel cast</td>
                                               
                                                  
                                                    <td>
                                                        <asp:TextBox ID="txtPostRemarks0" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                   
                                                    <td>Reason of excess pouring start delay</td>
                                                
                                                    <td>
                                                        <asp:TextBox ID="txtPostRemarks1" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
												<TR>
													<TD>
														Reason of excess pouring time</TD>
												
                                                   
                                                    <td>
                                                        <asp:TextBox ID="txtPostRemarks" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
											</TABLE>
                  <table class="table">
											<strong>
                                            <asp:Label ID="lblCastWheels" runat="server" BackColor="#0066FF"></asp:Label>
                                            </strong>
                                            <caption>
                                                <br />
                                                <br />
                                                <br />
                                                <tr>
                                                    <td>Remarks</td>
                                                    <td>
                                                        <asp:TextBox ID="txtPostRemark" runat="server" CssClass="form-control"></asp:TextBox>
                                                        <asp:Label ID="lblUser" runat="server" Visible="False"></asp:Label>
                                                    </td>
                                                </tr>
                                            </caption>
                </table>
							
										<table class="table">
									<TR>
										<TD align="middle" colSpan="2">
											<asp:button id="btnpostsave" accessKey="s" runat="server" CssClass="button button2" Text="Save"></asp:button>&nbsp;&nbsp;&nbsp;
											<asp:button id="btnPostClear" accessKey="c" runat="server" CssClass="button button2"  Text="Clear" CausesValidation="False"></asp:button>&nbsp;
											<asp:button id="btnPostExit" accessKey="e" runat="server" CssClass="button button2" Text="Exit" CausesValidation="False"></asp:button></TD>
									</TR>
								</table>
							<%--</asp:panel>--%>
							</asp:Panel>
		</form>
                                             </div>
                </div>
            </div>
     <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>

	</body>
</html>
