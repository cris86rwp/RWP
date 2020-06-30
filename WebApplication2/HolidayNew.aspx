<%@ Page Language="vb" AutoEventWireup="false" Codebehind="HolidayNew.aspx.vb" Inherits="WebApplication2.HolidayNew" Culture="en-GB" uiCulture="en-GB" errorPage="InvalidSession.aspx" %>



<!DOCTYPE HTML>
<HTML>
	<HEAD>
		<title>Holidays</title>
	<%--	<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">--%>

        
        <meta charset="utf-8"/>
 
 <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">

		
 
   <LINK id="mss" href="/wap.css" rel="stylesheet"/>
		<META content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<META content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<META content="JavaScript" name="vs_defaultClientScript"/>
		<META content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
         <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
         <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
        <link href="jQuery.datetimepicker.min.css" rel="stylesheet" />
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
            <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"
    rel="stylesheet" type="text/css" />
   <link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $('[id*=lstShop]').multiselect({
            includeSelectAllOption: true
        });
    });
</script>
     <style type="text/css">
         .ui-datepicker {
    background: #333;
    border: 1px solid #555;
    color: #EEE;
    
}
</style>
        <script>

 function isNumber1(evt, element) {

                    var charCode = (evt.which) ? evt.which : event.keyCode

                      if (
                           (charCode != 45 ) && (charCode != 47 ) &&     // 
                           (charCode < 48 || charCode > 57))
                      return false;

                  return true;
            } 


        function OnlyNumericEntry() {
            if ((event.keyCode < 48 || event.keyCode > 57)) {
            event.returnValue = false;
             }
            }


        function isNumber1() {
                if ((event.keyCode < 48 || event.keyCode > 57 || event.keyCode != 45 || event.keyCode != 47 )) {
        event.returnValue = false;
            }
</script>

 
	</HEAD>
<a href="Holidays.aspx">Holidays.aspx</a>
	<body>
             <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse " id="navbarSupportedContent-333" >
      <ul class="navbar-nav ml-auto navbar-center">
         <li class="nav-item" style="font-weight: bold">
             <h1 style="color:white; font-size:30px; margin-left:350px; margin-top:5px">Rail Wheel Plant, Bela</h1> 
       
         </li>
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
          <%--<img src="../../../CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="50" style="border-width: 34px; background-position: 5px 5px; width:50px;margin-top:3px;border-color:white; border-width:50px"/>
        --%><img src="../../NewFolder1/CRIS-Recruitment.jpg" height="45" style="border-radius:43%"/>
       </a>
      </li>
     </ul>
      
  </div>
</nav> 
      
<!--/.Navbar -->

          <div class="container">
              <div class="row">
                <div class="table">
       
        	<form id="Form1" method="post" runat="server">
                  <%--   <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />--%>
     
				<TABLE id="Table1" class="table">
					<div class="row">
						<div class="col" vAlign="middle" align="center" colSpan="6"><h2>MMS 
									Holiday Master</h2><%--<hr class="prettyline" />--%></div>
					</div>
					<div class="row">
						<div class="col" vAlign="middle" align="left"  colSpan="6">Message:
							<asp:label id="lblMessage" runat="server" ForeColor="Red" ></asp:label></div>
					</div>
                    <br />
                   
                    <div class="row">
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtToDate" ControlToValidate="txtFromDate" ErrorMessage="To Date should be greater than From Date" ForeColor="#FF3300" Operator="LessThanEqual" Type="Date"></asp:CompareValidator>
					
                    </div>
                   
                <%--         <div class="col"> 
                <asp:RadioButtonList ID="rble" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" repeatlayout="flow">
                    <asp:ListItem>Edit&nbsp;</asp:ListItem>
                     <asp:ListItem>Save</asp:ListItem>
                </asp:RadioButtonList></div>--%>
                  
			<asp:Panel id="Panel1"  runat="server">

                   <div class="row"> 
                         
                       

                      
                       <div class="col" align="center"><asp:button id="btnSunday" runat="server" Text="Save all Sundays" borderStyle="Solid" Font-Bold="True" Font-Size="20px" CssClass="btn btn-dark"></asp:button>
						</div>
                       
                       

                   </div>
                    <br />
                <br />
                <div class="row">
                        <div class="col-2">Letter No</div>
                        <div class="col-2"><asp:textbox id="txtLetter" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></div>
                        
                      <div class="col-1"><asp:checkbox id="chkSelect" runat="server" AutoPostBack="True" Text="All" RepeatDirection="Horizontal" RepeatLayout="Flow">
                          
						</asp:checkbox></div>
						
                    <%-- <div class="col-4" align="center"><asp:DropDownList ID="ddloption" runat="server" AutoPostBack="true"  CssClass="form-control ll" Width="150px" >
                                <asp:ListItem Value="1" Selected="true">Individual Shops</asp:ListItem>
                               <asp:ListItem Value="0">All Shops</asp:ListItem>
                             
                           </asp:DropDownList>
                       </div>--%>
                    <div class="col-3"><asp:checkboxlist id="chkShop" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="Melting">Melting&nbsp;</asp:ListItem>
                            <asp:ListItem Value="Moulding">Moulding&nbsp;</asp:ListItem>
                            <asp:ListItem Value="WFPS">WFPS&nbsp;</asp:ListItem>

						</asp:checkboxlist></div>
                   <div class="col" >From Date</div>
						<div class="col">
							<asp:textbox id="txtFromDate" runat="server" CssClass="form-control" AutoPostBack="True" placeholder="dd/mm/yyyy"></asp:textbox></div>
					
                    </div> <br />
							
                     <%--<asp:Dropdownlist ID="lstShop" runat="server" AutoPostBack="true">  
        <asp:ListItem Text="Melting" Value="1"></asp:ListItem>  
        <asp:ListItem Text="Moulding" Value="2"></asp:ListItem> 
        <asp:ListItem Text="WFP Shop" Value="3" ></asp:ListItem>  
    </asp:Dropdownlist>
                    </div>--%>
					
						<%--<div class="col">
							<asp:checkbox id="chkMOPO" runat="server" AutoPostBack="True" Text="Moulding" CssClass="checkbox-inline"></asp:checkbox></div>
						<div class="col" >
							<asp:checkbox id="chkWFPS" runat="server" AutoPostBack="True" Text="WFP Shop" CssClass="checkbox-inline"></asp:checkbox></div>
                       --%>
					 <%--	<div class="col">
							<asp:checkbox id="chkAMA" runat="server" AutoPostBack="True" Text="Axle Shop" CssClass="checkbox-inline"></asp:checkbox></div>--%>
					
                <div class="row">
						<div class="col" >Days</div>
						<div class="col" >
							<asp:textbox id="txtDays" runat="server" CssClass="form-control" AutoPostBack="True" onkeypress="OnlyNumericEntry()"></asp:textbox></div>	
                    <div class="col-1" >To Date</div>
						<div class="col-3">
							<asp:textbox id="txtToDate" runat="server" CssClass="form-control" AutoPostBack="True" onkeypress="isNumber1()" width="150px" MaxLength="10" placeholder="dd/mm/yyyy"></asp:textbox></div>
                        <div class="col" >Reason</div>
						<div class="col">
							<asp:dropdownlist id="ddlReasons" runat="server" CssClass="form-control ll"  AutoPostBack="True"></asp:dropdownlist>
                     </div>
                       </div>
                   
					
                    <br />
					<div class="row">
                         	<div class="col-2">     <asp:textbox id="txtReason" runat="server"  CssClass="form-control " Placeholder="Reason"  AutoPostBack ="True" Visible="false"></asp:textbox></div>
                <div class="col"></div>
                <div class="col"></div>
               <div class="col"></div>
               
                        </div><br />
					<%--<div class="col"  colSpan="3">--%> 
							
                        <%--   <div class="col"></div>
                        <div class="col"></div>
                        <div class="col"></div>
                         

					</div>
                        </div>
                    <br />
					<%--<div class="row">
						
						<div class="col" align="middle">
							<asp:checkbox id="chkSundays" runat="server" AutoPostBack="True" Text="Sundays only" CssClass="checkbox-inline" ></asp:checkbox></div></div><br />
                  --%>  <div class="row">
						<div class="col" align="middle"> 
							<asp:button id="btnSave" runat="server" Text="Save" borderStyle="Solid" Font-Bold="True" Font-Size="20px" CssClass="btn btn-dark"></asp:button>
						
							<asp:button id="btnDelete" runat="server"  Text="Delete" borderStyle="Solid" Font-Bold="True" Font-Size="20px" CssClass="btn btn-dark"></asp:button>
						<asp:button id="btnReport" runat="server"  Text="Report" borderStyle="Solid" Font-Bold="True" Font-Size="20px" CssClass="btn btn-dark"></asp:button></div>
						
					</div>
				</TABLE>
               
                <br />
                
                </asp:panel>
								     <asp:Panel ID="panel3" runat="server">
                  <asp:DataGrid ID="dgHolidays" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" autogeneratecolumns="false" CssClass="table">
            <AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
							
          
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" Mode="NumericPages" />
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                   <Columns>
								<asp:BoundColumn DataField="Ref_Letter_No" HeaderText="Letter No"></asp:BoundColumn>
								<asp:BoundColumn DataField="Shop" HeaderText="Shop"></asp:BoundColumn>
							<asp:BoundColumn DataField="Reason" HeaderText="Reason"></asp:BoundColumn>
								<asp:BoundColumn DataField="LDate" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundColumn>
                             <asp:BoundColumn DataField="NO_of_Days" HeaderText="No of Days"></asp:BoundColumn>
								
							</Columns>
            </asp:DataGrid>
        </asp:Panel>
               
                
                <%-- <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>--%>
<%--<div>
    <asp:Panel ID="pnModelPopup" runat="server" CssClass="popup">
        <table>
            <tr>
                <td>
                    To 
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
               <asp:Button ID="btnSignin" runat="server" Text="Sign in" Style="margin-left: 100px" OnClick="btnSignin_Click" />
                </td>
                
            </tr>
        </table>
    </asp:Panel>
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"                                PopupControlID="pnModelPopup"                                             
        TargetControlID="lnkbtnSignin" DropShadow="true"                                            BackgroundCssClass="modalBackground"
        CancelControlID="btnCancel" PopupDragHandleControlID="pnModelPopup"                       OnOkScript="onOk()">
    </asp:ModalPopupExtender>
    <div style="margin-left: 300px">
        <asp:LinkButton ID="lnkbtnSignin" runat="server">Sign in</asp:LinkButton>
    </div>
</div>--%>

		</form>
          
         </div></div></div>
        <div class="card-footer" align="middle" style="text-align:right;background-color:#cccccc;vertical-align:middle;height:45px"><h4 style="color: black;font-size:15px">MAINTAINED BY CRIS</h4></div>
		
          <script type="text/javascript">
$(document).ready(function () {
                       
                        $('#txtToDate').datepicker({
                            dateFormat: "dd/mm/yy" 
                        });
                        
                        $("#txtFromDate").datepicker({
                            dateFormat: "dd/mm/yy", 
                           
                            onSelect: function(date){            
                                var date1 = $('#txtFromDate').datepicker('getDate');           
                                                 
                                $('#txtToDate').datepicker("option","minDate",date1);            
                            }
                        });
    
  function getDate( element ) {
    var date;
    var dateFormat = "dd/MM/yyyy";
    try {
      date = $.datepicker.parseDate( dateFormat, element.value );
    } catch( error ) {
      date = null;
    }

    return date;
  }
    });

	</body>
</HTML>
