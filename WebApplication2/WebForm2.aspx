
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WebForm2.aspx.vb" Inherits="WebApplication2.WebForm2" Culture="en-GB" uiCulture="en-GB" %>

<!DOCTYPE html>

<HTML>
	<HEAD runat="server">
		<title>BreakDownMemo</title>
		<LINK id="mss" href="/wap.css" rel="stylesheet"/>
		<META content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<META content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<META content="JavaScript" name="vs_defaultClientScript"/>
		<META content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
        
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" type="text/javascript"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" type="text/javascript"></script>
         <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
        <link href="jQuery.datetimepicker.min.css" rel="stylesheet" />
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
            <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script type="text/javascript" src= "https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js">  </script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
     <style type="text/css">
         .ui-datepicker {
    background: #333;
    border: 1px solid #555;
    color: #EEE;
    
}
         </style>
        </head>
	<body>
           
    <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../../..//NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse " id="navbarSupportedContent-333" >
      <ul class="navbar-nav ml-auto navbar-center">
         <li class="nav-item" style="font-weight: bold">
             <h1 style="color:white; font-size:30px; margin-left:430px; margin-top:5px">Rail Wheel Plant, Bela</h1> 
       
         </li>
          </ul>
    <ul class="navbar-nav ml-auto  navbar-right">
        <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "  style="font-size:30px"></i>
        </a></li>

       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"  style="font-size:30px"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
         
        <img src="../../../NewFolder1/CRIS-Recruitment.jpg" height="45" style="border-radius:43%"/>
       </a>
      </li>
     </ul>
      
  </div>
</nav> 
<!--/.Navbar -->

         
         <div class="container">
		<form id="Form1" method="post" runat="server">
            
                <div class="table">
			<asp:panel id="Panel1" runat="server">
			
					<div  class="row">
						<div  class="col" align="center" colSpan="6">
                            <h3>
                                Machine Break Down Memo
                              
                            </h3>
                            <div  class="col" align="right">Group:
				
							<asp:label id="lblGroupCode" runat="server"></asp:label></div >
				
                        </div ></div>
				
					
                        <br />
					<div  class="row">
						<div  class="col" colSpan="6">
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></div >
					</div >
                        <br />
					<div  class="row">
					
						
					
							<asp:textbox id="txtDate" runat="server" class="form-control"  Visible="false"></asp:textbox>
						<%--	<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="*" ControlToValidate="txtDate"></asp:requiredfieldvalidator>
                      --%>      
						
						<div  class="col">Shift</div >
						
						<div  class="col">
							<asp:radiobuttonlist id="rblShift" runat="server" CssClass="rbl" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="A" Selected="True">A</asp:ListItem>
								<asp:ListItem Value="B">B</asp:ListItem>
								<asp:ListItem Value="C">C</asp:ListItem>
							</asp:radiobuttonlist></div >
					
						<div  class="col">Department</div >
						
						<div  class="col">
							<asp:label id="lblDepartment_code" runat="server">M</asp:label></div >
                       
						<div  class="col">Shop Code</div >
						
						<div  class="col">
							<asp:radiobuttonlist id="rblShop" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl"></asp:radiobuttonlist></div >
					
						
							 </div >
                        <br />
<asp:textbox id="txtOperator" runat="server" CssClass="form-control" Visible="false"></asp:textbox>
						
                <div  class="row">
						<div  class="col">Machine Code </div>
						<div class="col"><asp:dropdownlist id="ddlMachineCodes" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></div >
                      <%--  <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server"  ErrorMessage="*" InitialValue="1" ControlToValidate="ddlMachineCodes"></asp:requiredfieldvalidator>
