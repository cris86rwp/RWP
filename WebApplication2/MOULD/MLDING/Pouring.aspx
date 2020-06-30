<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Pouring.aspx.vb" Inherits="WebApplication2.Pouring" %>
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
        
        <link href="../StyleSheet1.css" rel="../../stylesheet" />
                               <script>

function OnlyNumericEntry() {
        if ((event.keyCode < 48 || event.keyCode > 57)) {
        event.returnValue = false;
    }
                                   }
                                    function isNumber1(evt, element) {

                    var charCode = (evt.which) ? evt.which : event.keyCode

                      if (
                           (charCode != 45 ) && (charCode != 47 ) &&     // 
                           (charCode < 48 || charCode > 57))
                      return false;

                  return true;
            } 

      </script>
	  
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
			<asp:Panel id="Panel1"  runat="server">
				<TABLE id="Table10" class="table">
					<TR>
						<TD><h2>302FormEntry    Pouring Sheet</h2><hr class="prettyline" /> </TD>
						
				</TABLE>
				<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
				<TABLE id="Table11" class="table">				
                    <TR>
						<TD vAlign="top" align="left">
                            </TD>
					</TR>
                            </TABLE>
					<asp:panel id="pnlPour" runat="server">
								<TABLE id="Table1" class="table">
									<TR>
										<TD>HeatNumber</TD>
										<TD>
											<asp:textbox id="txtHeat_number" runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="6" ToolTip="enter 6-digit heat number(only numeric)" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
										<TD>MeltingWONo:&nbsp;</TD>
										<TD>
											<asp:label id="lblWoval" runat="server"></asp:label></TD>
										<TD>
											<asp:label id="lblWODesc" runat="server" Width="100px"></asp:label></TD>
										<TD>
											<asp:label id="lblHtNo" runat="server" Width="54px" Visible="False"></asp:label></TD>
										<TD>
											<asp:Label id="lblSlNo" runat="server" Visible="False"></asp:Label></TD>
									</TR>
								    <tr>
                                        <td>TubeInTime</td>
                                        <td>
                                            <asp:TextBox ID="txtTITDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTube_intime" runat="server" CssClass="form-control" AutoPostBack="True" BorderStyle="Groove" MaxLength="5"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>TubeOutTime</td>
                                        <td>
                                            <asp:TextBox ID="txtTOTDate" runat="server" AutoPostBack="True" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTube_outtime" runat="server" AutoPostBack="True" MaxLength="5" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>LIM</td>
                                        <td>
                                            <asp:TextBox ID="txtldlInsl_metal" runat="server" AutoPostBack="True" MaxLength="5" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
								</TABLE>
                        
													
														<TABLE id="Table9" class="table">
															<TR>
                                                                <TD>Date</TD>
																<TD>
																	<asp:textbox id="txtCastDate" runat="server" CssClass="form-control" AutoPostBack="True" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:textbox></TD>
														
																<TD>Operator</TD>
																<TD>
																	<asp:textbox id="txtOperator_mould" runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="6" ToolTip="pls enter 6-digit operator no(only numeric)" onkeypress="OnlyNumericEntry()"></asp:textbox></TD>
																<TD>SSE/JE</TD>
																<TD>
																	<asp:textbox id="txtShift_supervisor" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
																<TD>Shift</TD>
																<TD>
																	<asp:RadioButtonList id="rblGroup" runat="server" RepeatLayout="Flow"  RepeatDirection="Horizontal" CssClass="rbl">
																		<asp:ListItem Value="A">A</asp:ListItem>
																		<asp:ListItem Value="B">B</asp:ListItem>
																		<asp:ListItem Value="C">C</asp:ListItem>
																	    <asp:ListItem Selected="True">G</asp:ListItem>
																	</asp:RadioButtonList></TD>
															</TR>
														</TABLE>
												
								<asp:RadioButtonList id="rblWO" CssClass="rbl" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal"></asp:RadioButtonList>
								<TABLE id="Table2" class="table">
									<TR>
										<TD>
										        Pour Order</td>
                                        <td>
												<asp:textbox id="txtPourOrder" runat="server" CssClass="form-control" Width="233px"></asp:textbox></td> 
												<td>PourDate:</td>
												<td><asp:TextBox id="txtPourDate" runat="server" AutoPostBack="True" CssClass="form-control" Width="233px"></asp:TextBox></td> 
												<td>Pour Time:</td>
												<td><asp:textbox id="txtPourTime" runat="server" AutoPostBack="True" CssClass="form-control" MaxLength="8" Width="233px"></asp:textbox></td> 
                                                  
                                    <TR><td> Cope No:</td>
                                               <td> <asp:TextBox ID="txtCopeNo" runat="server" AutoPostBack="True" CssClass="form-control"></asp:TextBox></td>
                                                <td> CHO</td>
                                               <td> <asp:DropDownList ID="ddlcho" runat="server" AutoPostBack="True" CssClass="form-control ll">
                                                    <asp:ListItem Value="C20">C20</asp:ListItem>
                                                    <asp:ListItem>C21</asp:ListItem>
                                                </asp:DropDownList></td>
                                                <td>Cope Life:</td>
                                               <td> <asp:TextBox ID="txtCopeUsed" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox></td>
                                        </TR>
                                               <TR> <td> Cope Temp:</td>
                                               <td> <asp:TextBox ID="txtCHOtemp" runat="server" CssClass="form-control"></asp:TextBox></td>.
                                               <td> Baking Temp:</td>
												<td><asp:textbox id="txtbakectemp" runat="server" CssClass="form-control"></asp:textbox></td>
                                                   <td> Cope Spray Temp :</td>
                                                <td><asp:TextBox ID="txtsprayctemp" runat="server" CssClass="form-control"></asp:TextBox></td>
                                               
										</TR>
									
									<TR>
										<TD>DragNo:</td>

                                            <td><asp:TextBox ID="txtDragNo" runat="server" AutoPostBack="True" CssClass="form-control"></asp:TextBox></td>
                                            <td> DHO</td>
                                            <td><asp:DropDownList ID="ddldho" runat="server" AutoPostBack="True" CssClass="form-control ll">
                                                <asp:ListItem Value="D13"></asp:ListItem>
                                                <asp:ListItem>D14</asp:ListItem>
                                            </asp:DropDownList></td>
                                           <td>EngrNo:</td>
                                            <td><asp:TextBox ID="txtEngrNo" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox></td>
                                          </TR>
                                       <TR> <td>Drag Life:</td>
                                            <td><asp:TextBox ID="txtDragUsed" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox></td>
                                            <td> Drag Temp:</td>
                                            <td><asp:TextBox ID="txtDHOtemp" runat="server" CssClass="form-control"></asp:TextBox></td>
                                            <td> Ingate Life:</td>
                                          
                                            <td><asp:TextBox ID="txtIngateUsed" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox></td>
                                           </TR>
                                        <TR><td> Drag Spray Temp:</td>
                                            <td><asp:TextBox ID="txtspraydtemp" runat="server" CssClass="form-control"></asp:TextBox></td>
                                           <td> Split Time:</td>
                                           <td> <asp:TextBox ID="txtSplitTime" runat="server" AutoPostBack="True"  MaxLength="5" CssClass="form-control">09:30</asp:TextBox></td>
                                            
									</TR>
									<TR>
										<TD align="middle" colspan="6">
											<asp:radiobuttonlist id="rdoByPass" tabIndex="-1" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal" AutoPostBack="True" Font-Size="Medium" Font-Bold="True" ForeColor="Red">
												<asp:ListItem Value="No ByPass" Selected="True">No ByPass</asp:ListItem>
												<asp:ListItem Value="6&amp;7">Cope &amp; Drag Bypass</asp:ListItem>
												<asp:ListItem Value="7">Drag ByPass</asp:ListItem>
											</asp:radiobuttonlist>
                                            <br />
                                        </TD>
									</TR>
									<TR>
										<TD>F/C:</TD>
                                           <td> <asp:DropDownList ID="cboFastContinuous" CssClass="form-control ll" runat="server">
                                                <asp:ListItem Selected="True" Value="Continuous">C</asp:ListItem>
                                                <asp:ListItem Value="Fast">F</asp:ListItem>
                                            </asp:DropDownList></td>
                                           <td> C Rate:</td>
                                           <td> <asp:TextBox ID="txtControledRate" runat="server" CssClass="form-control">1.6</asp:TextBox></td>
                                            <td>F Rate:</td>
											<td><asp:TextBox id="txtFastRate" runat="server" CssClass="form-control">1.26</asp:TextBox></td>
									</TR>
									<TR>
										<TD>Rej Code/Sts :</TD> 
											
											<td><asp:textbox id="txtRejCode" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></td> 
											<td>Remarks</td>
											<td><asp:textbox id="txtRemarks" runat="server" CssClass="form-control"></asp:textbox></td>
											<asp:Label id="lblNotInMR" runat="server" Visible="False"></asp:Label> 
									</TR>
									<TR>
										<TD align="middile" colspan="6">
											<asp:button id="btnSave" runat="server" ForeColor="White" CssClass="button button2" Text="Save"></asp:button>
											<asp:button id="btnClear" runat="server" ForeColor="White" CssClass="button button2" Text="Clear" CausesValidation="False"></asp:button>
											<asp:button id="btnExit" runat="server" ForeColor="White" CssClass="button button2" Text="Exit"  CausesValidation="False"></asp:button></td>
									</TR>
								    <tr>
                                        <td>
                                            <asp:Label ID="lblUser" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
								</TABLE>
							</asp:panel>
							<asp:datagrid id="grdPouring" runat="server" CssClass="table" BackColor="LightGray" Font-Size="Small" AutoGenerateColumns="False" CellSpacing="1" CellPadding="1" GridLines="None">
								<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
								<ItemStyle Font-Size="Small"></ItemStyle>
								<HeaderStyle ForeColor="White" BackColor="Navy"></HeaderStyle>
								<Columns>
									<asp:BoundColumn DataField="pouring_order" HeaderText="PO"></asp:BoundColumn>
									<asp:BoundColumn DataField="PourTime" HeaderText="PTime"></asp:BoundColumn>
									<asp:BoundColumn DataField="cope_number" ReadOnly="True" HeaderText="Cope"></asp:BoundColumn>
									<asp:BoundColumn DataField="cope_used" ReadOnly="True" HeaderText="CpL"></asp:BoundColumn>
									<asp:BoundColumn DataField="CHONO" HeaderText="CHO"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="CHOTMP" HeaderText="Cope Temp."></asp:BoundColumn>
                                    <asp:BoundColumn DataField="BCTMP" HeaderText="Bake Temp."></asp:BoundColumn>
                                    <asp:BoundColumn DataField="SCTMP" HeaderText="Cope Spray Temp."></asp:BoundColumn>
									<asp:BoundColumn DataField="drag_number" ReadOnly="True" HeaderText="Drag"></asp:BoundColumn>
									<asp:BoundColumn DataField="engraved_number" ReadOnly="True" HeaderText="Whl">
										<ItemStyle Font-Bold="True" ForeColor="#FF3333"></ItemStyle>
									</asp:BoundColumn>
									<asp:BoundColumn DataField="drag_used" ReadOnly="True" HeaderText="DrL"></asp:BoundColumn>
									<asp:BoundColumn DataField="DHONO" HeaderText="DHO"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="DHOTMP" HeaderText="Drag Temp."></asp:BoundColumn>
                                    <asp:BoundColumn DataField="SDTMP" HeaderText="Drag Spray Temp."></asp:BoundColumn>
									<asp:BoundColumn DataField="ingate_used" ReadOnly="True" HeaderText="IngL"></asp:BoundColumn>
									<asp:BoundColumn DataField="SplitTime" ReadOnly="True" HeaderText="STime"></asp:BoundColumn>
									<asp:BoundColumn DataField="whether_f_c" ReadOnly="True" HeaderText="F/C"></asp:BoundColumn>
									<asp:BoundColumn DataField="CRate" ReadOnly="True" HeaderText="CRate"></asp:BoundColumn>
									<asp:BoundColumn DataField="FRate" ReadOnly="True" HeaderText="FRate"></asp:BoundColumn>
									<asp:BoundColumn DataField="rejection_code" ReadOnly="True" HeaderText="Rej"></asp:BoundColumn>
									<asp:BoundColumn DataField="remarks" ReadOnly="True" HeaderText="Remarks"></asp:BoundColumn>
									<asp:BoundColumn DataField="WhlType" ReadOnly="True" HeaderText="WhlType"></asp:BoundColumn>
									<asp:ButtonColumn Visible="False" Text="Delete" HeaderText="Delete" CommandName="Delete"></asp:ButtonColumn>
									<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
									<asp:BoundColumn DataField="slno" HeaderText="slno"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="Sts" HeaderText="Sts"></asp:BoundColumn>
								</Columns>
								<PagerStyle Font-Size="Small"></PagerStyle>
							</asp:datagrid>
				
			</asp:Panel>
		</form>
                        
                                            </div>
                </div>
            </div>
     <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>

	</body>
</html>

