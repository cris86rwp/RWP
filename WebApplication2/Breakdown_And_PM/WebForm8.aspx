<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm8.aspx.vb" Inherits="WebApplication2.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PreventiveMaintenanceSchedule</title>
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
    
            

		<form id="Form2" method="post" runat="server">
			<asp:Panel id="Panel1" runat="server">
			
         <div class="container">
              <div class="table">
					<div class="row">
							<div  class="col" align="center" colSpan="6">
                            <h3>
                               Preventive Maintenance Schedule  </h3>
                                <div  class="col" align="right">Group:
				
								<asp:label id="lblMGroup" runat="server"></asp:label></div >
                            </div></div>
							<asp:label id="lblGroup" runat="server" Visible="False"></asp:label><hr class="prettyline" />
						<div class="col" align="right">
							<asp:label id="lblMode" runat="server" ForeColor="Red" Visible="false"></asp:label></div >
					
			
				<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
		
					
                <br />
				<div class="row">
					<div class="col">Shop</div>
                    <div class="col"  class="auto-style42">
								 <asp:DropdownList ID="shopCode" runat="server" AutoPostBack="True" CSSClass="form-control ll">
                                        <asp:ListItem Value="MS" Selected="True" >MS</asp:ListItem>
                                        <asp:ListItem Value="MO">MO</asp:ListItem>
                                     <asp:ListItem Value="PC">PC</asp:ListItem>
                                        <asp:ListItem Value="CL">CL</asp:ListItem>
                                        <asp:ListItem Value="ME">ME</asp:ListItem>
                                        <asp:ListItem Value="RT">RT</asp:ListItem>
                                  
                                    </asp:DropdownList>
                                   </div >
                    
						<div class="col">MachineID</div >
						
						<div class="col">
							<asp:dropdownlist id="cboMachine" CssClass="form-control ll" runat="server" AutoPostBack="True"></asp:dropdownlist></div >
					
						<%--<div class="col">SubAssembly</div >
				
						<div class="col">
							<asp:dropdownlist id="cboAssembly" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></div >--%>
                    <div class="col">PM-Done Date</div >
									<div class="col">
										<asp:textbox id="txtFrom" runat="server" CssClass="form-control" AutoPostBack="True" ></asp:textbox></div >
							
								
					</div >
				
	<br />
					
							
								<div class="row">
					
                                    <div class="col">Next Due Date</div >
                                    <div class="col">
                                        <asp:TextBox ID="txtTo" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox>
                                    </div >
                                    	<div class="col">CarriedOut</div >
				<div class="col">
							<asp:dropdownlist id="radType" CssClass="form-control ll" runat="server"  AutoPostBack="true">
								<asp:ListItem Value="Weekly" selected="True">Weekly</asp:ListItem>
								<asp:ListItem Value="Monthly">Monthly</asp:ListItem>
								<asp:ListItem Value="Quarterly">Quarterly</asp:ListItem>
								<asp:ListItem Value="Halfyearly">Halfyearly</asp:ListItem>
                                <asp:ListItem Value="Yearly">Yearly</asp:ListItem>
                                <asp:ListItem Value="50hrs">50hrs</asp:ListItem>
                                <asp:ListItem Value="250hrs">250hrs</asp:ListItem>
                                <asp:ListItem Value="500hrs">500hrs</asp:ListItem>
                                <asp:ListItem Value="1000hrs">1000hrs</asp:ListItem>
                                <asp:ListItem Value="10000hrs">10000hrs</asp:ListItem>
							</asp:dropdownlist></div>
                    <div class="col">Remarks
					</div><div class="col">
							<asp:textbox id="txtRemarks" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:textbox></div >
					</div >
                                <br />
                  Next Schedules:
                      <div class="row">
                          <div class="col"> <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div>
                          <div class="col"> <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div>
                          <div class="col"> <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div>
                          <div class="col"> <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div>
                          <div class="col"> <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div>
                          <div class="col"> <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div>
                          <div class="col"> <asp:TextBox ID="TextBox7" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div>
                          <div class="col"> <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div>
                          <div class="col"> <asp:TextBox ID="TextBox9" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div></div>
          <br />
                  <div class="row">
                          <div class="col"> <asp:TextBox ID="TextBox10" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div>
                          <div class="col"> <asp:TextBox ID="TextBox11" runat="server" AutoPostBack="True" CssClass="form-control" ></asp:TextBox></div>
                      <div class="col"></div>
                        <div class="col"></div>
                       <div class="col"></div>
                       <div class="col"></div>
                       <div class="col"></div>
                       <div class="col"></div>
                       <div class="col"></div>
                      </div>
                 
				
					
            <br />
                    <div class="row">
						<div class="col" style="HEIGHT: 21px" align="middle" colSpan="3">
							<asp:label id="lblDept" runat="server" Visible="False"></asp:label>
							<asp:label id="lblUserID" runat="server" Visible="False"></asp:label>

						</div >
					</div >
				<div class="row">
						
                            <div class="col" align="center" colSpan="7">
                           <asp:button id="btnSave" runat="server" Text="Save"  Font-Size="16px"  BorderStyle="Solid" Font-Bold="True"  CssClass="btn btn-dark" ></asp:button>
			
                           <asp:button id="btnClear" runat="server" Text="Reset"  Font-Size="16px"  BorderStyle="Solid" Font-Bold="True"  CssClass="btn btn-dark" ></asp:button>
	
							</div>	</div >

		
              <asp:datagrid id="datagrid1" CssClass="table" runat="server" CellPadding="1" CellSpacing="1" AutoGenerateColumns="False" forecolor="Black">
                   		 <AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
                    <HeaderStyle ForeColor="White" BackColor="Navy"></HeaderStyle>
                    <Columns>
                          
                    <asp:BoundColumn DataField="ShopCode" HeaderText="Shop code"></asp:BoundColumn>
                          <asp:BoundColumn DataField="machine_code" HeaderText="machine_code"></asp:BoundColumn>
                       
                   <asp:BoundColumn DataField="PM_Done_Date" HeaderText="Done Date"></asp:BoundColumn>
                          
                         <asp:BoundColumn DataField="Next_Due_date" HeaderText="Due Date"></asp:BoundColumn>
                      
                    
                          <asp:BoundColumn DataField="maintenance_type" HeaderText="Maintenance type"></asp:BoundColumn>
                         <asp:BoundColumn DataField="Remarks" HeaderText="Remarks"></asp:BoundColumn>
                  
                    </Columns>
						</asp:datagrid>
				<asp:Label id="lblMessage1" runat="server" ForeColor="Red"></asp:Label>
				
					  
	</div></div>
			</asp:Panel></form>
        
     <div class="card-footer" style="text-align:right;background-color:#cccccc;vertical-align:middle;position:fixed;bottom:0;width:100%;height:60px"><h4 style="color: black;font-size:15px">MAINTAINED BY CRIS</h4></div>
 <script type="text/javascript">
     $(document).ready(function () {
                       
                        $('#txtFrom').datepicker({
                            dateFormat: "dd/mm/yy", 
                       
                            onSelect: function(date){            
                                var date1 = $('txtFrom').datepicker('getDate');           
                                                 
                              
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
            $(document).ready(function () {
                       
                        $('#txtTo').datepicker({
                            dateFormat: "dd/mm/yy", 
                       
                            onSelect: function(date){            
                                var date1 = $('#txtTo').datepicker('getDate');           
                                                 
                              
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
