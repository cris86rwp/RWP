<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProdCalcinedLimeDetails.aspx.vb" Inherits="WebApplication2.ProdCalcinedLimeDetails" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head runat="server">
		<title>ProdCalcinedLimeDetails</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR" />
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE" />
		<meta content="JavaScript" name="vs_defaultClientScript" />
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../StyleSheet1.css" />
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
                     	<asp:panel id="Panel1"  runat="server">
            <div class ="row">
                <div class="table-responsive">
	
		
				<table id="Table1" class="Table" border="0">
					<tr>
						<td colspan="3" align="center" >
							<asp:label id="lblConsignee"  runat="server" Font-Bold="True"></asp:label>&nbsp;
                            <STRONG>Production CalcinedLime Receipt Details</STRONG><hr class="prettyline" /></td>
					</tr>
					<tr>
						<td>
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></td>
					</tr>
				</table>
				<table id="Table2" class="table" border="0">
					<tr>
						<td>DCNo</td>
						<td>:</td>
						<td>
							<asp:textbox id="txtDCNo" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></td>
						<td>DBRNo</td>
						<td>
							<asp:Label id="lblDBRNo" runat="server"></asp:Label>&nbsp;</td>
						<td>YearSl</td>
						<td>
							<asp:TextBox id="txtYearSl" runat="server" CssClass="form-control" ></asp:TextBox></td>
					</tr>
					<tr>
						<td>ReceiptDate</td>
						<td>:</td>
						<td>
							<asp:textbox id="txtReceiptDate" runat="server" CssClass="form-control"  AutoPostBack="True"></asp:textbox></td>
						<td>RecQty</td>
						<td colspan="3">
							<asp:TextBox id="txtRecQty" runat="server" CssClass="form-control" ></asp:TextBox></td>
					</tr>
					<tr>
						<td>FromHeat</td>
						<td>:</td>
						<td>
							<asp:textbox id="txtFromHeat" runat="server" CssClass="form-control"  AutoPostBack="True"></asp:textbox></td>
						<td>LabNo</td>
						<td colspan="3">
							<asp:Label id="lblLabNo" runat="server"></asp:Label>&nbsp;</td>
					</tr>
					<tr>
						<td>ToHeat</td>
						<td>:</td>
						<td>
							<asp:textbox id="txtToHeat" runat="server" CssClass="form-control" ></asp:textbox></td>
						<td>UsedDate</td>
						<td colspan="3">
							<asp:TextBox id="txtUsedDate" runat="server" CssClass="form-control" ></asp:TextBox></td>
					</tr>
					<tr>
						<td>NoOfBags</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtNoOfBags" runat="server" CssClass="form-control" ></asp:TextBox></td>
						<td>Result</td>
						<td colspan="3">
							<asp:RadioButtonList id="rblResult" runat="server"   RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl">
								<asp:ListItem Value="0">Passed</asp:ListItem>
								<asp:ListItem Value="1">Failed</asp:ListItem>
							</asp:RadioButtonList></td>
					</tr>
				</table>
               
                  
				
							<asp:DataGrid id="DataGrid2" CssClass="table" runat="server"  BackColor="White">
								<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
								<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
								<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
								<Columns>
									<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid>
                       
               
							<asp:DataGrid id="DataGrid3" CssClass="table" runat="server" ForeColor="Black" BackColor="White"  GridLines="Vertical">
								<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#000099"></SelectedItemStyle>
								<AlternatingItemStyle BackColor="#CCCCCC"></AlternatingItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="Black"></HeaderStyle>
								<FooterStyle BackColor="#CCCCCC"></FooterStyle>
								<Columns>
									<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#999999"></PagerStyle>
							</asp:DataGrid>	
				
				<table id="Table4" class="table" border="0">
					<tr>
						<td>Remarks</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtRemarks" runat="server" CssClass="form-control" ></asp:TextBox></td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<asp:Button id="btnSave" cssclass="button button2" runat="server" Text="Save"></asp:Button>
							<asp:Label id="lblSl" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<td  colspan="3"  align="center">Saved Data Grid :</td>
					</tr>
				</table>
                  
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table" BackColor="White"  AutoGenerateColumns="False">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
						<asp:BoundColumn DataField="SlNo" ReadOnly="True" HeaderText="SlNo"></asp:BoundColumn>
						<asp:BoundColumn DataField="YearSl" ReadOnly="True" HeaderText="YearSl"></asp:BoundColumn>
						<asp:BoundColumn DataField="DCNo" ReadOnly="True" HeaderText="DCNo"></asp:BoundColumn>
						<asp:BoundColumn DataField="ReceiptDt" ReadOnly="True" HeaderText="ReceiptDt"></asp:BoundColumn>
						<asp:BoundColumn DataField="dbr_number" ReadOnly="True" HeaderText="dbr_number"></asp:BoundColumn>
						<asp:BoundColumn DataField="LabNo" ReadOnly="True" HeaderText="LabNo"></asp:BoundColumn>
						<asp:BoundColumn DataField="RecQty" ReadOnly="True" HeaderText="RecQty"></asp:BoundColumn>
						<asp:BoundColumn DataField="FromHeat" ReadOnly="True" HeaderText="FromHeat"></asp:BoundColumn>
						<asp:BoundColumn DataField="ToHeat" ReadOnly="True" HeaderText="ToHeat"></asp:BoundColumn>
						<asp:BoundColumn DataField="Bags" ReadOnly="True" HeaderText="Bags"></asp:BoundColumn>
						<asp:BoundColumn DataField="Result" ReadOnly="True" HeaderText="Result"></asp:BoundColumn>
						<asp:BoundColumn DataField="Remarks" ReadOnly="True" HeaderText="Remarks"></asp:BoundColumn>
						<asp:BoundColumn DataField="DumpNo" ReadOnly="True" HeaderText="DumpNo"></asp:BoundColumn>
						<asp:BoundColumn DataField="SupplierName" ReadOnly="True" HeaderText="SupplierName"></asp:BoundColumn>
						<asp:BoundColumn DataField="Sl" ReadOnly="True" HeaderText="Sl"></asp:BoundColumn>
						<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
                   
				</asp:DataGrid>
                            </div></div> 
                               
			</asp:panel></form>
                    </div>
                <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
