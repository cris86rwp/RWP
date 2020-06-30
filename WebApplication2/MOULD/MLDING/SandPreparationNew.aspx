<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SandPreparationNew.aspx.vb" Inherits="WebApplication2.SandPreparationNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sand Preparation</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR" />
	<meta content="Visual Basic 7.0" name="CODE_LANGUAGE" />
	<meta content="JavaScript" name="vs_defaultClientScript" />
	<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
    <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../../StyleSheet1.css" />
    
    <script>
        function isInputNumber(evt) {
            var ch = String.fromCharCode(evt.which);
            if (!(/[0-9]/.test(ch)))
            {
                evt.preventDefault();
            }
        }

        function isInputNumber1(evt) {
            var ch = String.fromCharCode(evt.which);
            if (!(/[1-9]/.test(ch)))
            {
                evt.preventDefault();
            }
        }
        //for date
        function isNumber1(evt, element) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (
                           (charCode != 45 ) && (charCode != 47 ) &&     // 
                           (charCode < 48 || charCode > 57))
                      return false;
                    return true;
        } 

        //for number with decimal
        function isNumber(evt, element) {
                var charCode = (evt.which) ? evt.which : event.keyCode
                if (
           /* (charCode != 45 || $(element).val().indexOf('-') != -1) && */     // “-” CHECK MINUS, AND ONLY ONE.
            (charCode != 46 || $(element).val().indexOf('.') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
            (charCode < 48 || charCode > 57))
            return false;

        return true;
        }    

           function validateHhMm(inputField) {
                         var isValid = /^([0-9]|0[0-9]|1[0-9]|2[0-3]):([0-5][0-9])$/.test(inputField.value);

                     if (isValid) {
                         document.getElementById("result1").innerHTML = "";
                              inputField.style.backgroundColor = '#ffffff';
             
                     } else {
                           document.getElementById("result1").innerHTML = "*Time is Invalid";
                         inputField.style.backgroundColor = '#ff8080';
                   
                     }

                      return isValid;
                 }
    </script>
    
    
</head>
<body>

    <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark ">
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
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <form id="form1" runat="server">
            <div class="row">
                <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
                <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                </asp:DropDownList> <br />
            </div>
            <asp:Panel ID="Panel1" runat="server">
                <div class="row">
                    <div class="table-responsive">
                        <table id="Table1" class="table">
                            <tr>
                                <td colspan="9"> <h2>SAND PLANT DETAILS</h2>   <%--<strong></strong> style="text-align: center"--%>
                                    <hr class="prettyline" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="9">
                                    <asp:Label ID="lblmsg" runat="server" ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbldate" runat="server">Date</asp:Label> 
                                </td>
                                <td>
                                    <asp:TextBox ID="sanddate" runat="server" AutoPostBack="True" CssClass="form-control" Enabled="False" 
                                            onkeypress="return isNumber1(event,this)" MaxLength="10"></asp:TextBox>
                                </td>
                                
                                <td> <asp:Label ID="lblshift" runat="server">Shift</asp:Label>
                                    <asp:RadioButtonList id="rblshift" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                                        <asp:ListItem Value="A" Selected="True">A</asp:ListItem>
                                        <asp:ListItem Value="B">B</asp:ListItem>
                                        <asp:ListItem Value="C">C</asp:ListItem>
                                        <asp:ListItem Value="G">G</asp:ListItem>
                                    </asp:RadioButtonList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:Label ID="lbl_sseje" runat="server">SSE/JE</asp:Label>
                               </td>
                                <td>
                                    <asp:TextBox ID="sse_jename" runat="server" CssClass="form-control" ToolTip="Enter sse/je name"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_opreator1" runat="server">Operator1</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="operator1" runat="server" CssClass="form-control" ToolTip="Enter operator1 name"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_operator2" runat="server">Operator2</asp:Label>
                                    
                                </td>
                                <td>
                                    <asp:TextBox ID="tboperator2" runat="server" CssClass="form-control" ToolTip="Enter operator2 name"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td> 
                                    <asp:Label ID="lblrecipe" runat="server">Recipe</asp:Label>        
                                </td>
                                <td>
                                    <asp:CheckBox ID="chk_recipe" runat="server" AutoPostBack="true" OnCheckedChanged="chk_recipe_CheckedChanged" />
                                </td>
                            </tr>
                            <tr>
                                <th colspan="4"><h3>Sand Position</h3></th>
                            </tr>
                            <tr>
                                <td> <asp:Label ID="lblbumker1" runat="server">Bumker No1 (in MT)</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox id="bumker1" runat="server" CssClass="form-control" onkeypress="isInputNumber(event)" ToolTip="Enter bumker no.1 only in number"> </asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblbumker2" runat="server">Bumker No2 (in MT)</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="bumker2" runat="server" CssClass="form-control" onkeypress="isInputNumber(event)" ToolTip="Enter bumker no.2 only in number"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblbumker3" runat="server">Bumker No3 (in MT)</asp:Label> 
                                </td>
                                <td>  
                                    <asp:TextBox ID="bumker3" runat="server" CssClass="form-control" onkeypress="isInputNumber(event)" ToolTip="Enter bumker no.3 only in number" TextMode="Number"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td> 
                                    <asp:Label ID="lblsilo" runat="server">     Silo    </asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="silo1" runat="server" CssClass="form-control" ToolTip="Enter silo no. only in number"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lbldrier" runat="server"><h5> Drier/Cooler </h5></asp:Label> 
                                </td>
                                <td></td>
                                <td><asp:Label ID="lblstrttime" runat="server">Start Time</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="strttime" runat="server" CssClass="form-control"  onblur="validateHhMm(this)" MaxLength="5"   ToolTip="time in format HH:MM"></asp:TextBox>
                               <%-- </td>
					            <td style="color:red">--%><div id="result1" style="color:red"></div></td>
                                
                                <td>
                                    <asp:Label ID="lblstptime" runat="server">Stop Time</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="stptime"  runat="server" CssClass="form-control" onblur="validateHhMm(this)" MaxLength="5" ToolTip="time in format HH:MM"></asp:TextBox>
                                <%--</td>
                                <td style="color:red">--%><div id="result2" style="color:red"></div></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblhxlprep" runat="server"> Hexa Solution Preparation </asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rblhxlprep" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl" AutoPostBack="true" OnSelectedIndexChanged="rblhxlprep_SelectedIndexChanged">
                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                        <asp:ListItem Value="0"> No</asp:ListItem>
                                    </asp:RadioButtonList>
                                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   
                                </td>
                                <td></td>
                                <td></td>

                                <td>
                                    <asp:Label ID="lblhexa" runat="server" Visible="false"> Hexa Used (in Kg)</asp:Label>   
                                </td>
                                <td>
                                    <asp:TextBox ID="tbhexa" runat="server" Visible="false" CssClass="form-control" onkeypress="return isNumber(event, this)" ToolTip="Enter hexa_used only in number"></asp:TextBox>   
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblbtchcoated" runat="server"> No of Batch Coated</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="btchcoated" runat="server" CssClass="form-control" onkeypress="isInputNumber(event)" ToolTip="Enter batch_coated only in number"></asp:TextBox>
                                </td>
                                <td><asp:Label ID="lblresin" runat="server">Resin Used (in Kg)</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="resin" runat="server" CssClass="form-control" ToolTip="Enter resin_used only in number" onkeypress="return isNumber(event, this)"></asp:TextBox>
                                </td>
                                <td><asp:Label ID="lblmake" runat="server">Make</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="make" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblbatch" runat="server"> Sample Collected from Batch No</asp:Label> 
                                </td>
                                <td>
                                    <asp:TextBox ID="tb_batch" runat="server" CssClass="form-control" onkeypress="isInputNumber1(event)" ToolTip="Enter the batch no.(only in number)"></asp:TextBox>
                                    <%--<asp:RangeValidator id="rng_batch" runat="server" ControlToValidate="tb_batch" ErrorMessage="batch no. between 1 to 50" MaximumValue="50" MinimumValue="1"></asp:RangeValidator>--%>
                                    <asp:Label ID="lbl_batch" runat="server" ForeColor="White"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="btn_batch" runat="server" Text="add"  class="btn btn-info"/>
                                </td>
                                <td>
                                    <asp:TextBox ID="vw_batch" runat="server" Enabled="false" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr aria-grabbed="false">
                                <td>
                                    <asp:Label ID="lblsandmnth" runat="server"> Sand Unloaded in Current Month in Bin (in MT)</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="sandmnth" runat="server" CssClass="form-control" ToolTip="Enter sand amount(in number)" onkeypress="isInputNumber(event)"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblremarks" runat="server">Remarks</asp:Label>
                                </td>
                                <td colspan="5">
                                    <asp:TextBox ID="remarks" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4"><asp:Button ID="btnsave" runat="server" Text="Save" CssClass="button button2"/></td>
                                <td colspan="5"><asp:Button ID="btnreset" runat="server" Text="Reset" CssClass="button button2"/></td>
                            </tr>
                            <%--<tr>
                                <td colspan="2">
                                    <asp:Label ID="msg" runat="server"  ForeColor="White"></asp:Label>
                                </td>
                            </tr>--%>
                        </table> 
                        <asp:Panel ID="vw_sand_panels" runat="server">
                            <asp:DataGrid ID="vw_sand_details" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table" CellSpacing="2" HorizontalAlign="Left">
                                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" Mode="NumericPages" /> 
                            </asp:DataGrid>
                        </asp:Panel>
                        
                        <br />
                        <br />
                        
                        <asp:Panel ID="vw_batch_panel" runat="server">
                            <asp:DataGrid ID="Vw_batch_no" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CssClass="table" CellSpacing="1" GridLines="None">
                                <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" /> 
         
                            </asp:DataGrid>
                        </asp:Panel>
					    
				    
                    </div>
                </div>
            </asp:Panel>
        </form>
    </div>
    <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
</body>
</html>
