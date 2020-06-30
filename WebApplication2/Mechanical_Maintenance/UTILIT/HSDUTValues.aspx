<%@ Page Language="vb" AutoEventWireup="false" Codebehind="HSDUTValues.aspx.vb" Inherits="WebApplication2.HSDUTValues" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>LPG and BMCG Values</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
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

	    <style type="text/css">
            .auto-style1 {
                height: 51px;
                width: 837px;
            }
            .auto-style37 {
                width: 879px;
            }
            .auto-style41 {
                width: 479px;
            }
            .auto-style42 {
                height: 45px;
                width: 479px;
            }
            .auto-style46 {
                height: 51px;
                width: 140px;
            }
            .auto-style52 {
                width: 321px;
            }
            .auto-style53 {
                width: 837px;
            }
            .auto-style54 {
                width: 140px;
            }
            .auto-style55 {
                width: 556px;
            }
            .auto-style56 {
                width: 72px;
            }
            .auto-style57 {
                width: 83px;
            }
        </style>

	</HEAD>
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
		<form id="Form1" method="post" runat="server">
             <div class="row">
    
                  <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                <div class="table-responsive">
			<asp:panel id="Panel3" runat="server">
			<TABLE id="Table2" class="Table">
				<TR>
					<TD vAlign="top" align="left" class="auto-style52">
                        </TR>
              
					      <TR>
								<TD class="auto-style52" ><FONT size="5">LPG and Cutting Gas Values</FONT><hr class="auto-style55" /></TD>
                       
							</TR>
                      </table></asp:panel>
						
                    <asp:Panel id="Panel5" runat="server">
					              <table id="table7" class="table">
              
                	<TR>
								<TD class="auto-style57">Date :</TD>
                        <td> <asp:TextBox id="txtDate" runat="server" AutoPostBack="True" Width="300px" CssClass="form-control" ></asp:TextBox></TD>
                                </TR>
                                <TR>
								<TD class="auto-style57"><asp:CheckBox id="CheckBox1" runat="server" AutoPostBack="True" Text="ReSet" CssClass="checkbox" Width="300px"></asp:CheckBox></TD>
                                </TR>
                    </table></asp:panel>
						
                    <asp:Panel id="Panel7" runat="server">
					              <table id="table6" class="table">

							<TR>
                               
								<TD  class="auto-style42">
									<asp:RadioButtonList id="RadioButtonList1" runat="server" CSSClass="rbl" RepeatDirection="horizontal" RepeatLayout="Flow" AutoPostBack="True">
											<asp:ListItem Value="LPG" Selected="True">LPG</asp:ListItem>
								            <asp:ListItem Value="BMCG">BMCG</asp:ListItem>
										   </asp:RadioButtonList>
                                    </TD>
                                   </TR> 

                                   <tr>
                               
								<TD  class="auto-style42">
								 <asp:RadioButtonList ID="rblArea" runat="server" AutoPostBack="True" CSSClass="rbl" RepeatDirection="horizontal" RepeatLayout="Flow">
                                        <asp:ListItem Value="LPH" Selected="True">LPH</asp:ListItem>
                                        <asp:ListItem Value="NF">NF</asp:ListItem>
                                        <asp:ListItem Value="DF">DF</asp:ListItem>
                                        <asp:ListItem Value="SP">SP</asp:ListItem>
                                        <asp:ListItem Value="TANK1">TANK1</asp:ListItem>
                                        <asp:ListItem Value="TANK2">TANK2</asp:ListItem>
                                        <asp:ListItem Value="Receipt-No.ofWag">Receipt-No.ofWag</asp:ListItem>
                                        <asp:ListItem Value="Receipt-QtyinKgs">Receipt-QtyinKgs</asp:ListItem>
                                    </asp:RadioButtonList>
                                   </td>
                                       </tr>
                                <tr>
                                   <td  class="auto-style42">
                                       <asp:RadioButtonList id="RadioButtonList2" runat="server" AutoPostBack="True" CSSClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
									 <asp:ListItem Value="HC1" Selected="True">HC1</asp:ListItem>
									 	<asp:ListItem Value="HC2">HC2</asp:ListItem>
										<asp:ListItem Value="HC3">HC3</asp:ListItem>
										<asp:ListItem Value="MRS">MRS</asp:ListItem>
                                        <%--<asp:ListItem Value="NF">NF</asp:ListItem>
										<asp:ListItem Value="DF">DF</asp:ListItem>
										<asp:ListItem Value="SP">SP</asp:ListItem>--%>
										<%--<asp:ListItem Value="TANK1">TANK1</asp:ListItem>
                                        <asp:ListItem Value="TANK2">TANK2</asp:ListItem>--%>
									  <%--  <asp:ListItem Value="Receipt-No.ofWag">Receipt-No.ofWag</asp:ListItem>--%>
										<asp:ListItem Value="Receipt-QtyinKgs">Receipt-QtyinKgs</asp:ListItem>
                                        <asp:ListItem Value="No_of_Cylnd">No_of_Cylnd</asp:ListItem>
									</asp:RadioButtonList>
                              
                                </TD>
                                   </TR> 
                    

                         <TR>
								<TD class="auto-style41" >
									<asp:Label id="Label1" runat="server" ForeColor="Red"></asp:Label></TD>
							</TR>
									
							<TR>
						
							<td>
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>    </td>
                               </TR>
            </table> </asp:panel>

                <asp:Panel id="Panel4" runat="server">
					              <table id="table4" class="table">
							<TR>
								<TD class="auto-style46">Value :</TD>
								
								<TD class="auto-style1">
									<asp:TextBox id="txtValue" runat="server" AutoPostBack="True" Width="300px" CssClass="form-control"></asp:TextBox></TD>
							</TR>
							<%--<TR>
								<TD colSpan="2">
									<asp:Panel id="Panel2" runat="server">&nbsp;Present Meter MaxValue : 
                                       <asp:TextBox id="txtMax" runat="server" Width="62px"></asp:TextBox>&nbsp;Next 
                                           Meter Initial Reading : 
                                           <asp:TextBox id="txtInitial" runat="server" Width="63px"></asp:TextBox></asp:Panel></TD>
						     	</TR>--%>
                	     <TR>
                             	
			
								<TD class="auto-style54">Challan Number :</TD>
							    <TD class="auto-style53">
									<asp:TextBox id="txtChallanNumber" runat="server" AutoPostBack="True" Width="300px" CssClass="form-control"></asp:TextBox></TD>
							</TR>
							
							
                	         <TR>
								<TD class="auto-style54">Challan Date  : </td><td class="auto-style53"><asp:TextBox id="txtChallanDate" runat="server" AutoPostBack="True" Width="300px"  CssClass="form-control"></asp:TextBox>
							</TD>
                                    </TR>
							
							<TR>
								<TD class="auto-style54">Remarks :</TD>
								<TD class="auto-style53">
									<asp:TextBox id="txtRemarks" runat="server" AutoPostBack="True" Width="300px" CssClass="form-control"></asp:TextBox></TD>
							
								</TR>
                                      </table></asp:panel>
						
                    <asp:Panel id="Panel6" runat="server">
					              <table id="table5" class="table">
				
                    <TR>
                                		
								<TD vAlign="top" align="middle">
									<asp:Button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:Button></TD>
							</TR>
					
				<TR>
					<TD vAlign="top" align="left" class="auto-style37"><asp:datagrid id="dgMeterRdg" runat="server" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966">
							<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
							<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
							<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
							<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
						</asp:datagrid></TD>
				</TR>
				<TR>
					<TD vAlign="top" align="left" rowSpan="1">
						<asp:Panel id="Panel1" runat="server">
							<asp:DataGrid id="dgSavedData" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
								<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
								<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
								<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid>
						</asp:Panel></TD>
				</TR>
			</TABLE>
                </asp:panel>
                    </div>
                 <br />
      </div>
            <div class="row">
                </div>
		</form>
            </div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRISbody>
</HTML>
