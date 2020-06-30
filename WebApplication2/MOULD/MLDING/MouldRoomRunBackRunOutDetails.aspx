<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MouldRoomRunBackRunOutDetails.aspx.vb" Inherits="WebApplication2.MouldRoomRunBackRunOutDetails" %>
<!DOCTYPE HTML >
<HTML>
	<HEAD runat="server">
		<title>MouldRoomRunBackRunOutDetails</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">

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
	</HEAD>
	<body >
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
				<TABLE id="Table3" class="table">
					</table>

							<TABLE id="Table1" class="table">
								<TR>
									<TD colSpan="3"><FONT size="5">Run back &amp; Run out Rejected Wheel Details</FONT><hr class="prettyline" /></TD>
								</TR>
								<TR>
									<TD colSpan="3">
										<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
								</TR>
							</TABLE>
							<TABLE id="Table2" class="table">
								<TR>
									<TD>Date</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
									<TD>Status</TD>
									<TD>:</TD>
									<TD>
										<asp:Label id="lblStatus" runat="server"></asp:Label>&nbsp;</TD>
								</TR>
								<TR>
									<TD>Heat Number</TD>
									<TD>:</TD>
									<TD>
										<asp:Label id="lblHeat" runat="server"></asp:Label>&nbsp;</TD>
									<TD>Wheel Number</TD>
									<TD>:</TD>
									<TD>
										<asp:Label id="lblWheel" runat="server"></asp:Label>&nbsp;</TD>
								</TR>
								<TR>
									<TD>Pouring Order</TD>
									<TD>:</TD>
									<TD>
										<asp:Label id="lblPO" runat="server"></asp:Label>&nbsp;</TD>
									<TD>Pouring Operator</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtPourOperator" runat="server" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>Plunger Pressure</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtPlungerPr" runat="server" CssClass="form-control"></asp:TextBox></TD>
									<TD>CopeCentringRemarks</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtCentringRemarks" runat="server" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>Pouring Closedown Remarks</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtCloseDownRemarks" runat="server" CssClass="form-control"></asp:TextBox></TD>
									<TD>SeatingRemarks</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtSeatingRemarks" runat="server" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>Pouring TubeSink Remarks</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtTubeSinkRemarks" runat="server" CssClass="form-control"></asp:TextBox></TD>
									<TD>PrgCraneRemarks</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtPrgCraneRemarks" runat="server" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>Cope Number</TD>
									<TD>:</TD>
									<TD>
										<asp:Label id="lblCope" runat="server"></asp:Label>&nbsp;</TD>
									<TD>CTC Operator</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtCTCOperator" runat="server" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>Dome Disc Fitted</TD>
									<TD>:</TD>
									<TD>
										<asp:RadioButtonList id="rblDD" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
											<asp:ListItem Value="Y">Yes</asp:ListItem>
											<asp:ListItem Value="N" Selected="True">No</asp:ListItem>
										</asp:RadioButtonList></TD>
									<TD>StopperPipeCondition</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtPipeCondition" runat="server" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>CopeConditionRemarks</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtCopeConditionRemarks" runat="server" CssClass="form-control"></asp:TextBox></TD>
									<TD>&nbsp;</TD>
									<TD>&nbsp;</TD>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD>Drag Number</TD>
									<TD>:</TD>
									<TD>
										<asp:Label id="lblDrag" runat="server"></asp:Label>&nbsp;</TD>
									<TD>DT Operator</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtDTOperator" runat="server" CssClass="form-control"></asp:TextBox></TD>
								</TR>

								<TR>
									<TD>DragConditionRemarks</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtDragConditionRemarks" runat="server" CssClass="form-control"></asp:TextBox></TD>
									<TD>Ingate Reamer Operator</TD>
									<TD>:</TD>
									<TD><asp:TextBox ID="txtIngateReamerOperator" runat="server" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>Overall Remarks</TD>
									<TD>:</TD>
									<TD colSpan="4">
										<asp:TextBox id="txtRemarks" runat="server" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="middle" colSpan="6">
										<asp:Button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:Button></TD>
								</TR>
							</TABLE>
						
						
							<asp:DataGrid id="dgXCWheels" runat="server" AutoGenerateColumns="False" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966" CssClass="table">
								<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
								<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
								<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
								<Columns>
									<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
									<asp:BoundColumn DataField="Ht" ReadOnly="True" HeaderText="Ht"></asp:BoundColumn>
									<asp:BoundColumn DataField="Whl" ReadOnly="True" HeaderText="Whl"></asp:BoundColumn>
									<asp:BoundColumn DataField="Sts" ReadOnly="True" HeaderText="Sts"></asp:BoundColumn>
									<asp:BoundColumn DataField="PO" ReadOnly="True" HeaderText="PO"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="PourOperator" ReadOnly="True" HeaderText="PourOperator"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="PlungerPr" ReadOnly="True" HeaderText="PlungerPr"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="CentringRemarks" ReadOnly="True" HeaderText="CentringRemarks"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="CTCOperator" ReadOnly="True" HeaderText="CTCOperator"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="DomeDisc" ReadOnly="True" HeaderText="DomeDisc"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="PipeCondition" ReadOnly="True" HeaderText="PipeCondition"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="DTOperator" ReadOnly="True" HeaderText="DTOperator"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="Remarks" ReadOnly="True" HeaderText="Remarks"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="drag_number" ReadOnly="True" HeaderText="drag_number"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="cope_number" ReadOnly="True" HeaderText="cope_number"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="CloseDownRemarks" ReadOnly="True" HeaderText="CloseDownRemarks"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="SeatingRemarks" ReadOnly="True" HeaderText="SeatingRemarks"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="TubeSinkRemarks" ReadOnly="True" HeaderText="TubeSinkRemarks"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="PrgCraneRemarks" ReadOnly="True" HeaderText="PrgCraneRemarks"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="DragConditionRemarks" ReadOnly="True" HeaderText="DragConditionRemarks"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="CopeConditionRemarks" ReadOnly="True" HeaderText="CopeConditionRemarks"></asp:BoundColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
							</asp:DataGrid>
				
				<asp:DataGrid id="dgSavedWheels" runat="server" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC">
					<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
					<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
					<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
				</asp:DataGrid>
			</asp:panel></div></div></form></div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
