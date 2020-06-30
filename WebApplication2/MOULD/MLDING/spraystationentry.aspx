<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="spraystationentry.aspx.vb" Inherits="WebApplication2.spraystationentry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SPRAY STATION</title>
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
     <script>

function OnlyNumericEntry() {
        if ((event.keyCode < 48 || event.keyCode > 57)) {
        event.returnValue = false;
    }
    if ((event.keyCode == 46) ) {
        event.returnValue = true;
    }
        }

        function OnlyNumericEntry1() {
        if ((event.keyCode < 48 || event.keyCode > 57)) {
        event.returnValue = false;
    }
    if ( (event.keyCode == 58)) {
        event.returnValue = true;
    }
        }

         function validateHhMm(inputField) {
                         var isValid = /^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/.test(inputField.value);

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
    <form id="form1" runat="server">
        <div class="row"><div class="table-responsive">
           <asp:Panel ID="panel1" runat="server">
           <table class="table">
               <tr>
                   <td><h2>SPRAY STATION ENTRIES</h2><hr class="prettyline" /></td>
               </tr>
               <tr>
                   <td><asp:Label ID="lblmessage" runat="server"></asp:Label></td>
               </tr>
           </table>
           <table class="table">
               <tr>
                   <td>DATE</td>
                   <td><asp:TextBox ID="txtsdate" runat="server" AutoPostBack="true" CssClass="form-control"></asp:TextBox></td>
                   <td>SHIFT</td>
                   <td><asp:DropDownList runat="server" id="ddshift" CssClass="form-control ll" Width="100px" AutoPostBack="true">
                        <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                        <asp:ListItem Value="A" >A</asp:ListItem>
                        <asp:ListItem Value="B">B</asp:ListItem>
                        <asp:ListItem Value="C">C</asp:ListItem>
                        <asp:ListItem Value="D">G</asp:ListItem>
                        </asp:DropDownList></td>
                   <td>SSE/JE</td>
                   <td><asp:TextBox ID="txtsseje" runat="server" CssClass="form-control"></asp:TextBox></td>
               </tr>
               <tr>
                   <td>OPERATOR</td>
                   <td colspan="2"><asp:TextBox ID="txtop" runat="server" CssClass="form-control"></asp:TextBox></td>
                   <td>MELTING WORK ORDER</td>
                   <td colspan="2"><asp:TextBox ID="txtwo" runat="server" CssClass="form-control"></asp:TextBox></td>
               </tr>
               <tr>
                   <td>SPR OPERATOR 1</td>
                   <td colspan="2"><asp:TextBox ID="txtop1" runat="server" CssClass="form-control" AutoPostBack="true"></asp:TextBox></td>
                   <td>SPR OPERATOR 2</td>
                   <td colspan="2"><asp:TextBox ID="txtop2" runat="server" CssClass="form-control" AutoPostBack="true"></asp:TextBox></td>
               </tr>
               <tr>
                   <td>START TIME</td>
                   <td colspan="2"><asp:TextBox ID="txtstime" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry1()" onblur="validateHhMm(this)"></asp:TextBox></td>
                   <td>FINISH TIME</td>
                   <td colspan="2"><asp:TextBox ID="txtftime" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry1()" onblur="validateHhMm(this)"></asp:TextBox></td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtftime" ControlToCompare="txtstime" SetFocusOnError="True" Type="String" Operator="GreaterThan" ErrorMessage="Finish time should be greater than start time" EnableClientScript="True" BorderStyle="NotSet"></asp:CompareValidator></td>
               
               </tr>
           </table>
           <table class="table">
               <tr>
                   <td>SPRAY SOLUTION PREPARED</td>
                   <td>BATCH NUMBER</td>
                   <td>BAUME</td>
               </tr>
               <tr>
                   <td>S.N. 1</td>
                   <td><asp:TextBox ID="txtbatch1" runat="server" CssClass="form-control"></asp:TextBox></td>
                   <td><asp:TextBox ID="txtbaume1" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtbaume1" Type="Double"></asp:RangeValidator>
                  </td>
                   </tr>
               <tr>
                   <td>S.N. 2</td>
                   <td><asp:TextBox ID="txtbatch2" runat="server" CssClass="form-control"></asp:TextBox></td>
                   <td><asp:TextBox ID="txtbaume2" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtbaume2" Type="Double"></asp:RangeValidator>
                   </td>
               </tr>
                   <tr>
                       <td>S.N. 3</td>
                       <td><asp:TextBox ID="txtbatch3" runat="server" CssClass="form-control"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtbaume3" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                             <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtbaume3" Type="Double"></asp:RangeValidator>
                        </td>
                   </tr>
                   
           </table>
       </asp:Panel>

        <asp:Panel ID="panel2" runat="server">
            <table class="table">
                <tr>
                    <td>MOULD ORIGIN</td>
                   <td><asp:RadioButtonList runat="server" ID="rblmouldorigin" AutoPostBack="true" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
                       
                       <asp:ListItem Value="heat" Selected="true"  >Heat</asp:ListItem>
                        <asp:ListItem Value="mpo">MPO</asp:ListItem>
                                    </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lheat" runat="server" Text="HEAT NUMBER"></asp:Label></td>
                    <td><asp:TextBox ID="txtheat" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lmpo" runat="server" Text="MPO"></asp:Label></td>
                    <td><asp:DropDownList runat="server" ID="ddmponumber"   CssClass="form-control ll">
                             <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                            <asp:ListItem Value="MPO1">MPO 1</asp:ListItem>
                            <asp:ListItem Value="MPO2">MPO 2</asp:ListItem>
                            <asp:ListItem Value="MPO3">MPO 3</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>SPARY TYPE</td>
                    <td><asp:RadioButtonList runat="server" ID="rblspray" AutoPostBack="true" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow" >
                        <asp:ListItem Value="cope" Selected="True">Cope</asp:ListItem>
                        <asp:ListItem Value="drag">Drag</asp:ListItem>
                                    </asp:RadioButtonList></td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="panelcope" runat="server">
            <table class="table">
                <tr>
                    <td colspan="5"><h4>GUN QTY DETAILS</h4></td>
                </tr>
                <tr>
                    <td>HUB</td>
                    <td><asp:TextBox ID="txtchub" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator11" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtchub" Type="Double"></asp:RangeValidator>
                    </td>
                    <td>PLATE</td>
                    <td><asp:TextBox ID="txtcplate" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator12" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtcplate" Type="Double"></asp:RangeValidator>
                    </td>
                    <td>RIM</td>
                    <td><asp:TextBox ID="txtcrim" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator13" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtcrim" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>TANK PRESSURE(in PSI)</td>
                    <td><asp:TextBox ID="txtctank" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator14" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtctank" Type="Double"></asp:RangeValidator>
                    </td>
                    <td>ATOM PRESSURE(in PSI)</td>
                    <td><asp:TextBox ID="txtcatom" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator15" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtcatom" Type="Double"></asp:RangeValidator>
                    </td>
                    <td>TRIGGER PRESSURE(in PSI)</td>
                    <td><asp:TextBox ID="txtctrigger" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator16" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtctrigger" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>COPE CLEANER MACHINE</td>
                    <td><asp:DropDownList runat="server" ID="ddcopecleanermachine" CssClass="form-control ll">
                         <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                        <asp:ListItem Value="ok">OK</asp:ListItem>
                        <asp:ListItem Value="not ok">NOT OK</asp:ListItem>
                         </asp:DropDownList></td>
                    <td>STOP PIPE MAKE</td>
                    <td><asp:TextBox ID="txtcstoppipemake" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>STOPPER HEAD MAKE</td>
                    <td><asp:TextBox ID="txtcstopperheadmake" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>CARD BOARD TUBE MAKE</td>
                    <td><asp:TextBox ID="txtccardboardtubemake" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>CTC</td>
                    <td><asp:DropDownList runat="server" ID="ddctc" CssClass="form-control ll">
                         <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                        <asp:ListItem Value="ok">OK</asp:ListItem>
                        <asp:ListItem Value="not ok">NOT OK</asp:ListItem>
                         </asp:DropDownList></td>
                    <td>DOME DISC</td>
                    <td><asp:DropDownList runat="server" ID="dddomedisc" CssClass="form-control ll">
                         <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                        <asp:ListItem Value="Y">Y</asp:ListItem>
                        <asp:ListItem Value="N">N</asp:ListItem>
                         </asp:DropDownList></td>
                    <td>REMARK</td>
                    <td><asp:TextBox ID="txtcremark" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>COPE NUMBER</td>
                    <td class="tooltiptext"><asp:TextBox ID="txtcopenumber" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()" ToolTip="Enter Cope Number(only numeric)" MaxLength="6"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtcopenumber"></asp:RequiredFieldValidator> 
                    </td>
                    <td>COPE TEMP</td>
                    <td><asp:TextBox ID="txtcopetemp" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox></td>
                    <td>CTC OPERATOR</td>
                    <td><asp:TextBox ID="txtcctc" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>SPR OPERATOR</td>
                    <td><asp:TextBox ID="txtcspr" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>STATION</td>
                    <td colspan="2"><asp:RadioButtonList runat="server" ID="rblstation" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="true">
                        <asp:ListItem Value="station1" Selected="True">Station1</asp:ListItem>
                        <asp:ListItem Value="station2">Station2</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td>HOLDING OVEN</td>
                    <td> <asp:DropDownList runat="server" ID="ddholdingoven" CssClass="form-control ll">
                             <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                            <asp:ListItem Value="c20">C20</asp:ListItem>
                            <asp:ListItem Value="c21">C21</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>STATUS</td>
                    <td><asp:DropDownList runat="server" ID="ddstatus" AutoPostBack="true" CssClass="form-control ll">
                              <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                            <asp:ListItem Value="ok">OK</asp:ListItem>
                            <asp:ListItem Value="not ok">NOT OK</asp:ListItem>
                             <asp:ListItem Value="pouring bypass">POURING BYPASS</asp:ListItem>
                        </asp:DropDownList></td>
                    <td><asp:Label ID="lcreason" runat="server" Text="REASON" Visible="false"></asp:Label></td>
                    <td><asp:DropDownList runat="server" ID="ddreason"  CssClass="form-control ll" Visible="false">
                             <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                            <asp:ListItem Value="low temp">Low Temp</asp:ListItem>
                            <asp:ListItem Value="bak damage">Bak Damage</asp:ListItem>
                            <asp:ListItem Value="mold defects">Mold Defects</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>BAUME</td>
                    <td><asp:TextBox ID="txtcbaume" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator10" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtcbaume" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                
                <tr>
                    <td ><asp:Button ID="btnsave" runat="server" Text="SAVE" CssClass="button button2" /></td>
                    <td></td>
                    <td><asp:Button ID="btnclear" runat="server" Text="CLEAR" CssClass="button button2" /></td>
                    <td></td>
                    <td ><asp:Button ID="btnexit" runat="server" Text="EXIT" CssClass="button button2" /></td>
                    <td></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="paneldrag" runat="server">
            <table class="table">
                <tr>
                    <td colspan="5"><h4>GUN QTY DETAILS</h4></td>
                </tr>
                <tr>
                    <td>HUB</td>
                    <td><asp:TextBox ID="txtdhub" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtdhub" Type="Double"></asp:RangeValidator>
                    </td>
                    <td>PLATE + RIM</td>
                    <td><asp:TextBox ID="txtdplaterim" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator6" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtdplaterim" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>TANK PRESSURE(in PSI)</td>
                    <td><asp:TextBox ID="txtdtank" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtdtank" Type="Double"></asp:RangeValidator>
                    </td>
                    <td>ATOM PRESSURE(in PSI)</td>
                    <td><asp:TextBox ID="txtdatom" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator8" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtdatom" Type="Double"></asp:RangeValidator>
                    </td>
                    <td>TRIGGER PRESSURE(in PSI)</td>
                    <td><asp:TextBox ID="txtdtrigger" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator9" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtdtrigger" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>DRAG CLEANER MACHINE</td>
                    <td><asp:DropDownList runat="server" ID="dddragcleanermachine" CssClass="form-control ll">
                         <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                        <asp:ListItem Value="ok">OK</asp:ListItem>
                        <asp:ListItem Value="not ok">NOT OK</asp:ListItem>
                         </asp:DropDownList></td>
                    <td>REMARK</td>
                    <td><asp:TextBox ID="txtdremark" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>DRAG NUMBER</td>
                    <td class="tooltiptext"><asp:TextBox ID="txtdragnumber" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()" ToolTip="Enter Drag Number(only numeric)" MaxLength="6"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtdragnumber"></asp:RequiredFieldValidator> 
                    </td>
                    <td>DRAG TEMP</td>
                    <td><asp:TextBox ID="txtdragtemp" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>DT OPERATOR</td>
                    <td><asp:TextBox ID="txtdt" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>SPR OPERATOR</td>
                    <td><asp:TextBox ID="txtdspr" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>REAMING OPERATOR</td>
                    <td><asp:TextBox ID="txtir" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>STATION</td>
                    <td colspan="2"><asp:RadioButtonList runat="server" ID="rbldstation" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="true">
                        <asp:ListItem Selected="True" Value="station1">Station1</asp:ListItem>
                        <asp:ListItem Value="station2">Station2</asp:ListItem>
                        </asp:RadioButtonList></td>
                    
                </tr>
                <tr>
                    <td>HOLDING OVEN</td>
                    <td><asp:DropDownList runat="server" ID="dddholdingoven" CssClass="form-control ll">
                             <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                            <asp:ListItem Value="D13">D13</asp:ListItem>
                            <asp:ListItem Value="D14">D14</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>STATUS</td>
                    <td> <asp:DropDownList runat="server" ID="dddstatus" CssClass="form-control ll" AutoPostBack="true">
                              <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                            <asp:ListItem Value="ok">OK</asp:ListItem>
                            <asp:ListItem Value="not ok">NOT OK</asp:ListItem>
                             <asp:ListItem Value="pouring bypass">POURING BYPASS</asp:ListItem>
                        </asp:DropDownList></td>
                    <td><asp:Label ID="ldreason" runat="server" Text="REASON" Visible="false"></asp:Label></td>
                    <td> <asp:DropDownList runat="server" ID="dddreason" Visible="false" CssClass="form-control ll">
                             <asp:ListItem Selected="True" Value="null">select </asp:ListItem>
                            <asp:ListItem Value="low temp">Low Temp</asp:ListItem>
                            <asp:ListItem Value="bak damage">Bak Damage</asp:ListItem>
                            <asp:ListItem Value="mold defects">Mold Defects</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>BAUME</td>
                    <td><asp:TextBox ID="txtdbaume" runat="server" CssClass="form-control" onkeypress="OnlyNumericEntry()"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="enter weight bewtween 0-999" MaximumValue="999" MinimumValue="0" ControlToValidate="txtdbaume" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                
                <tr>
                     <td><asp:Button ID="btnsave1" runat="server" Text="SAVE" CssClass="button button2"/></td>
                    <td></td>
                    <td><asp:Button ID="btnclear1" runat="server" Text="CLEAR" CssClass="button button2" /></td>
                    <td></td>
                    <td><asp:Button ID="btnexit2" runat="server" Text="EXIT" CssClass="button button2"/></td>
                    <td></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="panelgrid" runat="server">
            <asp:GridView ID="data1" runat="server" CssClass="table" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" >
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:GridView ID="data2" runat="server" CssClass="table" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>


        </asp:Panel>
    
            </div></div>
            </form>
        </div>

     <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
</body>
</html>
