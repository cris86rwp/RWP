<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HWLSPG.aspx.vb" Inherits="WebApplication2.HWLSPG" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HotWheelLine</title>
  
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />

         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

                <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />

	

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
        
     <script>
          function validateHhMm4(inputField) {
                         var isValid = /^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/.test(inputField.value);

                     if (isValid) {
           
                                       
                         document.getElementById("result4").innerHTML = "";
                              inputField.style.backgroundColor = '#ffffff';
             
                     } else {
                           document.getElementById("result4").innerHTML = "*Time is Invalid";
                         inputField.style.backgroundColor = '#ff8080';
                   
                     }

                      return isValid;
         }
          function validateHhMm3(inputField) {
                         var isValid = /^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/.test(inputField.value);

                     if (isValid) {
           
                                       
                         document.getElementById("result3").innerHTML = "";
                              inputField.style.backgroundColor = '#ffffff';
             
                     } else {
                           document.getElementById("result3").innerHTML = "*Time is Invalid";
                         inputField.style.backgroundColor = '#ff8080';
                   
                     }

                      return isValid;
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
             function validateHhMm1(inputField) {
                         var isValid = /^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/.test(inputField.value);

                     if (isValid) {
           
                                       
                         document.getElementById("result2").innerHTML = "";
                              inputField.style.backgroundColor = '#ffffff';
             
                     } else {
                           document.getElementById("result2").innerHTML = "*Time is Invalid";
                         inputField.style.backgroundColor = '#ff8080';
                   
                     }

                      return isValid;
                 }

           function ValidateAlpha(evt)
    {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
         
        return false;
            return true;
    }
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
                           (charCode != 45 ) && (charCode != 47 ) &&     
                           (charCode < 48 || charCode > 57))
                      return false;

                  return true;
         } 

         function onlynum() {
             if ((event.keyCode < 48 || event.keyCode > 57)) {
                 event.returnValue = false;
             }
             if ((event.keyCode == 58)) {
                 event.returnValue = true

             }
         }

