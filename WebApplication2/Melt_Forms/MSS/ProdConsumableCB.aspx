<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProdConsumableCB.aspx.vb" Inherits="WebApplication2.ProdConsumableCB" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>ProdConsumableCB</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
		<meta name="vs_defaultClientScript" content="JavaScript"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

        
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />

   
          <link rel="stylesheet" href="../StyleSheet1.css"/>
	   <%-- <style type="text/css">
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
                height: 52px;
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
			<asp:Panel id="Panel1" runat="server">
                  <div class ="row">
                <div class="table-responsive">
				<table id="Table1" class="table">
					<tr>
						<td>
							<asp:label id="lblConsignee" runat="server"></asp:label>&nbsp;Production 
							Consumables&nbsp;Closing Balance<hr class="prettyline" /></td>
					</tr>
					<tr>
						<td>
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></td>
					</tr>
				</table>
				<table id="Table2" class="table">
					<tr>
						<td >PlNumber</td>
                        <%--style="WIDTH: 71px; HEIGHT: 12px"--%>
						<td >:</td>
                  <%--      style="WIDTH: 1px; HEIGHT: 12px"--%>
						<td>
                          <%--  style="WIDTH: 87px; HEIGHT: 12px">--%>
							<asp:DropDownList id="ddlPLs" runat="server" CssClass="form-control" AutoPostBack="True"></asp:DropDownList></td>
						<td>
                            <%--style="HEIGHT: 12px"--%>
							<asp:Label id="lblPLDescr"  runat="server"></asp:Label></td>
					</tr>
					<tr>
						<td>CBasOn</td>
						<td>:</td>
						<td colspan="2">
							<asp:TextBox id="txtCBasOn" runat="server" CssClass="form-control" AutoPostBack="True" ></asp:TextBox></td>
					</tr>
					<tr>
						<td >CB</td>
						<td>:</td>
						<td  colspan="2">
							<asp:TextBox id="txtCB" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></td>
					</tr>
				</table>
               
				<asp:DataGrid id="DataGrid2" runat="server" CssClass="table" >
                    <%--CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC"--%>
					<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
					<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
					<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
				</asp:DataGrid>
                   
				<table id="Table3" class="table">
					<tr>
						<td>Remarks</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtRemarks" CssClass="form-control" runat="server" ></asp:TextBox></td>
					</tr>
					<tr>
						<td colspan="3">
							<asp:CheckBox id="chkCum" runat="server"   Text="Update Yearly Cummulative Values"></asp:CheckBox></td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<asp:Button id="btnSave" CssClass="button button2" runat="server" Text="Save"></asp:Button></td>
					</tr>
					<tr>
						<td align="center" colspan="3">Latest CB details :</td>
					</tr>
				</table>
				<asp:DataGrid id="DataGrid1" CssClass="table" runat="server" >
                  <%--  CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966"--%>
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
                       </div>
             </div>
			</asp:Panel>&nbsp;
		</form>
                    </div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
             
	</body>
</html>
