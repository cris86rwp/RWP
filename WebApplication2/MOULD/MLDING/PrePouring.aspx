<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PrePouring.aspx.vb" Inherits="WebApplication2.PrePouring" %>
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
        
        <link href="../StyleSheet1.css" rel="stylesheet" />

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
			<asp:panel id="pnlspray" runat="server">
				<TABLE id="Table10" class="table">
					<TR>
						<TD><h2>302FormEntry<hr class="prettyline" />
                            <h2></h2>
                            <h2></h2>
                            <h2></h2>
                            <h2></h2>
                            <h2></h2>
                            </h2></TD>
						</TR>
				</TABLE>
                <TABLE class="table">
                    <TR>
						                          <TD>MeltingWONo:&nbsp;</TD>
						<TD>
							<asp:label id="lblWoval1" runat="server"></asp:label></TD>
						<TD>
							<asp:label id="lblWODesc1" runat="server" Font-Bold="True" Font-Underline="True"></asp:label></TD>
					</TR>
				</TABLE>
				<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
				<table id="Table11" class="table">
					<TR>
						<TD></td></TR>
                            </table>
							<asp:panel id="pnlPre" runat="server" >
								<%--<table id="Table5" class="table">
									<TR>
										<TD  align="left"></TD></table>--%>
											<table id="Table3" class="table">
												<TR>
                          
													<TD>Heat</TD>
													<TD>
														<asp:textbox id="txtHeatNumber" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
													<TD>DateCast</TD>
													<TD>
														<asp:textbox id="txtCastDate" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
												</TR><%--</table>--%>
												
														<%--<TABLE id="Table9" class="table">--%>
															<TR>
																<TD>Operator</TD>
																<TD>
																	<asp:textbox id="txtOperator_mould" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
																<TD>SSE/JE</TD>
																<TD>
																	<asp:textbox id="txtShift_supervisor" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
																</TR>
                                                <TR>
                                                    <TD align="middle" colspan="4">Shift
																
																	<asp:RadioButtonList id="rblGroup" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal"  CssClass="rbl">
																		<asp:ListItem Value="A">A</asp:ListItem>
																		<asp:ListItem Value="B">B</asp:ListItem>
																		<asp:ListItem Value="C">C</asp:ListItem>
																	    <asp:ListItem Selected="True">G</asp:ListItem>
																	</asp:RadioButtonList></TD>
															</TR>
														</TABLE>
                                                        <table class="table">
												
												<TR>
													<TD>JMPCover</TD>
													<TD>
														<asp:DropDownList id="txtJMP_cover" runat="server" CssClass="form-control ll">
															<asp:ListItem Value="C1" Selected="True">C1</asp:ListItem>
															<asp:ListItem Value="C2">C2</asp:ListItem>
															<asp:ListItem Value="C3">C3</asp:ListItem>
															<asp:ListItem Value="C4">C4</asp:ListItem>
														</asp:DropDownList></TD>
													<TD>JMP No</TD>
													<TD>
														<asp:DropDownList id="txtPour_tankNo" runat="server" CssClass="form-control ll">
															<asp:ListItem Value="1">1</asp:ListItem>
															<asp:ListItem Value="2">2</asp:ListItem>
														</asp:DropDownList></TD>
												</TR>
                                                
                                                <TR>
													<TD>Ladle No :&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label id="Ladno" runat="server" ></asp:Label></TD>
													<td></td>
													<TD>Ladle Life :&nbsp;&nbsp;&nbsp;  <asp:Label id="Ladlife" runat="server" ></asp:Label></TD>
                                                    <td></td>
													<TD>Empty Ladle Wt. :&nbsp;&nbsp; <asp:Label id="Lademptwt" runat="server" ></asp:Label></TD>
                                                    <td></td>
												</TR>

												<TR>
													<TD>LLT</TD>
													<TD>
														<asp:textbox id="txtLLTDate" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtLadlelift_time" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox>(hh:mm)</TD>
													<TD>
														<asp:Label id="lblUser" runat="server" Visible="False"></asp:Label></TD>
												</TR>

                                                	<TR>
													<TD>LadTapTime</TD>
													<TD>
														<asp:textbox id="txtladtaptime" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:Label id="Label2" runat="server" Visible="False"></asp:Label></TD>
													<TD>
														<asp:Label id="Label1" runat="server" Visible="False"></asp:Label></TD>
												</TR>
                                               
												<TR>
													<TD>LadInTank</TD>
													<TD>
														<asp:textbox id="txtLITDate" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtLadle_in_tank_time" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox>(hh:mm)</TD>
													<TD>
														<asp:textbox id="txt_ladle_in_tank_temp" runat="server" CssClass="form-control"></asp:textbox>Temp</TD>
												</TR>
												<TR>
													<TD>Initial Temp 1</TD>
													<TD>
														<asp:textbox id="txtFImm" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtImmer1_time" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox>(hh:mm)</TD>
													<TD>
														<asp:textbox id="txtImmer1_temperature" runat="server" CssClass="form-control"></asp:textbox>Temp</TD>
												</TR>
												<TR>
													<TD>Initial Temp 2</TD>
													<TD>
														<asp:textbox id="txtSImm" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtImmer2_time" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox>(hh:mm)</TD>
													<TD>
														<asp:textbox id="txtImmer2_temperature" runat="server" CssClass="form-control"></asp:textbox>Temp</TD>
												</TR>
												<TR>
													<TD>
														Initial Temp 3</TD>
													<TD>
														<asp:textbox id="txtTImm" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtImmer3_time" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox>(hh:mm)</TD>
													<TD>
														<asp:textbox id="txtImmer3_temperature" runat="server" CssClass="form-control"></asp:textbox>Temp</TD>
												</TR>
												<TR>
													<TD>PourStatTime</TD>
													<TD>
														<asp:textbox id="txtPourStartDate" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtPourStartTime" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox>(hh:mm)</TD>
													<TD>
														<asp:textbox id="txtPourStartTemp" runat="server" CssClass="form-control"></asp:textbox>Temp</TD>
												</TR>
											</table>
										
											<TABLE id="Table6" class="table">
												<TR>
													<TD>Tube No</TD>
													<TD>Mfg</TD>
													<TD>Life</TD>
													<TD>SlagCond</TD>
												</TR>
												<TR>
													<TD>
														<asp:textbox id="txtTubeNo1" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtTube1_mfg" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtTube1_life" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:dropdownlist id="txtSing_condition" runat="server" CssClass="form-control ll">
															<asp:ListItem Value="MED" Selected="True">MED</asp:ListItem>
															<asp:ListItem Value="THK">THK</asp:ListItem>
															<asp:ListItem Value="THN">THN</asp:ListItem>
															<asp:ListItem Value="VIS">VIS</asp:ListItem>
														</asp:dropdownlist></TD>
												</TR>
												<TR>
													<TD>
														<asp:textbox id="txtTubeNo2" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtTube2_mfg" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtTube2_life" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>StopSupp</TD>
												</TR>
												<TR>
													<TD>
														<asp:textbox id="txtTubeNo3" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtTube3_mfg" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtTube3_life" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:dropdownlist id="txtStop_support" runat="server" CssClass="form-control ll">
															<asp:ListItem Value="CAC">CAC</asp:ListItem>
															<asp:ListItem Value="DCG" Selected="True">DCG</asp:ListItem>
															<asp:ListItem Value="DIX">DIX</asp:ListItem>
														</asp:dropdownlist></TD>
												</TR>
												<TR>
													<TD>TubeInTime</TD>
													<TD>
														<asp:textbox id="txtTITDate" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtTube_intime" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
													<TD></TD>
												</TR>
												<TR>
													<TD>TubeOutTime</TD>
													<TD>
														<asp:textbox id="txtTOTDate" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>
														<asp:textbox id="txtTube_outtime" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
													<TD></TD>
												</TR>

                                                	<TR>
													<TD>Jmp 'O' ring</TD>
													<TD>
                                                        <asp:DropDownList ID="jmporing" runat="server" CssClass="form-control ll">
                                                            <asp:ListItem Text="Ok" />
                                                            <asp:ListItem Text="Changed" />
                                                        </asp:DropDownList> </TD>
													<TD>Probe Height</TD>
													<TD>
														<asp:textbox id="prbheight" runat="server" CssClass="form-control ll"></asp:textbox></TD>
												</TR>

                                                <TR>
													<TD>Plg Pressure</TD>
													<TD>
														<asp:textbox id="plgpressure" runat="server" CssClass="form-control"></asp:textbox></TD>
												</TR>

												<TR>
													<TD>Al Stars</TD>
													<TD>
														<asp:textbox id="txtAL_stars" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>AlDipTemp</TD>
													<TD>
														<asp:textbox id="txtALdip_temp" runat="server" CssClass="form-control"></asp:textbox></TD>
												</TR>

												<TR>
													<TD>MetalRecd with LadlWt</TD>
													<TD>
														<asp:textbox id="txtMetalRecieved" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>Riser Wt</TD>
													<TD>
														<asp:textbox id="txtRiser_weight" runat="server" CssClass="form-control"></asp:textbox></TD>
												</TR>
												<TR>
													<TD>ladle Mtl.lvl</TD>
													<TD>
														<asp:textbox id="txtldlMtl_lvl" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
													<TD>LIM</TD>
													<TD>
														<asp:textbox id="txtldlInsl_metal" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
												</TR>
											</TABLE>
									
                                <table class="table">
                                            <TR>
													<TD>D13</TD>
													<TD>
														<asp:textbox id="txtOT13drag" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>D14</TD>
													<TD>
														<asp:textbox id="txtOT14drag" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>C20</TD>
													<TD>
														<asp:textbox id="txtOT20cope" runat="server" CssClass="form-control"></asp:textbox></TD>
													<TD>C21</TD>
													<TD>
														<asp:textbox id="txtOT21cope" runat="server" CssClass="form-control"></asp:textbox></TD>
                                                
                                                    </table>
                                  <table class="table">
                                                <tr><TD>Remarks</TD>
													<TD>
														<asp:textbox id="txtPreRemarks" runat="server" CssClass="form-control"></asp:textbox></TD>
												</TR></table>
                                  
							</asp:panel>
														
							
				
                
              <table class="table">
				<TR>
										<TD align="center" >
											<asp:button id="btnSave" accessKey="s" runat="server" CssClass="button button2" Text="Save" ></asp:button>&nbsp;&nbsp;&nbsp;
											<asp:button id="btnClear" accessKey="c" runat="server" CssClass="button button2" Text="Clear" CausesValidation="False"></asp:button>&nbsp;
											<asp:button id="btnExit" accessKey="e" runat="server" CssClass="button button2" Text="Exit" CausesValidation="False"></asp:button></TD>
									</TR></table>
			</asp:panel></form>
                           
                                            </div>
                </div>
            </div>
     <div class="card-footer" style="text-align:right;"><h4> MAINTAINED BY CRIS </div>
</html>