</script>
    
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
         <asp:Panel runat="server" ID="panel3">
                  <div class ="row">
        <div class="table-responsive">
            <table  class="table"  id="table3">
          <tr>
                   <td colspan="14" align="center" ><h3> HotWheelLine(SPG) </h3> <hr class="prettyline" /></td>
                </tr>
                <tr>
                    <td >Date:</td>
                    <td >
                        <asp:TextBox ID="txtdate" runat="server" onkeypress="return isNumber1(event,this)" MaxLength="10" CssClass="form-control" autopostback="true"></asp:TextBox></td>
                        <%--<asp:TextBox ID="txtdate" runat="server" onkeypress="return isNumber1(event,this)" MaxLength="10" CssClass="form-control"></asp:TextBox></td>--%>
                    <td>shift:</td>
                    <td>
                       
                        <asp:DropDownList ID="DDLshift" runat="server" CssClass="form-control ll" AutoPostBack="True">
                            <asp:ListItem>select-shift</asp:ListItem>
                            
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>G</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                    <td>SSE/JE:</td>
                   <%-- <td class="tooltiptext">--%>
                    <td>
                        <asp:TextBox ID="txtSSEJE" runat="server" onKeyPress="return ValidateAlpha(event);" CssClass="form-control"   ></asp:TextBox></td>

           <td> Start time</td>
                    <td>
                        <asp:TextBox ID="Txtstart_time" runat="server" onblur="validateHhMm(this)" MaxLength="5"   CssClass="form-control" placeholder="hh:mm" Text="00:00"></asp:TextBox></td><td><div id="result1"></div></td>
                    <td> Finish time</td>
                    <td>
                        <asp:TextBox ID="Txtfinish_time" runat="server" onblur="validateHhMm1(this)" MaxLength="5"  CssClass="form-control"  placeholder="hh:mm" Text="00:00"></asp:TextBox></td><td><div id="result2"></div></td>
                   <td>Moulding W.O. No.:</td>
                    <td >
                        <asp:TextBox ID="txtmould" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox></td>
                    
                    <tr>     
                          <td>SPG1 Operator:</td>
                          <td><asp:TextBox ID="TxtSPG1Oper" runat="server" CssClass="form-control" onKeyPress="return ValidateAlpha(event);"></asp:TextBox></td>
                          <td>SPG2 Operator:</td>
                          <td><asp:TextBox ID="TxtSPG2Oper" runat="server" CssClass="form-control" onKeyPress="return ValidateAlpha(event);"></asp:TextBox></td>
                          <td>SPG3 Operator:</td>
                          <td><asp:TextBox ID="TxtSPG3Oper" runat="server" CssClass="form-control" onKeyPress="return ValidateAlpha(event);"></asp:TextBox></td>
                          <td>SPG4 Operator:</td>
                          <td><asp:TextBox ID="TxtSPG4Oper" runat="server" CssClass="form-control" onKeyPress="return ValidateAlpha(event);"></asp:TextBox></td>
                          <td  colspan="4" align="center"> <asp:Button ID="BtnSHeader" runat="server" Text="SAVE DETAILS" CssClass="button button2" CausesValidation="False" /> </td>
                        <td><asp:Label ID="Label2" runat="server" ></asp:Label></td>
                   </tr>
               <%-- <tr>
                    <%--<td>Operator:</td>
                    <td>
                        <asp:TextBox ID="txtoperator" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>Moulding W.O. No.:</td>
                    <td >
                        <asp:TextBox ID="txtmould" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox></td>
                </tr>--%>
                <tr>
                    <td>Process:</td>
                   
                    <td colspan="3">
                        
                        <asp:RadioButtonList ID="rbl1" runat="server" CssClass="rbl" AutoPostBack="true"  RepeatLayout="Flow" RepeatDirection="Horizontal">
                            <asp:ListItem Value="heat" selected="True">Heat</asp:ListItem>
                            <asp:ListItem Value="rework">Rework</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    </tr>
               
                </table></div></div>
                 <asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                   </asp:Panel>
          
         <asp:Panel runat="server" ID="Panel1" >
             <div class ="row">
        <div class="table-responsive">
                <table id="table1" class="table">
                    <%--  <tr>
                   <td colspan="10" align="center" ><h3> HotWheelLine(SPG) </h3> <hr class="prettyline" /></td>
                </tr>--%>
                    <tr>
                         <td>Heat No </td>
                    <td>
                        <asp:TextBox ID="Txtheat_no" runat="server" CssClass="form-control" ToolTip="enter 6 digit no only" AutoPostBack="True" MaxLength="6" onkeypress="isInputNumber(event)" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" display="Dynamic" ControlToValidate="Txtheat_no"></asp:RequiredFieldValidator> Donot prefix zeroes
                    </td>
                        <td>M/C Operator:</td>
                        <td><asp:TextBox ID="TxtMCOperator" runat="server" CssClass="form-control"></asp:TextBox></td>
                    
                   <%-- <td> Start time</td>
                    <td>
                        <asp:TextBox ID="Txtstart_time" runat="server" onblur="validateHhMm(this)" MaxLength="5"  onkeypress="return isNumber(event,this)" CssClass="form-control" placeholder="hh:mm" Text="00:00"></asp:TextBox></td><td><div id="result1"></div></td>
                    <td> Finish time</td>
                    <td>
                        <asp:TextBox ID="Txtfinish_time" runat="server" onblur="validateHhMm1(this)" MaxLength="5"  onkeypress="return isNumber(event,this)" CssClass="form-control"  placeholder="hh:mm" Text="00:00"></asp:TextBox></td><td><div id="result2"></div></td>--%>
                        <td></td>
                        <td></td>
                
                    </tr>
                    
                    <tr>
                        <td>Wheel No</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control ll" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                        </td>
                       <%-- <td>
                            <asp:TextBox ID="Txtwhl_no" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" ></asp:TextBox></td>--%>
                        <td>Temp</td>
                        <td>
                            <asp:TextBox ID="Txttemp" runat="server" CssClass="form-control"  onkeypress="isInputNumber(event)"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="please enter the number b/w 100 to 1800" ControlToValidate="Txttemp" MaximumValue="1800" MinimumValue="100" Type="Integer"></asp:RangeValidator>
                       
                            </td>
                        <td>M/C No</td>
                        <td><asp:DropDownList ID="DDLheatmcno" runat="server" CssClass="form-control ll" AutoPostBack="True">
                            <asp:ListItem Value="select" Selected="True">select</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please select m/c no" display="Dynamic" ControlToValidate="DDLheatmcno" InitialValue="select"></asp:RequiredFieldValidator></td>
                        <td>Status</td>
                        <td><asp:DropDownList ID="DDLheat_status" runat="server" CssClass="form-control ll" AutoPostBack="True">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>OK</asp:ListItem>
                            <asp:ListItem>NOT OK</asp:ListItem>
                            </asp:DropDownList></td>
                       <asp:Panel runat="server" ID="Panel5" >
                        <td>XC/Offload Code</td>
                        <td><asp:DropDownList ID="DDLheatXC_code" runat="server"    CssClass="form-control ll"  >
                            <asp:ListItem></asp:ListItem>
    <asp:ListItem>XC-3</asp:ListItem>
    <asp:ListItem>XC-10</asp:ListItem>
    <asp:ListItem>XC-13</asp:ListItem>
    <asp:ListItem>XC-15</asp:ListItem>
    <asp:ListItem>XC-30</asp:ListItem>
    <asp:ListItem>XC-31</asp:ListItem>
    <asp:ListItem>XC-32</asp:ListItem>
    <asp:ListItem>XC-39</asp:ListItem>
    <asp:ListItem>XC-46</asp:ListItem>
    <asp:ListItem>XC-48</asp:ListItem>
    <asp:ListItem>XC-50</asp:ListItem>
    <asp:ListItem>XC-51</asp:ListItem>
    <asp:ListItem>XC-53</asp:ListItem>
    <asp:ListItem>XC-56</asp:ListItem>
    <asp:ListItem>XC-58</asp:ListItem>
    <asp:ListItem>XC-61</asp:ListItem>
    <asp:ListItem>XC-62</asp:ListItem>
    <asp:ListItem>XC-93</asp:ListItem>
    <asp:ListItem>XC-124</asp:ListItem>
    <asp:ListItem>XC-126</asp:ListItem>
    <asp:ListItem>XC-139</asp:ListItem>
    <asp:ListItem>RNB</asp:ListItem>
    <asp:ListItem>WSC</asp:ListItem>
    <asp:ListItem>WSD</asp:ListItem>
    <asp:ListItem>UNS</asp:ListItem>
    <asp:ListItem>FIN</asp:ListItem>
    <asp:ListItem>ROP</asp:ListItem>
    <asp:ListItem>BS</asp:ListItem>
    <asp:ListItem>BD</asp:ListItem>
    <asp:ListItem>MMT</asp:ListItem>
    <asp:ListItem>PHB</asp:ListItem>
    <asp:ListItem>PND</asp:ListItem>
    <asp:ListItem>HNF</asp:ListItem>
    <asp:ListItem>BackFire</asp:ListItem>
    <asp:ListItem>WTL</asp:ListItem>
    <asp:ListItem>TAIL</asp:ListItem>
    <asp:ListItem>ThickFlange</asp:ListItem>
    <asp:ListItem>AlRdyDone</asp:ListItem>
    <asp:ListItem>ByPass</asp:ListItem>
                            </asp:DropDownList></td>
                           </asp:Panel>
                    </tr>
    </table></div></div>
             </asp:Panel><br /><br />

        <asp:Panel runat="server" ID="Panel2" >
               <div class ="row">
        <div class="table-responsive">
                <table id="table2" class="table" >
                    <tr>
                         <td>M/C Operator:</td>
                        <td><asp:TextBox ID="TxtMCOperator1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                   
                 <%--   <td> Start time</td>
                    <td>
                        <asp:TextBox ID="Txtstrt_time" runat="server"  CssClass="form-control" onblur="validateHhMm3(this)" MaxLength="5"  onkeypress="return isNumber(event,this)" placeholder="hh:mm" Text="00:00"></asp:TextBox></td><td style="color:red"><div id="result3"></div></td>
                    <td> Finish time</td>
                    <td>
                        <asp:TextBox ID="Txtfin_time" runat="server" CssClass="form-control" onblur="validateHhMm4(this)" MaxLength="5"  onkeypress="return isNumber(event,this)"  placeholder="hh:mm" Text="00:00"></asp:TextBox></td><td style="color:red"><div id="result4"></div></td>--%>
                </tr>
                    <tr><td>
                        Heat No.
                        </td>
                        <td>
                            <asp:TextBox ID="Txtheat_no1" runat="server" CssClass="form-control" AutoPostBack="True" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" display="Dynamic" ControlToValidate="Txtheat_no1"></asp:RequiredFieldValidator> Donot prefix Zeroes
                        </td>
                        <td>Wheel No.</td>
                        
                             
                           <td> <asp:TextBox ID="Txtwheel_no" runat="server"  CssClass="form-control"></asp:TextBox></td>
                        <td>Temp</td>
                        <td>
                            <asp:TextBox ID="Txttmp" runat="server" CssClass="form-control" onkeypress="isInputNumber(event)" ></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="please enter valid temp number" ControlToValidate="Txttmp" MaximumValue="1800" MinimumValue="100" Type="Integer"></asp:RangeValidator>
                        </td>
                         <td>M/C No</td><td><asp:DropDownList ID="DDLremcno" runat="server" AutoPostBack="true" CssClass="form-control ll">
                             <asp:ListItem Value="select">select</asp:ListItem>
                             <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please select m/c no" display="Dynamic" ControlToValidate="DDLremcno" InitialValue="select"></asp:RequiredFieldValidator></td>
                        <td>Status</td><td><asp:DropDownList ID="DDLrestatus" runat="server" CssClass="form-control ll" AutoPostBack="True">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>OK</asp:ListItem>
                            <asp:ListItem>NOT OK</asp:ListItem>
                            </asp:DropDownList></td>
                        <asp:Panel runat="server" ID="Panel6" >
                        <td>XC/Offload Code</td>
                        <td><asp:DropDownList ID="DDLrexccode" runat="server" CssClass="form-control ll">
                            <asp:ListItem></asp:ListItem>
    <asp:ListItem>XC-3</asp:ListItem>
    <asp:ListItem>XC-10</asp:ListItem>
    <asp:ListItem>XC-13</asp:ListItem>
    <asp:ListItem>XC-15</asp:ListItem>
    <asp:ListItem>XC-30</asp:ListItem>
    <asp:ListItem>XC-31</asp:ListItem>
    <asp:ListItem>XC-32</asp:ListItem>
    <asp:ListItem>XC-39</asp:ListItem>
    <asp:ListItem>XC-46</asp:ListItem>
    <asp:ListItem>XC-48</asp:ListItem>
    <asp:ListItem>XC-50</asp:ListItem>
    <asp:ListItem>XC-51</asp:ListItem>
    <asp:ListItem>XC-53</asp:ListItem>
    <asp:ListItem>XC-56</asp:ListItem>
    <asp:ListItem>XC-58</asp:ListItem>
    <asp:ListItem>XC-61</asp:ListItem>
    <asp:ListItem>XC-62</asp:ListItem>
    <asp:ListItem>XC-93</asp:ListItem>
    <asp:ListItem>XC-124</asp:ListItem>
    <asp:ListItem>XC-126</asp:ListItem>
    <asp:ListItem>XC-139</asp:ListItem>
    <asp:ListItem>RNB</asp:ListItem>
    <asp:ListItem>WSC</asp:ListItem>
    <asp:ListItem>WSD</asp:ListItem>
    <asp:ListItem>UNS</asp:ListItem>
    <asp:ListItem>FIN</asp:ListItem>
    <asp:ListItem>ROP</asp:ListItem>
    <asp:ListItem>BS</asp:ListItem>
    <asp:ListItem>BD</asp:ListItem>
    <asp:ListItem>MMT</asp:ListItem>
    <asp:ListItem>PHB</asp:ListItem>
    <asp:ListItem>PND</asp:ListItem>
    <asp:ListItem>HNF</asp:ListItem>
    <asp:ListItem>BackFire</asp:ListItem>
    <asp:ListItem>WTL</asp:ListItem>
    <asp:ListItem>TAIL</asp:ListItem>
    <asp:ListItem>ThickFlange</asp:ListItem>
    <asp:ListItem>AlRdyDone</asp:ListItem>
    <asp:ListItem>ByPass</asp:ListItem>
                            </asp:DropDownList></td></asp:Panel>

                    </tr>
                 
                    </table>
            </div></div> 
             
        </asp:Panel>
       
        <asp:Panel runat="server" ID="Panel4" >
            <table id="table5" class="table">
                 <tr><td>SPG Grinding Wheels Replaced </td>
                        <td>
                            <asp:DropDownList ID="DDLSPG" runat="server" CssClass="form-control ll" AutoPostBack="True">
                                  
                                <asp:ListItem>N</asp:ListItem>
                                <asp:ListItem>Y</asp:ListItem>
                            </asp:DropDownList>
                            
                            </td>
                            
                            <td>M/C No</td>
                            <td><asp:DropDownList ID="DDLgrindmc" runat="server" CssClass="form-control ll" AutoPostBack="True" >
                                <asp:ListItem></asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList></td>
                        <td>Heat No</td>
                            <td><asp:TextBox ID="Txtspgrindheat_no" runat="server" CssClass="form-control" AutoPostBack="True" ></asp:TextBox></td>
                        <td>Wheel No</td>
                      <td>
                            <asp:DropDownList ID="DropDownList2" CssClass="form-control ll" runat="server" Width="73px">
                            </asp:DropDownList>
                        </td>
                           <%-- <td><asp:TextBox ID="Txtspgrindwhl_no" runat="server" CssClass="form-control" ></asp:TextBox></td>--%>
                    </tr>
                    <tr>
                       <td>Grinding Wheels Life</td> 
                        <%--<td>
                            <asp:TextBox ID="Txtgrind" runat="server" CssClass="form-control" ></asp:TextBox></td>--%>
                        <td>SPG1</td>
                        <td><asp:TextBox ID="Txtspg1" runat="server" CssClass="form-control" ></asp:TextBox></td>
                         <td>SPG2</td>
                        <td><asp:TextBox ID="Txtspg2" runat="server"  CssClass="form-control"></asp:TextBox></td>
                         <td>SPG3</td>
                        <td><asp:TextBox ID="Txtspg3" runat="server" CssClass="form-control" ></asp:TextBox></td>
                         <td>SPG4</td>
                        <td><asp:TextBox ID="Txtspg4" runat="server" CssClass="form-control" ></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Stopper Pipe Cutting Wheels Replaced</td>
                        <td>
                           
                            
                            <asp:DropDownList ID="DDLStpipe" runat="server" AutoPostBack="True" CssClass="form-control ll">
                                
                                <asp:ListItem>N</asp:ListItem>
                                <asp:ListItem>Y</asp:ListItem>
                            </asp:DropDownList>
                           </td>
                            
                         <td>Heat No</td>
                        <td><asp:TextBox ID="Txtstheatno" runat="server" CssClass="form-control" AutoPostBack="True" ></asp:TextBox></td>
                        <td>Wheel No</td>
                         <td>
                            <asp:DropDownList ID="DropDownList4" CssClass="form-control ll" runat="server">
                            </asp:DropDownList>
                        </td>
                        <%--<td><asp:TextBox ID="Txtstwhlno" runat="server" CssClass="form-control"></asp:TextBox></td>--%>
                        
                    </tr>
                    <tr>
                          <td> ST.Pipe Cutting Wheels Life:</td>
                        <td>
                            <asp:TextBox ID="Txtstpipe" runat="server" CssClass="form-control"></asp:TextBox></td>
                       
                       </tr>

            </table>
                    </asp:Panel>
                    
       <br /><br />
         <div class ="row">
        <div class="table-responsive">
       <table id="table7" class="table">
            <tr>
                        <td>remarks:           <td>
                            <asp:TextBox ID="Txtremark" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox></td>
                      
                    </tr>
                <tr>
          <td  colspan="2" align="center"> <asp:Button ID="Btnsave" runat="server" Text="SAVE" CssClass="button button2" />
                    <asp:Button ID="Btnclear" runat="server" Text="CLEAR"  CssClass="button button2" />
                    <asp:Button ID="Btnexit" runat="server" Text="EXIT" CssClass="button button2" />
              <asp:Label ID="Label1" runat="server" ></asp:Label>
          </td>
                    
                    </tr>
           </table>
           <asp:Panel runat="server" ID="Panel7" >
            <table id="table6" class="table">
           <tr>
               <td> <asp:DataGrid ID="dg_insert" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="table" ForeColor="Black" GridLines="Vertical" ViewStateMode="Enabled">
                             <%--  <Columns>
								<asp:ButtonColumn Text="Select" HeaderText="Select" CommandName="Select"></asp:ButtonColumn></Columns>--%>
                               <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                               <AlternatingItemStyle BackColor="#CCCCCC" />
                               <FooterStyle BackColor="#CCCCCC" />
                               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                               <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />   
                   
                           </asp:DataGrid></td>
           </tr>
       </table>
               </asp:Panel>
           <div class ="row">
        <div class="table-responsive">
            
              <table id="table8" class="table">
                    <TR>
					<TD colSpan="6"><asp:datagrid id="dghotwheelineheader" CssClass="table" runat="server" CellPadding="1" CellSpacing="1" AutoGenerateColumns="False" forecolor="Black">
							<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
							<HeaderStyle ForeColor="White" BackColor="Navy"></HeaderStyle>
							<Columns>
								<asp:ButtonColumn Text="Select" HeaderText="Select" CommandName="Select"></asp:ButtonColumn>
								<asp:BoundColumn DataField="Date" HeaderText="Date"></asp:BoundColumn>
								<asp:BoundColumn DataField="Shift" HeaderText="Shift "></asp:BoundColumn>
								<asp:BoundColumn DataField="SSEJE" HeaderText="SSE/JE"></asp:BoundColumn>
								<asp:BoundColumn DataField="StartTime" HeaderText="Start time"></asp:BoundColumn>
								<asp:BoundColumn DataField="FinishTime" HeaderText="Finish time"></asp:BoundColumn>
								
								<asp:BoundColumn DataField="Moulding_WO_No" HeaderText="Moulding_WO_No"></asp:BoundColumn>
								<asp:BoundColumn DataField="SPG1Operator" HeaderText="SPG1 Operator"></asp:BoundColumn>
								<asp:BoundColumn DataField="SPG2Operator" HeaderText="SPG2 Operator"></asp:BoundColumn>
                                <asp:BoundColumn DataField="SPG3Operator" HeaderText="SPG3 Operator"></asp:BoundColumn>
								<asp:BoundColumn DataField="SPG4Operator" HeaderText="SPG4 Operator"></asp:BoundColumn>
                              
							</Columns>
						</asp:datagrid></TD>
				</TR></table></div></div>

            <asp:Panel ID="panel8" runat="server">
            <asp:DataGrid ID="grid1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" CssClass="table">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" Mode="NumericPages" />
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="select process_type,heatno,wheel_no,spg_temp,spg_mc_no,spg_status,spg_xc_code,MCoperator from mm_hotwheelline_spgnew where date=CONVERT(varchar, getdate(),110) order by process_type ">
          </asp:SqlDataSource>
        </asp:Panel>

            </div></div> 
             
       <%-- </asp:Panel><br /><br />--%>
       
    </form></div>
     <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
</body>
</html>
