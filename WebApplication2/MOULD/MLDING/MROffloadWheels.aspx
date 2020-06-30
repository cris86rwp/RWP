<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MROffloadWheels.aspx.vb" Inherits="WebApplication2.MROffloadWheels" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>MROffloadWheels</title>
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
        <link rel="stylesheet" href="../../StyleSheet1.css" />

        
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
<!--/.Navbar -->
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
			<asp:panel id="Panel1" runat="server">
				<table id="Table1" class="table">
					<TR>
						<TD>MR Offloaded Wheels<hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD>
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
					</TR>
					<TR>
						<TD colSpan="1" rowSpan="1">
							<asp:RadioButtonList id="rblMode" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal"  AutoPostBack="True">
								<asp:ListItem Selected="True" Value="2">Many Heats</asp:ListItem>
								<asp:ListItem Value="1">Single Wheel</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
				</table>

				<table id="Table6" class="table"></table>
					
							<asp:Panel id="pnlOne" runat="server">
								<table id="Table2" class="table">
									<TR>
										<TD>HeatNo</TD>
										<TD>:</TD>
										<TD>
											<asp:TextBox id="txtHeatNo" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
										<TD>WheelNo</TD>
										<TD>:</TD>
										<TD>
											<asp:TextBox id="txtWheelNo" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
									</TR>
									<TR>
										<TD align="middle" colSpan="6">
											<asp:Button id="btnDelete" runat="server" CssClass="button button2" Text="Delete"></asp:Button></TD>
									</TR>
								</table>
							</asp:Panel>
				
					<table id="Table3" class="table">
				</table>
				<table id="Table19" class="table">
					<TR>
						<TD>SIC</TD>
						<TD>
							<asp:TextBox id="txtSIC" runat="server" CssClass="form-control"></asp:TextBox></TD>
						<TD>PresentStatus</TD>
						<TD>
							<asp:TextBox id="txtPresentSts" runat="server" CssClass="form-control"></asp:TextBox></TD>
						<TD>PresentStsDate</TD>
						<TD>
							<asp:TextBox id="txtPresentDate" runat="server" CssClass="form-control"></asp:TextBox></TD>
						<TD>PresentStsSIC</TD>
						<TD>
							<asp:TextBox id="txtPresentSIC" runat="server" CssClass="form-control"></asp:TextBox></TD>
						<TD>Remarks</TD>
						<TD>
							<asp:TextBox id="txtRemarks" runat="server" CssClass="form-control"></asp:TextBox></TD>
					</TR>
				</table>
				<asp:RadioButtonList id="rblType" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal"></asp:RadioButtonList>
				<table id="Table17" class="table">
					<TR>
						<TD>
							<asp:RadioButtonList id="rblOffloadCode" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl"></asp:RadioButtonList></TD>
					</TR>
				</table>
				<table id="Table4" class="table">
					<TR>
						<TD align="middle" rowSpan="1">
							<asp:Button id="btnSave"  runat="server" Text="Save" CssClass="button button2"></asp:Button></TD>
					</TR>
				</table>

						
							<asp:panel id="pnlTwo" runat="server">
								<table id="Table14" class="table">
									<tr><td align="left">
										Date : <asp:TextBox id="txtHeatDt" runat="server" AutoPostBack="True" CssClass="form-control" Width="300px"></asp:TextBox>
                                        <td align="left">
                                            Shift :
											<br />
											<asp:RadioButtonList id="rblShift" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl"  AutoPostBack="True">
												<asp:ListItem Value="A" Selected="True">A</asp:ListItem>
												<asp:ListItem Value="B">B</asp:ListItem>
												<asp:ListItem Value="C">C</asp:ListItem>
											</asp:RadioButtonList></td></td></tr>
									</table>
									
									
											<table id="Table15" class="table">
												<TR>
													<TD>
														<asp:Label id="Label1" runat="server"></asp:Label></TD>
											    </TR>
												<TR>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData1" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False" Height="73px" BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData2" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
												</TR>
											</TABLE>
										
											<table id="Table7" class="table">
												<TR>
													<TD vAlign="top" align="middle" colSpan="2">
														<asp:Label id="Label2" runat="server"></asp:Label></TD>
												</TR>
												<TR>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData3" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData4" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
												</TR>
											</table>
										
											<table id="Table13" class="table">
												<TR>
													<TD vAlign="top" align="middle" colSpan="2">
														<asp:Label id="Label3" runat="server"></asp:Label></TD>
												</TR>
												<TR>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData5" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData6" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
												</TR>
											</table>
										
											<table id="Table8" class="table">
												<TR>
													<TD vAlign="top" align="middle" colSpan="2">
														<asp:Label id="Label4" runat="server"></asp:Label></TD>
												</TR>
												<TR>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData7" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData8" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
												</TR>
											</table>
										
										
											<table id="Table9" class="table">
												<TR>
													<TD vAlign="top" align="middle" colSpan="2">
														<asp:Label id="Label5" runat="server"></asp:Label></TD>
												</TR>
												<TR>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData9" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData10" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
												</TR>
											</table>
										
									
											<table id="Table10" class="table">
												<TR>
													<TD vAlign="top" align="middle" colSpan="2">
														<asp:Label id="Label6" runat="server"></asp:Label></TD>
												</TR>
												<TR>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData11" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData12" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
												</TR>
											</table>
										
											<table id="Table11" class="table">
												<TR>
													<TD vAlign="top" align="middle" colSpan="2">
														<asp:Label id="Label7" runat="server"></asp:Label></TD>
												</TR>
												<TR>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData13" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData14" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False" BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
												</TR>
											</table>

											<table id="Table12" class="table">
												<TR>
													<TD vAlign="top" align="middle" colSpan="2">
														<asp:Label id="Label8" runat="server"></asp:Label></TD>
												</TR>
												<TR>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData15" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData16" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
												</TR>
											</table>
										
											<table id="Table18" class="table">
												<TR>
													<TD vAlign="top" align="middle" colSpan="2">
														<asp:Label id="Label9" runat="server"></asp:Label></TD>
												</TR>
												<TR>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData17" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
													<TD vAlign="top" align="left">
														<asp:DataGrid id="dgData18" runat="server" CssClass="table" BackColor="White" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" >
															<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
															<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
															<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
															<Columns>
																<asp:TemplateColumn>
																	<ItemTemplate>
																		<asp:CheckBox id="chkWheel" runat="server" CssClass="form-control"></asp:CheckBox>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:BoundColumn DataField="Wh" ReadOnly="True" HeaderText="Wh"></asp:BoundColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
														</asp:DataGrid></TD>
												</TR>
											</table>
										
								<table id="Table16" class="table">
								</table>
							</asp:panel>
					
								<div class="table-responsive"><asp:DataGrid id="DataGrid1" runat="server" BackColor="White" CssClass="table">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid></div>
			</asp:panel>
                     </div></div></form>
                     </div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
