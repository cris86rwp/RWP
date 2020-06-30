<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MouldMachiningEdit.aspx.vb" Inherits="WebApplication2.MouldMachiningEdit" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.0 transitional//EN">
<html>
	<head runat="server">
		<title>MouldMachiningEdit</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR" /> 
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE" />
		<meta content="JavaScript" name="vs_defaultClientScript" />
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
        <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../StyleSheet1.css" />

	</head>

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
        <script>

    function isInputNumber(evt) {

                    var ch = String.fromCharCode(evt.which);
        if (!(/[0-9]/.test(ch)))
        {
        evt.preventDefault();
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
             function ValidateAlpha(evt)
    {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
         
        return false;
            return true;
    }

             </script>

        <div class="container ">

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

			<asp:panel id="Panel1"  runat="server"><%--style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 8px"--%>
                  <div class="row">
                <div class="table-responsive">
				<table id="Table1" class="table">
					<tr>
						<td colspan="3"><FONT size="3">Mould Machining Details - New Edit</FONT> <hr class="prettyline" /></td>
					</tr>
					<tr>
						<td colspan="3">
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></td>
					</tr>
					<tr>
						<td>MouldNumber</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtMouldNumber" runat="server"  AutoPostBack="true" CssClass="form-control" onkeypress="isInputNumber(event)"></asp:TextBox>
							<asp:Label id="lblMldType" runat="server" Visible="False"></asp:Label></td>
					</tr>
					<tr>
						<td>Date</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtdate" runat="server"  AutoPostBack="true" CssClass="form-control" onkeypress="return isNumber1(event,this)" MaxLength="10"></asp:TextBox></td>
					</tr>
					<tr>
						<td>Shift</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtShift" runat="server"  AutoPostBack="true" CssClass="form-control" onKeyPress="return ValidateAlpha(event);"></asp:TextBox></td>
					</tr>
					<tr>
						<td>Mould Initial</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtIni" runat="server"  AutoPostBack="true" CssClass="form-control"  onkeypress="isInputNumber(event)"></asp:TextBox></td>
					</tr>
					<tr>
						<td>Height Final</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtFinal" runat="server"  AutoPostBack="true" CssClass="form-control"  onkeypress="isInputNumber(event)"></asp:TextBox></td>
					</tr>
					<tr>
						<td>Defect</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtdefect" runat="server" CssClass="form-control" onKeyPress="return ValidateAlpha(event);"></asp:TextBox></td>
					</tr>
					<tr>
						<td>Operation_type</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtOperation_type" runat="server" CssClass="form-control"></asp:TextBox></td>
					</tr>
					<tr>
						<td>Remarks</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtremarks" runat="server"  AutoPostBack="true" CssClass="form-control" MaxLength="200"></asp:TextBox></td>
					</tr>
					<tr>
						<td vAlign="top" align="middle" colspan="3">
							<asp:Label id="lblMacSh" runat="server" Visible="False"></asp:Label>
							<asp:Button id="btnUpdate" runat="server" Text="Update" CssClass="button button2"></asp:Button>
							<asp:Label id="lblMacDt" runat="server" Visible="False"></asp:Label></td>
					</tr>
				</table>
				<asp:DataGrid id="DataGrid1" runat="server"  BackColor="White"  AutoGenerateColumns="False" CssClass="table"><%--BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4"--%>
					<SelectedItemStyle Font-Bold="true" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="true" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
						<asp:BoundColumn DataField="McnDate" ReadOnly="true" HeaderText="McnDate"></asp:BoundColumn>
						<asp:BoundColumn DataField="Sh" ReadOnly="true" HeaderText="Sh"></asp:BoundColumn>
						<asp:BoundColumn DataField="Initial" ReadOnly="true" HeaderText="Initial"></asp:BoundColumn>
						<asp:BoundColumn DataField="Final" ReadOnly="true" HeaderText="Final"></asp:BoundColumn>
						<asp:BoundColumn DataField="Diff" ReadOnly="true" HeaderText="Diff"></asp:BoundColumn>
						<asp:BoundColumn DataField="Remarks" ReadOnly="true" HeaderText="Remarks"></asp:BoundColumn>
						<asp:BoundColumn DataField="Type" ReadOnly="true" HeaderText="Type"></asp:BoundColumn>
						<asp:BoundColumn DataField="defect" ReadOnly="true" HeaderText="Defect"></asp:BoundColumn>
						<asp:BoundColumn DataField="Machine" ReadOnly="true" HeaderText="Machine"></asp:BoundColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid></div></div>
			</asp:panel></form></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
