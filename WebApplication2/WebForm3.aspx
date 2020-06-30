
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WebForm3.aspx.vb" Inherits="WebApplication2.WebForm3" Culture="en-GB" uiCulture="en-GB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TECH_ALLOTMENT</title>
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
        s
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
		<form id="Form2" method="post" runat="server">
            
                <div class="table">
			<asp:panel id="Panel1" runat="server">
			
    <div  class="row">
        <div  class="col" align="center" colSpan="6">
                            <h3>
                              Technician Allotment
                              
                            </h3>                         
        </div></div>
                <asp:label id="lblMessage" runat="server" ForeColor="red"></asp:label><br />
           <div class="row"><div class="col" align="left">Date:
            <asp:label id="lblDate" runat="server"></asp:label></div >
             <div  class="col" >Breakdown MemoNo:&nbsp;&nbsp;<asp:label id="lblMemo" runat="server" ForeColor="Black"></asp:label>
					</div>
               <div class="col">Machine: <asp:label id="Label1" runat="server"></asp:label> </div>
                           <b><div  class="col" align="right" >Group:
				
							<asp:label id="lblShopCode" runat="server"></asp:label></div >
					</div> </b>
                        </div >
							<asp:Label id="lblDefect" runat="server" ForeColor="black" visible="false"></asp:Label>

       
            <br /><div class="row">
           
						
            <div class="col">Technician</div>
            <div class="col"><asp:dropdownlist id="ddlTech" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></div >
                    <div class="col">
                        Remarks
                    </div>
                    <div class="col"><asp:textbox id="txtRemarks" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:textbox></div >
					</div>     
                <br />
    <asp:textbox id="txtsse" runat="server" CssClass="form-control" Visible="false"></asp:textbox>		
							<asp:textbox id="txtOperator" runat="server" CssClass="form-control" Visible="false"></asp:textbox>		
           
                <div  class="row">
						<div  class="col" align="center">
                              <asp:button id="btnSave" runat="server" Text="Allotment"  Font-Size="16px"  BorderStyle="Solid" Font-Bold="True"  CssClass="btn btn-dark" ></asp:button>&nbsp;
							
                             <asp:button id="btnRet" runat="server" Text="Return to User"  Font-Size="16px"  BorderStyle="Solid" Font-Bold="True"  CssClass="btn btn-dark" ></asp:button>&nbsp;
						
						</div>
            </div>
				 <asp:datagrid id="DataGrid1" CssClass="table" runat="server" CellPadding="1" CellSpacing="1" AutoGenerateColumns="False" forecolor="Black">
                    <AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
                    <HeaderStyle ForeColor="White" BackColor="Navy"></HeaderStyle>
                    <Columns>
                                   <asp:ButtonColumn Text="Select" HeaderText="select" CommandName="select"></asp:ButtonColumn>  
                    <asp:BoundColumn DataField="Group1" HeaderText="Group"></asp:BoundColumn>
                    <asp:BoundColumn DataField="MemoSlip" HeaderText="Memo No"></asp:BoundColumn>
                    <asp:BoundColumn DataField="BDFromTime" HeaderText="BD Date Time"></asp:BoundColumn>                    
                    <asp:BoundColumn DataField="Shop" HeaderText="Shop"></asp:BoundColumn> 
                    <asp:BoundColumn DataField="Machine" HeaderText="Machine"></asp:BoundColumn> 
                    <asp:BoundColumn DataField="BDType" HeaderText="BD Type"></asp:BoundColumn>
                             <asp:BoundColumn DataField="Defect" HeaderText="Defect"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Remarks" HeaderText="Remarks"></asp:BoundColumn>
                                     <asp:BoundColumn DataField="Operator" HeaderText="Operator" Visible="false"></asp:BoundColumn>

        
                    </Columns>
                    </asp:datagrid>
		
			
                    <div class="row"> <asp:datagrid id="DataGrid2" CssClass="table" runat="server" CellPadding="1" CellSpacing="1" AutoGenerateColumns="False" forecolor="Black">
                    <AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
                    <HeaderStyle ForeColor="White" BackColor="Navy"></HeaderStyle>
                    <Columns>
                                <asp:BoundColumn DataField="Machine_code" HeaderText="Machine "></asp:BoundColumn>
                    <asp:BoundColumn DataField="PM_Done_Date" HeaderText="PM done date"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Next_Due_date" HeaderText="next due date"></asp:BoundColumn> 
                      <asp:BoundColumn DataField="maintenance_type" HeaderText="Maintenance Type"></asp:BoundColumn> 
                    </Columns>
                    </asp:datagrid>
		
			</asp:panel> 
                    </div></div >
        </div><div class="card-footer" style="text-align:right;background-color:#cccccc;vertical-align:middle;position:fixed;bottom:0;width:100%;height:60px"><h4 style="color: black;font-size:15px">MAINTAINED BY CRIS</h4></div>

    </form></div>
</body>
</html>