<%--             --%>   <%--    <asp:CompareValidator ID="RequiredFieldValidator1" runat="Server" ValueToCompare="1" ControlToValidate="ddlMachineCodes" Operator="Equal" ErrorMessage="*" />
                    --%><div class="col">Breakdown Type</div>
                        <div class="col"><asp:dropdownlist id="rblBDType" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist>
                        <%--    <asp:CompareValidator ID="RequiredFieldValidator2" runat="Server" ValueToCompare="1" ControlToValidate="rblBDType" Operator="Equal" ErrorMessage="*" />
			--%>	</div>
                     
					<div class="col">Problem Type</div>
                        
					
						<div  class="col" >
                             <%-- <asp:listbox id="lstBDCodes" runat="server" AutoPostBack="True" CssClass="form-control ll" Visible="false"></asp:listbox>
						    --%>  <asp:dropdownlist id="dd1" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist>
                            
                         <%--   <asp:CompareValidator ID="RequiredFieldValidator3" runat="Server" ValueToCompare="1" ControlToValidate="dd1" Operator="Equal" ErrorMessage="*" />--%>
		</div>   </div>

					<br />
                <div  class="row">
									<div  class="col">Breakdown Start Date (dd/mm/yy)</div >
									
									<div  class="col">
										<asp:textbox id="txtFrom_date" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></div >
								
									<div  class="col">Time (hh:mm)</div >
								
									<div  class="col">
										<asp:textbox id="txtFrom_time" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox></div >
					
						<div  class="col">Breakdown Remarks </div>
						<div class="col">
                            
				<asp:textbox id="txtRemarks" runat="server" CssClass="form-control"  ></asp:textbox></div >
                  </div ><br />
               
				<br />
         
					<div  class="row">
				
						
						<div  class="col" align="center">
                            
						
                              <asp:button id="btnSave" runat="server" Text="Save"  Font-Size="16px"  BorderStyle="Solid" Font-Bold="True"  CssClass="btn btn-dark" ></asp:button>&nbsp;
							  <asp:button id="btnClear" runat="server" Text="Clear"  Font-Size="16px"  BorderStyle="Solid" Font-Bold="True"  CssClass="btn btn-dark" ></asp:button>
                             <asp:button id="btnExit" runat="server" Text="Exit"  Font-Size="16px"  BorderStyle="Solid" Font-Bold="True"  CssClass="btn btn-dark" ></asp:button>
                           </div>	</div >
				<div class="row"><div  class="col">Breakdown MemoNo
							<asp:label id="lblMemo" runat="server" ForeColor="Red"></asp:label>
						</div> </div>
				 <asp:datagrid id="DataGrid1" CssClass="table" runat="server" CellPadding="1" CellSpacing="1" AutoGenerateColumns="False" forecolor="Black">
                    <AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
                    <HeaderStyle ForeColor="White" BackColor="Navy"></HeaderStyle>
                    <Columns>
                    <asp:ButtonColumn Text="Select" HeaderText="Select" CommandName="Select"></asp:ButtonColumn>                         
                    <asp:BoundColumn DataField="Group1" HeaderText="Group"></asp:BoundColumn>
                    <asp:BoundColumn DataField="MemoSlip" HeaderText="Memo No"></asp:BoundColumn>
                    <asp:BoundColumn DataField="BDFromTime" HeaderText="BD Date Time"></asp:BoundColumn> 
                    <asp:BoundColumn DataField="Defect" HeaderText="Defect"></asp:BoundColumn>
                    <asp:BoundColumn DataField="BDTranDate" HeaderText="Transaction Date"></asp:BoundColumn> 
                    <asp:BoundColumn DataField="Shift" HeaderText="Shift"></asp:BoundColumn> 
                    <asp:BoundColumn DataField="Shop" HeaderText="Shop"></asp:BoundColumn> 
                    <asp:BoundColumn DataField="Machine" HeaderText="Machine"></asp:BoundColumn> 
                    <asp:BoundColumn DataField="BDType" HeaderText="BD Type"></asp:BoundColumn> 
                          <asp:BoundColumn DataField="Remarks" HeaderText="Remarks"></asp:BoundColumn>
               </Columns>
                    </asp:datagrid>
		
			</asp:panel>
                    </div></></form>
             </div>
        <div class="card-footer" style="text-align:right;background-color:#cccccc;vertical-align:middle;position:fixed;bottom:0;width:100%;height:60px"><h4 style="color: black;font-size:15px">MAINTAINED BY CRIS</h4></div>
	<script type="text/javascript">
     $(document).ready(function () {
                       
                        $('#txtFrom_date').datepicker({
                            dateFormat: "dd/mm/yy", 
                       
                            onSelect: function(date){            
                                var date1 = $('txtFrom_date').datepicker('getDate');           
                                                 
                              
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
          
</script>	
    </body>
</html>
