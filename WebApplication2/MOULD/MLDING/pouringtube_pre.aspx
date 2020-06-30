<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pouringtube_pre.aspx.vb" Inherits="WebApplication2.pouringtube_pre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pouring Tube Preparation</title>
  
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

    function isInputNumber(evt) {

                    var ch = String.fromCharCode(evt.which);
        if (!(/[0-9]/.test(ch)))
        {
        evt.preventDefault();
    }

         }

       function isNumber(evt, element) {

        var charCode = (evt.which) ? evt.which : event.keyCode

        if (
           /* (charCode != 45 || $(element).val().indexOf('-') != -1) && */     // “-” CHECK MINUS, AND ONLY ONE.
            (charCode != 46 || $(element).val().indexOf('.') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
            (charCode < 48 || charCode > 57))
            return false;

        return true;
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

        
          
         <asp:Panel ID="Panel1"  runat="server"  >

             <div class ="row">
        <div class="table-responsive">
                <table id="table1" class="table">
                      <tr>
                   <td colspan="9"  ><h3>Pouring Tube Preparation Details </h3> <hr class="prettyline" /></td>
                </tr>
                    <tr>
                         <td>Date </td>
                    <td >
                        <asp:TextBox ID="date_txt" runat="server" CssClass="form-control" Width="90px"  ></asp:TextBox>
                   
                    </td>  
                      
                        <td>Shift
                    </td>
                    <td>
                        <asp:DropDownList ID="shift_dd1" runat="server" CssClass="form-control ll" AutoPostBack="True" Width="60px" >
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>G</asp:ListItem>
                        </asp:DropDownList></td>
                    
                     
                       
                    <td> SSE/JE</td>
                    <td>
                        <asp:TextBox ID="sse_txt" runat="server" CssClass="form-control" Width="90px"></asp:TextBox>
                       
                        <td>
                            Operator1
                        </td>
                <td> <asp:TextBox ID="op1_txt" runat="server" CssClass="form-control"></asp:TextBox></td>
                        <td>Operator2</td>
                        <td>
                            <asp:TextBox ID="op2_txt" runat="server" CssClass="form-control"></asp:TextBox></td>
                        <td> Operator3</td>
                        <td> <asp:TextBox ID="op3_txt" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Super 3000 Mixing done (in KG)</td>
                        <td class="tooltiptext">
                            <asp:TextBox ID="super_txt" runat="server"  CssClass="form-control" width="90px" ToolTip="Enter maximum 3 numeric value" onkeypress="isInputNumber(event)" MaxLength="3" TextMode="Number"   ></asp:TextBox><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="please enter valid quantity" ControlToValidate="super_txt" ForeColor="#6600FF" MaximumValue="999" MinimumValue="1"></asp:RangeValidator>
                        </td>
                        <td >No of HC Pressing & Chipping Done</td>
                        <td class="tooltiptext">
                            <asp:TextBox ID="pressing_txt" runat="server" onkeypress="isInputNumber(event)" CssClass="form-control" Width="90px" ToolTip="Enter maximum 2  numeric value" MaxLength="2" TextMode="Number"></asp:TextBox></td>
                         </tr>
                    <tr>
                        <td>No of P Tube measuring & cutting done</td>
                        <td class="tooltiptext">
                            <asp:TextBox ID="measuring_txt" runat="server" onkeypress="isInputNumber(event)" CssClass="form-control" Width="90px" ToolTip="Enter maximum 2  numeric value" MaxLength="2" TextMode="Number" ></asp:TextBox></td>
                        <td>Tube Height (in Inch)</td>
                        <td>
                            <asp:TextBox ID="height_txt" runat="server" onkeypress="return isNumber(event, this)"    CssClass="form-control" Width="90px" ></asp:TextBox></td>
                      </tr>
                              </table>
            <table id="table2" class="table">
                                     
                         
                                                                                           <caption>
                                                                                               <br />
                                                                                               <tr>
                                                                                                   <td colspan="2">
                                                                                                       <br />
                                                                                                       Tube Centering &amp; reaming Done</td>
                                                                                                   <td class="tooltiptext">TN1<asp:TextBox ID="tube_centeringtn1" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number" ToolTip="Enter maximum 6 digit of tube no"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN2<asp:TextBox ID="tube_centeringtn2" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN3<asp:TextBox ID="tube_centeringtn3" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN4<asp:TextBox ID="tube_centeringtn4" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN5<asp:TextBox ID="tube_centeringtn5" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN6<asp:TextBox ID="tube_centeringtn6" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN7<asp:TextBox ID="tube_centeringtn7" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN8<asp:TextBox ID="tube_centeringtn8" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td class="auto-style1">TN9<asp:TextBox ID="tube_centeringtn9" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN10<asp:TextBox ID="tube_centeringtn10" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                               </tr>
                                                                                               <tr>
                                                                                                   <td colspan="2">
                                                                                                       <br />
                                                                                                       Parting rings fitted &amp; Flame dry in Tube</td>
                                                                                                   <td class="tooltiptext">TN1<asp:TextBox ID="parting_tn1" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number" ToolTip="Enter maximum 6 digit of tube no"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN2<asp:TextBox ID="parting_tn2" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN3<asp:TextBox ID="parting_tn3" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN4<asp:TextBox ID="parting_tn4" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN5<asp:TextBox ID="parting_tn5" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN6<asp:TextBox ID="parting_tn6" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN7<asp:TextBox ID="parting_tn7" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN8<asp:TextBox ID="parting_tn8" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td class="auto-style1">TN9<asp:TextBox ID="parting_tn9" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN10<asp:TextBox ID="parting_tn10" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                               </tr>
                                                                                               <tr>
                                                                                                   <td rowspan="5">
                                                                                                       <br />
                                                                                                       <br />
                                                                                                       <br />
                                                                                                       <br />
                                                                                                       Grinding &amp; Glazing of Tubes</td>
                                                                                                   <td>&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tube No<br /></td>
                                                                                                   <td class="tooltiptext">TN1<asp:TextBox ID="tubeno_tn1" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number" ToolTip="Enter maximum 6 digit of tube no"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN2<asp:TextBox ID="tubeno_tn2" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN3<asp:TextBox ID="tubeno_tn3" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN4<asp:TextBox ID="tubeno_tn4" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN5<asp:TextBox ID="tubeno_tn5" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN6<asp:TextBox ID="tubeno_tn6" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN7<asp:TextBox ID="tubeno_tn7" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN8<asp:TextBox ID="tubeno_tn8" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN9<asp:TextBox ID="tubeno_tn9" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>TN10<asp:TextBox ID="tubeno_tn10" runat="server" CssClass="form-control" MaxLength="6" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                               </tr>
                                                                                               <tr>
                                                                                                   <td>&nbsp;&nbsp;&nbsp;&nbsp; Vaccume</td>
                                                                                                   <td class="tooltiptext">
                                                                                                       <asp:TextBox ID="vaccume_txt1" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number" ToolTip="Enter maximum 3  numeric value"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="vaccume_txt2" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="vaccume_txt3" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="vaccume_txt4" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="vaccume_txt5" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="vaccume_txt6" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="vaccume_txt7" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="vaccume_txt8" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td class="auto-style1">
                                                                                                       <asp:TextBox ID="vaccume_txt9" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="vaccume_txt10" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                               </tr>
                                                                                               <tr>
                                                                                                   <td>&nbsp;&nbsp; Time (in Sec)&nbsp;</td>
                                                                                                   <td class="tooltiptext">
                                                                                                       <asp:TextBox ID="time_txt1" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number" ToolTip="enter maximum 3  numeric value"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="time_txt2" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="time_txt3" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="time_txt4" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="time_txt5" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="time_txt6" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="time_txt7" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="time_txt8" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td class="auto-style1">
                                                                                                       <asp:TextBox ID="time_txt9" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td>
                                                                                                       <asp:TextBox ID="time_txt10" runat="server" CssClass="form-control" MaxLength="3" onkeypress="isInputNumber(event)" TextMode="Number"></asp:TextBox>
                                                                                                   </td>
                                                                                               </tr>
                                                                                               <tr>
                                                                                                   <td>Glaze used (in Kg)&nbsp; &nbsp;</td>
                                                                                                   <td class="tooltiptext" colspan="2">
                                                                                                       <asp:TextBox ID="txt_glaze" runat="server" CssClass="form-control" MaxLength="2" onkeypress="isInputNumber(event)" TextMode="Number" ToolTip="Enter maximum 2 numeric value"></asp:TextBox>
                                                                                                   </td>
                                                                                                   <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                                       <asp:Label ID="Label3" runat="server" Text="Baume"></asp:Label>
                                                                                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                                       <br />
                                                                                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                                       <br />
                                                                                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                                                                   <td class="tooltiptext" colspan="2">
                                                                                                       <asp:TextBox ID="Txt_Baume" runat="server" CssClass="form-control" MaxLength="2" onkeypress="isInputNumber(event)" TextMode="Number" ToolTip="Enter maximum 2 numeric value"></asp:TextBox>
                                                                                                   </td>
                                                                                               </tr>
                                                                                               <tr>
                                                                                                   <td colspan="6">&nbsp;</td>
                                                                                               </tr>
                                                                                               <tr>
                                                                                                   <td colspan="3">
                                                                                                       <asp:Label ID="Label2" runat="server" Text="Remarks">
                                                                                              </asp:Label>
                                                                                                   </td>
                                                                                                   <td colspan="6">
                                                                                                       <asp:TextBox ID="txt_remark" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                                                                                                   </td>
                                                                                               </tr>
                                                                                               <tr>
                                                                                                   <td colspan="12">
                                                                                                       <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>
                                                                                                       <asp:Button ID="Button1" runat="server" CssClass="button button2" Text="Save" />
                                                                                                       <asp:Button ID="Button2" runat="server" CssClass="button button2" Text="Clear" />
                                                                                                   </td>
                                                                                               </tr>
                                                                                               <tr>
                                                                                                   <td></td>
                                                                                               </tr>
                                                                                           </caption>
                                                                                      
                                                                               
                                                                              
                                                                      
                                                              
                                                              
                     
                  
         </table>
            </div></div>      
        </asp:Panel>
       <br />
       
    </form></div>
     <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS ></h4></div>
    </body>
</html>

