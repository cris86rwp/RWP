<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MagProcessingNavigator.aspx.vb" Inherits="WebApplication2.MagProcessingNavigator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MAGNA PROCESS NEVIGATOR</title>
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
     <link rel="stylesheet" href="../../../StyleSheet1.css" />
</head>
<body>
     <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
   <a class="navbar-brand p-0" href="#"><img src="../../..//NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../logon.aspx">
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

    <form id="form1" runat="server">

        <div class="row"><div class="table-responsive">
        <asp:Panel ID="panel1" runat="server">
            <table class="table">
                <tr>
                    <td colspan="2"><h2>MAGNAGLOW ROOM PROCESSING</h2></td>
                    
                </tr>
                <tr>
                    <td><asp:Label ID="lblmsg1" runat="server"></asp:Label></td>
                </tr>
               
                 <tr>
                    <td> Drag User Id</td>
                    <td><asp:TextBox ID="txtuid" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>password</td>
                    <td><asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox></td>

                </tr>
                 <tr>
                    <td> Cope User Id</td>
                    <td><asp:TextBox ID="txtuidd" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>password</td>
                    <td><asp:TextBox ID="txtpasss" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox></td>

                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="btnsub" runat="server" Text="submit" CssClass="button button2" Height="26px"/></td>
                </tr>
            </table>
        </asp:Panel>

        <asp:panel ID="panel2" runat="server">
            <table class="table">
                <tr>
                    <td colspan="4"><h2>MAGNAGLOW ROOM PROCESSING</h2></td>

                </tr>
                <tr>
                    <td><asp:Label ID="lblmsg" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>shift</td>
                    <td><asp:RadioButtonList ID="rblshift" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl">
                        <asp:ListItem Value="A" Selected="True" >A</asp:ListItem>
                        <asp:ListItem Value="B">B</asp:ListItem>
                        <asp:ListItem Value="C">C</asp:ListItem>
                        <asp:ListItem Value="G">G</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td>Drag(I)</td>
                    <td><asp:TextBox ID="txtdrag" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>Cope(I)</td>
                    <td><asp:TextBox ID="txtcope" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Line No</td>
                    <td><asp:DropDownList ID="ddline" runat="server" CssClass="form-control ll">
                       
                        <asp:ListItem Value="1" Selected="True">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>Wheel Type</td>
                    <td><asp:DropDownList ID="ddwhltype" runat="server" CssClass="form-control ll">
                    
                        <asp:ListItem Value="F" Selected="True">F</asp:ListItem>
                        <asp:ListItem Value="M">M</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Heat Number</td>
                    <td><asp:TextBox ID="txtheat" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>Wheel Number</td>
                    <td><asp:TextBox ID="txtwheel" runat="server" AutoPostBack="true" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">Defects</td>
                    <td colspan="2"><asp:RadioButtonList ID="rbldefects" runat="server" AutoPostBack="true" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl" >
                        <asp:ListItem Value="yes" Selected="True">YES</asp:ListItem>
                        <asp:ListItem Value="no" >NO</asp:ListItem>                   
                        </asp:RadioButtonList></td>
                    </tr>
               
                <tr>
                    <td><asp:Label ID="lbltype" runat="server" Text="Type of defects"></asp:Label></td>
                    <td><asp:DropDownList ID="ddtyped" runat="server" AutoPostBack="true" CssClass="form-control ll">
                        <asp:ListItem Value="no defects" Selected="True">No Defects</asp:ListItem>
                        <asp:ListItem Value="defects for grinding" >Defects for Grinding</asp:ListItem>
                        <asp:ListItem Value="defects for machining">Defects for Machining</asp:ListItem>
                        <asp:ListItem Value="defects for machining and grinding">Defects for Machining and Grinding</asp:ListItem>
                        </asp:DropDownList></td>

               
                    <td><asp:CheckBox ID="chkgrdsts" runat="server" Text="Grind sts" /></td>
                    <td><asp:CheckBox ID="Chkmcnopn" runat="server" Text="Mcn Opn" /></td>

                </tr>
                <tr>
                    <td>BHN</td>
                    <td><asp:TextBox ID="txtbhnone" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td><asp:TextBox ID="txtbhntwo" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td><asp:TextBox ID="txtbhnthree" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>
                <tr>
                     
                    
                    <td>Magnatic Boom Ammeter Current</td>
                    <td><asp:TextBox ID="txtamm" runat="server" CssClass="form-control"></asp:TextBox></td>
               
                     <td>BCF</td>
                    <td><asp:TextBox ID="txtbcf" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                   <td>UT Batch No</td>
                    <td><asp:TextBox ID="txtutbatch" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>UT Wheel No</td>
                    <td><asp:TextBox ID="txtutwheel" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>
                <tr>
                    <td>UT Status</td>
                    <td><asp:DropDownList ID="ddutstatus" runat="server" CssClass="form-control ll">
                        <asp:ListItem Value="passed" Selected="True">Passed</asp:ListItem>
                        <asp:ListItem Value="reject" >Reject</asp:ListItem>
                        <asp:ListItem Value="unchecked">Unchecked</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>UT XcWhlSts</td>
                    <td><asp:TextBox ID="txtutstatus" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>HT Batch No</td>
                    <td><asp:TextBox ID="txthtbatch" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>HT status</td>
                    <td><asp:DropDownList ID="ddhtstatus" runat="server" CssClass="form-control ll">
                        <asp:ListItem Value="ok" Selected="True">Ok</asp:ListItem>
                        <asp:ListItem Value="not ok">Not Ok</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td ><asp:Button ID="btnstock" runat="server" Text="Stock"  CssClass="button button2"/> </td>
                    <td><asp:Button ID="btnclear" runat="server" Text="Clear" CssClass="button button2" /></td>
                </tr>
            </table>
        </asp:panel>
        <asp:Panel ID="panel3" runat="server">
            <asp:DataGrid ID="grid1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" CssClass="table">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" Mode="NumericPages" />
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="select * from mm_magnaglow_shiftwiserecords_new"></asp:SqlDataSource>
        </asp:Panel>

            </div></div>
    </form> 

        </div>
</body>
</html>
