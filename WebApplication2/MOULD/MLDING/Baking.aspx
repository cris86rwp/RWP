<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Baking.aspx.vb" Inherits="WebApplication2.Baking" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Baking station</title>
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

    <link href="../../StyleSheet1.css" rel="stylesheet" />

 
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
     <div class="container">
            <div class="row">
                <div class="table-responsive">
    <form id="form2" runat="server">
        
                  <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                       
              <asp:Panel runat="server" ID="panel1">
                 <table class="table">
                      <tr>
                   <td vAlign="top" align="middle"><h2>Baking Station</h2><hr class="prettyline" /></td>
               </tr>
                 </table>
            <table  class="table">
              
                <tr>
                    <td>Date:</td>
                    <td>
                        <asp:TextBox ID="txtdate" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox></td>
                    <td>shift:</td>
                    <td>
                        <asp:DropDownList ID="Ddlshift" CssClass="ll" runat="server">
                            <asp:ListItem>select-shift</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>G</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>SSE/JE:</td>
                    <td>
                        <asp:TextBox ID="txtSSEJE" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>Operator:</td>
                    <td>
                        <asp:TextBox ID="txtoperator" runat="server" CssClass="form-control"></asp:TextBox>
                       <%-- <asp:requiredfieldvalidator id="rfvOperators" runat="server" Display="Dynamic" ErrorMessage="*" ControlToValidate="txtoperator"></asp:requiredfieldvalidator>--%>
                    </td>

                    <td>Moulding W.O. No.:</td>
                    <td>
                        <asp:TextBox ID="txtmould" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td>Mould ORIGIN:</td>
                   
                    <td>
                        <asp:RadioButtonList ID="rbl1" runat="server" CssClass="rbl" AutoPostBack="true"  RepeatLayout="Flow" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1" Selected="True">Heat</asp:ListItem>
                            <asp:ListItem Value="2">MPO</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    </tr>
                </table>
                  <asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                   </asp:Panel>
        <asp:Panel runat="server" ID="panel3">
            <table class="table">
                <tr>
                    <td>
                        <asp:Label ID="heat" runat="server" Text="Heat No:"></asp:Label> </td>
                    <td>
                        <asp:TextBox ID="txtheat" CssClass="form-control" runat="server" AutoPostBack="True"></asp:TextBox>
                        <%--<asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage=" Allow 6 digit numbers" MaximumValue="5"></asp:RangeValidator>--%>
                    </td>
                    <%--if heat no selected then display start&finish time--%>
                    <td> <asp:Label ID="starttime" runat="server" Text="Start time"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtstarttime" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="finishtime" runat="server" Text="Finish time"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtfinishtime" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                </table></asp:Panel>
            <asp:Panel runat="server" ID="panel4">
                <table class="table">
                <tr>
                    <td>
                        <asp:Label ID="mpo" runat="server" Text="MPO:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="Ddlmpo" CssClass="ll" runat="server">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>MPO1</asp:ListItem>
                            <asp:ListItem>MPO2</asp:ListItem>
                            <asp:ListItem>MPO3</asp:ListItem>
                        </asp:DropDownList></td>
                
                </tr>
                </table>
                </asp:Panel>

                <asp:Panel runat="server" ID="panel2">
                    <table class="table">
                <tr>
                    <td>
                        <asp:Label ID="sandqty" runat="server" Text=" Sand Qty:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtsandqty" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="domeingm" runat="server" Text="Dome(in gm):"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtdomegm" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="domeinkg" runat="server" Text="Dome(in kg):"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtdomekg" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr >
                    <td rowspan="2">
                        <asp:Label ID="dometemp" runat="server" Text="Dome temp:"></asp:Label></td>
                   <td rowspan="2">
                     
                       1 <asp:TextBox ID="txtdometmp1" runat="server" CssClass="form-control"></asp:TextBox>
                  </td>
                    
                    <td rowspan="2">
                        
                        2<asp:TextBox ID="txtdometmp2" runat="server" CssClass="form-control"></asp:TextBox>
                        
                    </td>
                    
                    <td  rowspan="2" colspan="2">
                        <asp:Label ID="padtemp" runat="server" Text="Pad temp:"></asp:Label></td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                                 </tr>
                <tr>
                    
                    
                    
                    
                   <td>
                        <asp:TextBox ID="txtpadtmp1" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtpadtmp2" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtpadtmp3" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtpadtmp4" runat="server" CssClass="form-control"></asp:TextBox></td>
   
                </tr>
                </table>

             <table class="table">
                            
                            <tr >
                                <td>Sprue Temp(pad wise)</td>
                                <td>
                                    1</td>
                                <td>
                                    2</td>
                                <td>
                                    3</td>
                                <td>
                                    4</td>
                                <td>
                                    5</td>
                                <td>
                                     6</td>
                                <td>
                                    7</td>
                                <td>
                                     8</td>
                                <td>
                                    9</td>
                            </tr>
                            <tr>
                                <td>Pad1
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpad11" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad12" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad13" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad14" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad15" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad16" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad17" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad18" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad19" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Pad2</td>
                                <td>
                                    <asp:TextBox ID="txtpad21" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad22" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad23" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad24" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad25" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad26" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad27" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad28" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad29" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Pad3</td>
                                <td>
                                    <asp:TextBox ID="txtpad31" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpad32" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad33" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad34" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad35" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad36" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad37" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad38" runat="server" CssClass="form-control"></asp:TextBox></td>
                               <td>
                                    <asp:TextBox ID="txtpad39" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Pad4</td>
                                <td>
                                    <asp:TextBox ID="txtpad41" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpad42" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpad43" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad44" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad45" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad46" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad47" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad48" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtpad49" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                                               </table><br />
            <table class="table">
                <tr>
                    <td>
                        <asp:Label ID="copeno" runat="server" Text="Cope No.:"></asp:Label>.</td>
                   <td> <asp:TextBox ID="txtcopeno" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="copetmp" runat="server" Text="Cope Temp:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcopetmp" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="padno" runat="server" Text="Pad No:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="Ddlpadno" CssClass="ll" runat="server" Width="40px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>
                        <asp:Label ID="baktime" runat="server" Text="Bak Time:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtbaktime" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="domeno" runat="server" Text="Dome No:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="Ddldomeno" CssClass="ll" runat="server" Width="40px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>
                        <asp:Label ID="dometime" runat="server" Text="Dome Time:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtdometime" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="status" runat="server" Text="Status:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="Ddlstatus" CssClass="ll" runat="server">
                            <asp:ListItem>OK</asp:ListItem>
                            <asp:ListItem>Not OK</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="position:center">Remarks:</td>
                    <td>
                        <asp:TextBox ID="txtremarks" runat="server" CssClass="form-control"></asp:TextBox></td>
                 
                </tr>
                <tr>
                       <td>
                        <asp:Button ID="btnsave" runat="server" CssClass="button button2" Text="SAVE"  /></td>
           <td> <asp:Button ID="btnclear" runat="server" Text="CLEAR" CssClass="button button2" /></td>
           
                       <td><asp:Button ID="btnexit" runat="server" CssClass="button button2" Text="EXIT" />
    </td>
                </tr>
                 </table>
               
                    
           

        </asp:Panel>
        
               
      
       
    </form>
                     </div>
                </div>
            </div>
     <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
</body>
</html>



