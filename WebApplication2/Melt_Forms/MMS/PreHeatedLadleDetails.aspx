<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PreHeatedLadleDetails.aspx.vb" Inherits="WebApplication2.PreHeatedLadleDetails"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>PreHeatedLadleDetails</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

        
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
   
          <link rel="stylesheet" href="../../../StyleSheet1.css" />
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
          
			<asp:panel id="Panel1"   runat="server">
                 <div class="row">
                <div class="table-responsive">
				<table id="Table1"  class="table">
					<tr>
						<td>Ladle<hr class="prettyline"/>
								<asp:RadioButtonList id="rblType" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal"   AutoPostBack="True">
									<asp:ListItem Value="1" Selected="True">Pre - Heat Details</asp:ListItem>
									<asp:ListItem Value="2">Temperature Details</asp:ListItem>
								</asp:RadioButtonList></td>
					</tr>
				</table>
				<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
				<table id="Table8"  class="table">
				</table>
							<asp:panel id="pnlDetails" runat="server">
								<table id="Table2"  class="table">
									 </table>
											<table id="Table6"  class="table">
												<tr>
													<td>LiningNo</td>
													<td>:</td>
													<td>
														<asp:TextBox id="txtLiningNo" runat="server"  CssClass="form-control" AutoPostBack="True"></asp:TextBox></td>
													<td>LadleNo</td>
													<td>:</td>
													<td>
														<asp:Label id="lblLadleNo" runat="server"></asp:Label></td>
												</tr>
											</table>
											<table id="Table7"  class="table"  >
												<tr>
													<td>StaffNo</td>
													<td>:</td>
													<td>
														<asp:TextBox id="txtStaffNo" runat="server"  CssClass="form-control"></asp:TextBox></td>
													<td>
														<asp:RadioButtonList id="rblSet" CssClass="rbl" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
															<asp:ListItem Value="0" Selected="True">New</asp:ListItem>
															<asp:ListItem Value="1">ReHeat</asp:ListItem>
														</asp:RadioButtonList></td>
												</tr>
											</table>
										 
											<asp:DataGrid id="DataGrid2" runat="server"  CssClass="table" AutoGenerateColumns="False">
												<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
												<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
												<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
												<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
												<Columns>
													<asp:BoundColumn DataField="HandedOverDt" ReadOnly="True" HeaderText="HandedOverDt"></asp:BoundColumn>
													<asp:BoundColumn DataField="HOTime" ReadOnly="True" HeaderText="HOTime"></asp:BoundColumn>
													<asp:BoundColumn DataField="WorkSartDt" ReadOnly="True" HeaderText="WorkSartDt"></asp:BoundColumn>
													<asp:BoundColumn DataField="WSTime" ReadOnly="True" HeaderText="WSTime"></asp:BoundColumn>
													<asp:BoundColumn DataField="WorkCompDt" ReadOnly="True" HeaderText="WorkCompDt"></asp:BoundColumn>
													<asp:BoundColumn DataField="WCTime" HeaderText="WCTime"></asp:BoundColumn>
												</Columns>
												<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
											</asp:DataGrid> 
								 
								<table id="Table3"  class="table">
									<tr>
										<td>StartDateTime</td>
										<td>
											<asp:TextBox id="txtStartDate" runat="server"  CssClass="form-control" AutoPostBack="True"></asp:TextBox></td>
										<td >
											<asp:TextBox id="txtStartTime" runat="server"  CssClass="form-control" ></asp:TextBox></td>
										<td>EndDateTime</td>
										<td>
											<asp:TextBox id="txtEndDate" runat="server" CssClass="form-control"  ></asp:TextBox></td>
										<td>
											<asp:TextBox id="txtEndTime" runat="server" CssClass="form-control" ></asp:TextBox></td>
									</tr>
								</table>
								<table id="Table4"  class="table">
									<tr>
										<td>LiftingTemp</td>
										<td>
											<asp:TextBox id="txtLiftingTemp" runat="server"  CssClass="form-control"></asp:TextBox></td>
										<td>FromHeat</td>
										<td>
											<asp:TextBox id="txtFromHeat" runat="server"  CssClass="form-control"></asp:TextBox></td>
										<td>ToHeat</td>
										<td>
											<asp:TextBox id="txtToHeat" runat="server"  CssClass="form-control"></asp:TextBox></td>
									</tr>
								</table>
								<table id="Table5"  class="table">
									<tr>
										<td>&nbsp;&nbsp;Remarks</td>
										<td>
											<asp:TextBox id="txtRemark" runat="server" CssClass="form-control"></asp:TextBox></td>
									</tr>
									<tr>
										<td align="middle" colspan="2">
											<asp:Button id="btnSave" CssClass="button button2" runat="server" Text="Save"></asp:Button>
											<asp:Label id="PreHeatID" runat="server"></asp:Label></td>
									</tr>
								</table>
								<asp:DataGrid id="DataGrid1" runat="server"  CssClass="table" AutoGenerateColumns="False">
									<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
									<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
									<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
									<Columns>
										<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
										<asp:BoundColumn DataField="LiningNo" HeaderText="LiningNo"></asp:BoundColumn>
										<asp:BoundColumn DataField="LadleNo" HeaderText="LadleNo"></asp:BoundColumn>
										<asp:BoundColumn DataField="StartDate" HeaderText="StartDate"></asp:BoundColumn>
										<asp:BoundColumn DataField="StTime" HeaderText="StTime"></asp:BoundColumn>
										<asp:BoundColumn DataField="EndDate" HeaderText="EndDate"></asp:BoundColumn>
										<asp:BoundColumn DataField="EndTime" HeaderText="EndTime"></asp:BoundColumn>
										<asp:BoundColumn DataField="TotTime" HeaderText="TotTime"></asp:BoundColumn>
										<asp:BoundColumn DataField="LiftingTemp" HeaderText="LiftingTemp"></asp:BoundColumn>
										<asp:BoundColumn DataField="FromHeat" HeaderText="FromHeat"></asp:BoundColumn>
										<asp:BoundColumn DataField="ToHeat" HeaderText="ToHeat"></asp:BoundColumn>
										<asp:BoundColumn DataField="StaffNo" HeaderText="StaffNo"></asp:BoundColumn>
										<asp:BoundColumn DataField="Type" HeaderText="Type"></asp:BoundColumn>
										<asp:BoundColumn DataField="Remarks" HeaderText="Remarks"></asp:BoundColumn>
										<asp:BoundColumn DataField="PreHeatID" HeaderText="PreHeatID"></asp:BoundColumn>
										<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
									</Columns>
									<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
								</asp:DataGrid>
							</asp:panel> 
							<asp:Panel id="pnlTemp" runat="server">
								<table id="Table11" class="table">
                                    </table>
									 
											<table id="Table9"  class="table">
												<tr>
													<td>SetDateTime</td>
													<td>
														<asp:TextBox id="txtSetDate" runat="server"  CssClass="form-control" AutoPostBack="True"></asp:TextBox></td>
													<td>
														<asp:TextBox id="txtSetTime" runat="server"  CssClass="form-control"></asp:TextBox></td>
													<td>LPH</td>
													<td>
														<asp:RadioButtonList id="rblLPH" CssClass="rbl" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" >
															<asp:ListItem Value="1" Selected="True">1</asp:ListItem>
															<asp:ListItem Value="2">2</asp:ListItem>
															<asp:ListItem Value="3">3</asp:ListItem>
														</asp:RadioButtonList>&nbsp;
													</td>
												</tr>
											</table>
											<table id="Table10"  class="table">
												<tr>
													<td>LPGQty</td>
													<td>
														<asp:TextBox id="txtHSDQty" runat="server"  CssClass="form-control"></asp:TextBox></td>
													<td>SetTemp</td>
													<td>
														<asp:TextBox id="txtSetTemp" runat="server" CssClass="form-control"></asp:TextBox></td>
													<td>ActualTemp</td>
													<td>
														<asp:TextBox id="txtActualTemp" runat="server" CssClass="form-control"></asp:TextBox></td>
													<td>Staff</td>
													<td>
														<asp:TextBox id="txtUser" runat="server" CssClass="form-control"></asp:TextBox></td>
												</tr>
												<tr>
													<td>Remarks</td>
													<td colspan="7">
														<asp:TextBox id="txtRemarks" runat="server" CssClass="form-control"></asp:TextBox>
														<asp:Label id="lblPreHeatID" runat="server"></asp:Label></td>
												</tr>
												<tr>
													<td  align="middle" colspan="8">
														<asp:Button id="btnTemp" runat="server" CssClass="button button2" Text="Save Temp Details"></asp:Button></td>
												</tr>
											</table>
										 
											<asp:DataGrid id="DataGrid3" runat="server"  CssClass="table" AllowPaging="True">
												<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
												<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
												<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
												<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
												<Columns>
													<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
												</Columns>
												<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
											</asp:DataGrid> 
								<asp:DataGrid id="DataGrid4" runat="server"  CssClass="table">
									<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
									<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
									<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
									<Columns>
										<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
									</Columns>
									<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
								</asp:DataGrid>
							</asp:Panel>
                    </div>
                     </div>
			</asp:panel></form></div>
          <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
