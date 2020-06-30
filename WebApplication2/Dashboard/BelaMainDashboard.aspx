<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BelaMainDashboard.aspx.vb" Inherits="WebApplication2.BelaMainDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
   
        <script src="js/chart-all.js"></script>
    <script src="js/chartjs-plugin-datalabels.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

      <script src=" https://code.jquery.com/jquery-3.5.1.js"></script>
 <script src=" https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
 <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">






 <title>Bela Main Dashboard </title> 
	 <style>

      body { padding-right: 0 !important }

    .modal-open{overflow:auto;padding-right:0 !important;}

      #tdWorkDayNew1 {background-color:rgb(255, 253, 163);}
        #tdWorkDayNew2 {background-color:rgb(198, 252, 255);}
	 </style> 
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
          <i class="fab glyphicon glyphicon-home "style="font-size:30px;"></i>
        </a></li>

       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"style="font-size:30px;"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
    

    <main role="main">
     <section class=" text-center">
         <!-- dummy row -->
        <%-- <div class="container">
             <div class="row"></div>
             <br />
             <br />
         </div>--%>
          <br />
        
         <div class="container-fluid">

              <!--ROW 1 -->
         <div class="row">
              <div class="col-sm-5">
                <%--  <div style="float:initial" >  <span style="font-weight:bold">   </span> --%>
                      <%--<button type="button" class="font-weight-bold btn btn-primary dailybox"  style="color:white" perd="1" id="MELT" >MELT</button>
                          
                          <select id="course_code" name="course_code" class="btn btn-primary mb-3">
                                <option value="02" SELECTED>B.Com. </option>
                                <option value="03" >B.A.(Hons) English </option>
                                <option value="05" >B.Com.(Hons.) </option>
                                <option value="16" >B.A. PROGRAMME </option>
                                <option value="19" >B.A.(Hons) Political Science </option>
                          --%>

                  
       <a class="btn btn-primary font-weight-bold dailybox mb-2 active" style="color:white" perd="1" id="MELT" >MELT</a>
        <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="2" id="MOULD">MOULD</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="3" id="MRS">MRS</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="4" id="HEAT_TREATMENT">HEAT TREAT.</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="5" id="DARK_ROOM">DARK ROOM</a> 
             <button type="button" class="btn btn-primary font-weight-bold mb-2" data-toggle="modal" data-target="#myDailyModal">VIEW</button>
          <%--  </div>--%>
              
                    <canvas id="chart10" width="100%" height="60"> </canvas>

                     <div class="modal fade" id="myDailyModal" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"><b><i>Description:</i></b></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
		<div class="table-responsive">
			<table id="DailyTable" class="table table-bordered text-center tablesorter table-condensed">
				
					<tr>
						<th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Abbreviation</th>
						<th id="tdWorkDayNew2" class="text-uppercase text-left" align="left">Description</th>	
					</tr> 		
					<tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Heats</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Heats</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Off Chem Heat</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Off Chemistry Heats</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">SOS/laddle</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Heats with poor SOS/laddle overflow</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Tapping</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Off Heats with more than 2 hr-30 min time from power on to tapping</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Fresh/GC</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Fresh/GC wheel casting</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Re-Work</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Rework wheels</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Pouring Time</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Off Heats with more than 50 min pouring time</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">MR Xc</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">MR Xc</td>
					</tr>
			</table>
		</div>
        </div>
      </div>   
    </div>
  </div>

        </div>
        
             <%--   <a class="btn btn-primary font-weight-bold mb-2 dailybox  active" style="color:white" perd="1" id="MELT" >MELT</a>
        <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="2" id="MOULD">MOULD</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="3" id="MRS">MRS</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="4" id="HEAT_TREATMENT">HEAT TREAT.</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="5" id="DARK_ROOM">DARK ROOM</a> 
             <button type="button" class="btn btn-primary font-weight-bold mb-2" data-toggle="modal" data-target="#myDailyModal">VIEW</button>
     --%>

             <div class="col-sm-5">       
                         <div style="float:initial" >  <span style="font-weight:bold">   </span> 
       <a class="btn btn-primary font-weight-bold mb-2 prodbox active" style="color:white" perd="1" id="DAILY">DAILY</a> 
        <a   class="btn btn-primary font-weight-bold mb-2 prodbox" style="color:white" perd="2" id="MONTHLY">MONTHLY</a> 
        <a style="color:white"  class="btn btn-primary font-weight-bold mb-2 prodbox" id="YEARLY" perd="3">YEARLY</a>
            <button type="button" class="btn btn-primary font-weight-bold mb-2" data-toggle="modal" data-target="#myProdModal">VIEW</button>             
                     </div>
                         <canvas id="chart13" width="100%" height="60"></canvas>
                  <div class="modal fade" id="myProdModal" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"><b><i>Description:</i></b></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
		<div class="table-responsive">
			<table id="ProdTable" class="table table-bordered text-center tablesorter table-condensed">
				
					<tr>
						<th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Abbreviation</th>
						<th id="tdWorkDayNew2" class="text-uppercase text-left" align="left">Description</th>	
					</tr> 		
					<tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">WFPS</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of wheels handes over to WFPS</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Stock</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of wheels Stocked</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Dispatch</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Wheels Dispatched</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Heats</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Heats</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Cast</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of wheels cast</td>
					</tr>
			</table>
		</div>
        </div>
      </div>   
    </div>
  </div>
             </div>

             <div class="col-sm-2">
                <div class="chart-wrapper">
                 <canvas id="chart8" width="280" height="170"> </canvas>
                    </div>
                       <div align="center">  <h6 style="font-weight: bold;"><a href="#" data-toggle="modal" data-target="#myCriticalModal">Critical Material Position</a></h6></div>
                       <div align="center">  <h6 style="font-weight: bold;"><a href="#" data-toggle="modal" data-target="#myBreakDownModal">Breakdown Status</a></h6></div>
                       <div align="center">  <h6 style="font-weight: bold;"><a href="#" data-toggle="modal" data-target="#myRTModal">RT Vehicle Position</a></h6></div>
                      <div align="center">   <h6 style="font-weight: bold;"><a href="#" data-toggle="modal" data-target="#myWheelModal">Wheel in Process</a></h6></div>
                <%-- <div align="center">   <h6 style="font-weight: bold;"><a href="#" data-toggle="modal" data-target="#myWTAModal">WTA Allotment VS BGC Wheel dispatched</a></h6></div>--%>

                  <div class="modal fade" id="myCriticalModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"><b><i>Critical Material Position:</i></b></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
		<div class="table-responsive">
			<table id="CriticalTable" class="table table-bordered text-center tablesorter table-condensed">
				
					<tr>
						<th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Date</th>
						<th id="tdWorkDayNew2" class="text-uppercase text-left" align="left">Material</th>
                        <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">On Shop floor</th>
                        <th id="tdWorkDayNew2" class="text-uppercase text-left" align="left">In stores</th>
                        <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Status</th>	
					</tr> 		
                 <%For i = 0 To critical_date.Count - 1%>  
					<tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1"><%=critical_date.Item(i)%></td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=material.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew1"><%=shop_floor.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=in_stock.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew1"><%=status.Item(i)%></td>
					</tr>
                 <% Next %>
			</table>
		</div>
        </div>
      </div>   
    </div>
  </div>

                   <div class="modal fade" id="myBreakDownModal" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"><b><i>Breakdown Status:</i></b></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
		<div class="table-responsive">
			<table id="BreakDownTable" class="table table-bordered text-center tablesorter table-condensed">
				
					<tr>
						<th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Date</th>
						<th id="tdWorkDayNew2" class="text-uppercase text-left" align="left">Maachine Code</th>
                        <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Reason</th>
					</tr> 		
                 <%For i = 0 To breakdown_date.Count - 1%>  
					<tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1"><%=breakdown_date.Item(i)%></td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=machine_code.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew1"><%=reason.Item(i)%></td>
					</tr>
                 <% Next %>
			</table>
		</div>
        </div>
      </div>   
    </div>
  </div>
 

                                    <div class="modal fade" id="myRTModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"><b><i>RT Vehicle Position:</i></b></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
		<div class="table-responsive">
			<table id="RTTable" class="table table-bordered text-center tablesorter table-condensed">
				
					<tr>
						<th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Date</th>
						<th id="tdWorkDayNew2" class="text-uppercase text-left" align="left">RT Vehicle</th>
                        <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Total Population</th>
                        <th id="tdWorkDayNew2" class="text-uppercase text-left" align="left">Good Working</th>
                        <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Under Maintenance</th>
					</tr> 		
                 <%For i = 0 To rt_date.Count - 1%>  
					<tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1"><%=rt_date.Item(i)%></td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=rt_vehicle.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew1"><%=total_pop.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=good_working.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew1"><%=under_maintenance.Item(i)%></td>
					</tr>
                 <% Next %>
			</table>
		</div>
        </div>
      </div>   
    </div>
  </div>


                  <div class="modal fade" id="myWheelModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"><b><i>Wheels in process:</i></b></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
		<div class="table-responsive">
			<table id="WheelTable" class="table table-bordered text-center tablesorter table-condensed">
				
					<tr>
						<th id="tdWorkDayNew1" class="text-uppercase text-left" align="left" rowspan="2">Date</th>
						<th id="tdWorkDayNew1" class="text-uppercase text-center" align="center" colspan="5">Awaiting</th>
                          <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left" rowspan="2">M/C awaiting P/G</th>
                        <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left" rowspan="2">RHT/Re-RHT</th>
                        <th id="tdWorkDayNew1" class="text-uppercase text-center" align="center" colspan="2">Hold for</th>
                        <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left" rowspan="2">Total Sl no. 01 to 09</th>
					</tr> 		
                <tr>
						
						<th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">M/C</th>
                    <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">HT BOXN</th>
                    <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">HT BGC</th>
                        <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Batch Clearance</th>
                        <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Final P/G Fresh</th>
                    <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Boring Stock</th>
                    <th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">final I/N,HBMC & HTMC bored</th>
                    
					</tr> 
                  <%For i = 0 To wheels_date.Count - 1%>  
					<tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=wheels_date.Item(i)%></td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=await_mc.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=await_heat_boxn.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=await_heat_bgc.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=await_batch_clearance.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=await_final_processing.Item(i)%></td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=mc_await_processing.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=RHT.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=hold_boring_stock.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=hold_final_inspection.Item(i)%></td>
                        <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2"><%=total_sl.Item(i)%></td>
					</tr>
                 <% Next %>
			</table>
		</div>
        </div>
      </div>   
    </div>
  </div>
             </div>
            </div>
                 
         <!-- dummy row -->
        <%-- <div class="container">
             <div class="row"></div>
             <br />
             <br />
         </div>--%>

         <!-- Row 2 -->
   
             <div class="row">
                            <div class="col-sm-5">
             <div style="float:initial" >  <span style="font-weight:bold">   </span> 

           <%--       <a class="btn btn-primary font-weight-bold dailybox mb-2 active" style="color:white" perd="1" id="MELT" >MELT</a>
        <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="2" id="MOULD">MOULD</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="3" id="MRS">MRS</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="4" id="HEAT_TREATMENT">HEAT TREAT.</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="5" id="DARK_ROOM">DARK ROOM</a> 
             <button type="button" class="btn btn-primary font-weight-bold mb-2" data-toggle="modal" data-target="#myDailyModal">VIEW</button>
               btn btn-primary font-weight-bold  mb-2 monbox active
               --%>

                 
        <a class="btn btn-primary font-weight-bold  mb-2 monbox active" style="color:white" perd="1" id="MELT1">MELT</a> 
        <a   class="btn btn-primary font-weight-bold  mb-2 monbox" style="color:white" perd="2" id="MOULD1">MOULD</a> 
            <a   class="btn btn-primary font-weight-bold  mb-2 monbox" style="color:white" perd="3" id="MRS1">MRS</a> 
            <a   class="btn btn-primary font-weight-bold  mb-2 monbox" style="color:white" perd="4" id="HEAT_TREATMENT1">HEAT TREAT.</a> 
            <a   class="btn btn-primary font-weight-bold  mb-2 monbox " style="color:white" perd="5" id="DARK_ROOM1">DARK ROOM</a> 
                  <button type="button" class="btn btn-primary font-weight-bold  mb-2" data-toggle="modal" data-target="#myMonthlyModal">VIEW</button>
            </div>
                <canvas id="chart11" width="100%" height="60"> </canvas>
             <div class="modal fade" id="myMonthlyModal" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"><b><i>Description:</i></b></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
		<div class="table-responsive">
			<table id="MonthlyTable" class="table table-bordered text-center tablesorter table-condensed">
				
					<tr>
						<th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Abbreviation</th>
						<th id="tdWorkDayNew2" class="text-uppercase text-left" align="left">Description</th>	
					</tr> 		
					<tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Heats</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Heats</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Off Chem Heat</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Off Chemistry Heats</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">SOS/laddle</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Heats with poor SOS/laddle overflow</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Tapping</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Off Heats with more than 2 hr-30 min time from power on to tapping</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Fresh/GC</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Fresh/GC wheel casting</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Re-Work</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Rework wheels</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Pouring Time</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Off Heats with more than 50 min pouring time</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">MR Xc</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">MR Xc</td>
					</tr>
			</table>
		</div>
        </div>
      </div>   
    </div>
  </div>

             </div>
                   <div class="col-sm-4">
                     <div class="col-sm-4-body">
                        <br /><br />
                         <canvas id="chart14" width="100%" height="60"></canvas>
                     </div>
                 </div>


                   <%--       <a class="btn btn-primary font-weight-bold mb-2 dailybox active" style="color:white" perd="1" id="MELT" >MELT</a>
        <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="2" id="MOULD">MOULD</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="3" id="MRS">MRS</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="4" id="HEAT_TREATMENT">HEAT TREAT.</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="5" id="DARK_ROOM">DARK ROOM</a> 
             <button type="button" class="btn btn-primary font-weight-bold mb-2" data-toggle="modal" data-target="#myDailyModal">VIEW</button>
               btn btn-primary font-weight-bold  mb-2 monbox active
               --%>

                 <div class="col-sm-3">
                      <div style="float:initial" >  <span style="font-weight:bold">   </span> 
       <a class="btn btn-primary font-weight-bold mb-2 wfpsbox active" style="color:white" perd="1" id="DAILY">DAILY</a> 
        <a   class="btn btn-primary font-weight-bold mb-2 wfpsbox" style="color:white" perd="2" id="MONTHLY">MONTHLY</a> 
        <a style="color:white"  class="btn btn-primary font-weight-bold mb-2 wfpsbox" id="YEARLY" perd="3">YEARLY</a>           
                     </div>
                         <canvas id="chart15" width="100%" height="60"></canvas>
                 </div>
          
             </div>
        

        <%-- <!-- dummy row -->
         <div class="container">
             <div class="row"></div>
             <br />
             <br />
         </div>--%>


         <!-- row 3 -->
        
             <div class="row">


                   <%--       <a class="btn btn-primary font-weight-bold mb-2 dailybox active" style="color:white" perd="1" id="MELT" >MELT</a>
        <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="2" id="MOULD">MOULD</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="3" id="MRS">MRS</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="4" id="HEAT_TREATMENT">HEAT TREAT.</a> 
            <a   class="btn btn-primary font-weight-bold dailybox mb-2" style="color:white" perd="5" id="DARK_ROOM">DARK ROOM</a> 
             <button type="button" class="btn btn-primary font-weight-bold mb-2" data-toggle="modal" data-target="#myDailyModal">VIEW</button>
               btn btn-primary font-weight-bold  mb-2 monbox active
               --%>


                   <div class="col-sm-5">
              <div style="float:initial" >  <span style="font-weight:bold">   </span> 
        <a class="btn btn-primary font-weight-bold mb-2 yearbox active " style="color:white" perd="1" id="MELT2">MELT</a> 
        <a   class="btn btn-primary font-weight-bold mb-2 yearbox" style="color:white" perd="2" id="MOULD2">MOULD</a> 
            <a   class="btn btn-primary font-weight-bold mb-2 yearbox" style="color:white" perd="3" id="MRS2">MRS</a> 
            <a   class="btn btn-primary font-weight-bold mb-2 yearbox" style="color:white" perd="4" id="HEAT_TREATMENT2">HEAT TREAT.</a>
            <a   class="btn btn-primary font-weight-bold mb-2 yearbox" style="color:white" perd="5" id="DARK_ROOM2">DARK ROOM</a> 
                   <button type="button" class="btn btn-primary font-weight-bold mb-2" data-toggle="modal" data-target="#myYearlyModal">VIEW</button>
            </div>
                <canvas id="chart12" width="100%" height="60"> </canvas>
                      <div class="modal fade" id="myYearlyModal" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"><b><i>Description:</i></b></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
		<div class="table-responsive">
			<table id="YearlyTable" class="table table-bordered text-center tablesorter table-condensed">
				
					<tr>
						<th id="tdWorkDayNew1" class="text-uppercase text-left" align="left">Abbreviation</th>
						<th id="tdWorkDayNew2" class="text-uppercase text-left" align="left">Description</th>	
					</tr> 		
					<tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Heats</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Heats</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Off Chem Heat</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Off Chemistry Heats</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">SOS/laddle</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Heats with poor SOS/laddle overflow</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Tapping</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Off Heats with more than 2 hr-30 min time from power on to tapping</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Fresh/GC</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Fresh/GC wheel casting</td>
					</tr>
                <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Re-Work</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Rework wheels</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">Pouring Time</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">No. of Off Heats with more than 50 min pouring time</td>
					</tr>
                 <tr>
						<td style="font-weight:bold;text-align:left" id="tdWorkDayNew1">MR Xc</td>
					    <td style="font-weight:bold;text-align:left" id="tdWorkDayNew2">MR Xc</td>
					</tr>
			</table>
		</div>
        </div>
      </div>   
    </div>
  </div>
         
                     </div>
         </div>
             
             </div>
      </section>
        </main>

    <script type="text/javascript">
       
        var myChart8;
        var myChart10;
        var myChart11;
        var myChart12;
        var myChart13;
        var myChart14;
        var myChart15;
        var colors = ['#007bff','#ff1a1a', '#00e618', '#ff1a75', '#cc33ff'];

        var type_category = new Array();

        var parameter_boxn1 = new Array();
        var target_boxn1 = new Array();
        var actual_boxn1 = new Array();

        var parameter_bgc1 = new Array();
        var target_bgc1 = new Array();
        var actual_bgc1 = new Array();

         var par_mon_boxn1 = new Array();
        var target_mon_boxn1 = new Array();
        var actual_mon_boxn1 = new Array();

        var para_mon_bgc1 = new Array();
        var target_mon_bgc1 = new Array();
        var actual_mon_bgc1 = new Array();

          var par_year_boxn1 = new Array();
        var target_year_boxn1 = new Array();
        var actual_mon_boxn1 = new Array();

        var para_year_bgc1 = new Array();
        var target_year_bgc1 = new Array();
        var actual_year_bgc1 = new Array();

        var prod_bgc = new Array();
        var prod_boxn = new Array();
        var prod_mon_bgc = new Array();
        var prod_mon_boxn = new Array();
        var prod_year_bgc = new Array();
        var prod_year_boxn = new Array();

        var wfps_para1 = new Array();
        var wfps_target1 = new Array();
        var wfps_actual1 = new Array();

        var qtr_actual_bgc = new Array();
        var qtr_target_bgc = new Array();
        var qtr_actual_boxn = new Array();
        var qtr_target_boxn = new Array();

        $(document).ready(function() { 

            ctx8 = document.getElementById('chart8').getContext('2d');
            ctx8.save();
            ctx10 = document.getElementById('chart10').getContext('2d');
            ctx10.save();
             ctx11 = document.getElementById('chart11').getContext('2d');
            ctx11.save();
             ctx12 = document.getElementById('chart12').getContext('2d');
            ctx12.save();
             ctx13 = document.getElementById('chart13').getContext('2d');
            ctx13.save();
            ctx14 = document.getElementById('chart14').getContext('2d');
            ctx14.save();
            ctx15 = document.getElementById('chart15').getContext('2d');
            ctx15.save();

            working_days_year();
            daily_prod(1);
            mon_prod(1);
            year_prod(1);
            prod(1);
            quarter_pos();
            wfps(1);
		});

        $(".dailybox").click(function()
	      {
            var perd = $(this).attr("perd");
            
            $(".dailybox").removeClass("active");
          
		  switch (perd)		    {
            case '1':                 
                  $("#1").addClass("active");
            daily_prod(1);                   
				 break;
			case '2':
                 $("#2").addClass("active");
				daily_prod(2);            
                  break;
            case '3':
                 $("#3").addClass("active");
				daily_prod(3);            
                  break;
            case '4':
                 $("#4").addClass("active");
				daily_prod(4);           
                  break;
            case '5':
                 $("#5").addClass("active");
				daily_prod(5);          
                  break;
           
		}
        });

                $(".monbox").click(function()
	      {
            var perd = $(this).attr("perd");
            
            $(".monbox").removeClass("active");
          
		  switch (perd)		    {
            case '1':                 
                  $("#1").addClass("active");
            mon_prod(1);                   
				 break;
			case '2':
                 $("#2").addClass("active");
				mon_prod(2);              
                  break;
            case '3':
                 $("#3").addClass("active");
				mon_prod(3);             
                  break;
            case '4':
                 $("#4").addClass("active");
				mon_prod(4);             
                  break;
            case '5':
                 $("#5").addClass("active");
				mon_prod(5);             
                  break;
           
		}
        });

           $(".yearbox").click(function()
	      {
            var perd = $(this).attr("perd");
            
            $(".yearbox").removeClass("active");
          
		  switch (perd)		    {
            case '1':                 
                  $("#1").addClass("active");
            year_prod(1);                   
				 break;
			case '2':
                 $("#2").addClass("active");
				year_prod(2);              
                  break;
            case '3':
                 $("#3").addClass("active");
				year_prod(3);             
                  break;
            case '4':
                 $("#4").addClass("active");
				year_prod(4);             
                  break;
            case '5':
                 $("#5").addClass("active");
				year_prod(5);             
                  break;
           
		}
        });
          $(".prodbox").click(function()
	      {
            var perd = $(this).attr("perd");
            
            $(".prodbox").removeClass("active");
          
		  switch (perd)		    {
            case '1':                 
                  $("#1").addClass("active");
            prod(1);                   
				 break;
			case '2':
                 $("#2").addClass("active");
				prod(2);              
                  break;
            case '3':
                 $("#3").addClass("active");
				prod(3);             
                  break;
           
		}
        });
                  $(".wfpsbox").click(function()
	      {
            var perd = $(this).attr("perd");
            
            $(".wfpsbox").removeClass("active");
          
		  switch (perd)		    {
            case '1':                 
                  $("#1").addClass("active");
            wfps(1);                   
				 break;
			case '2':
                 $("#2").addClass("active");
				wfps(2);              
                  break;
            case '3':
                 $("#3").addClass("active");
				wfps(3);             
                  break;
           
		}
        });
        
        
        var val = 1;

         function working_days_year() {
              type_category = new Array();
               <%  dim working_year As Integer = fyear%>             
              var working_year =(new Date()).getFullYear();          
              type_category.push(working_year-1+ "-" + working_year);       
        
          if(myChart8) myChart8.destroy();
		ctx8.restore;
		myChart8 = new Chart(ctx8, {
			type: 'pie',
            data: {
                labels:['Till Date','Remaining days'],
				datasets:[  
                        {
                       // label: 'Days' ,
                        backgroundColor: ['rgba(0, 209, 21,1)','rgba(0, 209, 21,0.5)'],
                        borderColor:['#000000'],
                          borderWidth: 1,
                    data: [        
                           <%=tilldate_work_days%> ,<%=total_work_days%>-<%=tilldate_work_days%>                
                        ],
                    },
				],

			},
            options: {
                maintainAspectRatio: false,
                //animation: {
                //    animateScale:true
                //},
                legend: {
                    display: true,
                    position: 'bottom',
                    labels: {
                        fontStyle: 'bold',
                        fontSize: 12
                    }
                },
                plugins: {
                    datalabels: {
                        display : false,
                        anchor: 'start',
                        align: 'top',

                        formatter: function (value, context) {
                            return Math.round(value) + '';
                        },
                        font: {
                            weight: 'bold',
                            size: 14
                        }
                        //,
                        //color: 'rgba(0,0,0,0.5)' #8497B0
                    }
                }

               // cutoutPercentage:80

				}
				
		});
	       

        }
        var val1 = 1;
        function daily_prod(value) {
            var val1 = value
            if (val1 == 1)
            {
                parameter_boxn1 = new Array();
                target_boxn1 = new Array();
                actual_boxn1 = new Array();

                parameter_bgc1 = new Array();
                target_bgc1 = new Array();
                actual_bgc1 = new Array();

                

           <% For i = 0 To melt_parameter_boxn.Count - 1%> 
                target_boxn1.push(<%=melt_target_boxn.Item(i)%>)
                actual_boxn1.push(<%=melt_actual_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To melt_parameter_bgc.Count - 1%> 
                target_bgc1.push(<%=melt_target_bgc.Item(i)%>)
                actual_bgc1.push(<%=melt_actual_bgc.Item(i)%>)
                      <%Next%>

                parameter_boxn1.push('Heats');
                parameter_boxn1.push('Off chem Heat');
                parameter_boxn1.push('SOS/laddle');
                parameter_boxn1.push('Tapping');

                parameter_bgc1.push('Heats');
                parameter_bgc1.push('Off chem Heat');
                parameter_bgc1.push('SOS/laddle');
                parameter_bgc1.push('Tapping');

            }

            else if (val1 == 2)
            {
                 parameter_boxn1 = new Array();
                target_boxn1 = new Array();
                actual_boxn1 = new Array();

               parameter_bgc1 = new Array();
                target_bgc1 = new Array();
                actual_bgc1 = new Array();

           <% For i = 0 To mould_parameter_boxn.Count - 1%> 
                target_boxn1.push(<%=mould_target_boxn.Item(i)%>)
                actual_boxn1.push(<%=mould_actual_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To mould_parameter_bgc.Count - 1%> 
                target_bgc1.push(<%=mould_target_bgc.Item(i)%>)
                actual_bgc1.push(<%=mould_actual_bgc.Item(i)%>)
                      <%Next%>
                parameter_boxn1.push('Fresh/GC');
                parameter_boxn1.push('Re-Work');
                parameter_boxn1.push('Pouring Time');
                parameter_boxn1.push('MR Xc');

                parameter_bgc1.push('Fresh/GC');
                parameter_bgc1.push('Re-Work');
                parameter_bgc1.push('Pouring Time');
                parameter_bgc1.push('MR Xc');

            }
            else if (val1 == 3) {
                parameter_boxn1 = new Array();
                target_boxn1 = new Array();
                actual_boxn1 = new Array();

                parameter_bgc1 = new Array();
                target_bgc1 = new Array();
                actual_bgc1 = new Array();

           <% For i = 0 To mrs_parameter_boxn.Count - 1%> 
                parameter_boxn1.push('<%=mrs_parameter_boxn.Item(i)%>');
                target_boxn1.push(<%=mrs_target_boxn.Item(i)%>)
                actual_boxn1.push(<%=mrs_actual_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To mrs_parameter_bgc.Count - 1%> 
                parameter_bgc1.push('<%=mrs_parameter_bgc.Item(i)%>');
                target_bgc1.push(<%=mrs_target_bgc.Item(i)%>)
                actual_bgc1.push(<%=mrs_actual_bgc.Item(i)%>)
                      <%Next%>
            }
               else if (val1 == 4) {
                parameter_boxn1 = new Array();
                target_boxn1 = new Array();
                actual_boxn1 = new Array();

                parameter_bgc1 = new Array();
                target_bgc1 = new Array();
                actual_bgc1 = new Array();

           <% For i = 0 To heat_treatment_parameter_boxn.Count - 1%> 
                parameter_boxn1.push('<%=heat_treatment_parameter_boxn.Item(i)%>');
                target_boxn1.push(<%=heat_treatment_target_boxn.Item(i)%>)
                actual_boxn1.push(<%=heat_treatment_actual_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To heat_treatment_parameter_bgc.Count - 1%> 
                parameter_bgc1.push('<%=heat_treatment_parameter_bgc.Item(i)%>');
                target_bgc1.push(<%=heat_treatment_target_bgc.Item(i)%>)
                actual_bgc1.push(<%=heat_treatment_actual_bgc.Item(i)%>)
                      <%Next%>
            }

            else if (val1 == 5) {
                parameter_boxn1 = new Array();
                target_boxn1 = new Array();
                actual_boxn1 = new Array();

                parameter_bgc1 = new Array();
                target_bgc1 = new Array();
                actual_bgc1 = new Array();

           <% For i = 0 To dark_room_parameter_boxn.Count - 1%> 
                parameter_boxn1.push('<%=dark_room_parameter_boxn.Item(i)%>');
                target_boxn1.push(<%=dark_room_target_boxn.Item(i)%>)
                actual_boxn1.push(<%=dark_room_actual_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To dark_room_parameter_bgc.Count - 1%> 
                parameter_bgc1.push('<%=dark_room_parameter_bgc.Item(i)%>');
                target_bgc1.push(<%=dark_room_target_bgc.Item(i)%>)
                actual_bgc1.push(<%=dark_room_actual_bgc.Item(i)%>)
                      <%Next%>
            }
             
        
         if(myChart10) myChart10.destroy();
		ctx10.restore;
             myChart10 = new Chart(ctx10, {
                 type: 'bar',
                 data: {
                     labels: parameter_boxn1,
                     datasets: [

                         {
                             label: "TARGET : BGC",
                             //backgroundColor:'rgb(255,153,255)',
                             //borderColor: 'rgb(255,153,255)',
                             backgroundColor: '#ffa600',
                             borderColor: '#ffa600',
                             borderWidth: 1,
                             fill: false,

                             data: target_bgc1,
                             type: 'bar',
                             stack: 'stack 0'

                         },
                     {
                             label: "TARGET : BOXN",
                             //backgroundColor: 'rgb(192,192,192)',
                             //borderColor: 'rgb(192,192,192)',
                             backgroundColor: '#003f5c',
                             borderColor: '#003f5c',
                            
                             borderWidth: 1,
                             fill: false,

                             data: target_boxn1,
                             type: 'bar',
                             stack: 'stack 0'


                         },
                         {
                             label: "ACTUAL : BGC",
                             //backgroundColor:'rgb(204,0,204)',
                             //borderColor: 'rgb(204,0,204)',
                             backgroundColor: '#ef5675',
                             borderColor: '#ef5675',
                             borderWidth: 1,
                             fill: false,

                             data: actual_bgc1,
                             type: 'bar',
                             stack: 'stack 1'

                         },
                         
                         {
                             label: "ACTUAL : BOXN",
                             //backgroundColor: 'rgb(96,96,96)',
                             //borderColor: 'rgb(96,96,96)',
                             backgroundColor: '#7a5195',
                             borderColor: '#7a5195',
                             borderWidth: 1,
                             fill: false,
                             type: 'bar',
                             stack: 'stack 1',
                             data: actual_boxn1
                         },

                     ],



                 },
                 options: {
                     responsive: true,
                     maintainAspectRatio: true,
                     legend: {
                         display: true,
                         position: 'bottom',
                         labels: {
                             fontStyle: 'bold',
                             fontSize: 12
                         }
                     },
                     plugins: {
                         datalabels: {
                             display: false,
                             
                             anchor: 'center',
                             align: 'center',

                             formatter: function (value, context) {
                                 return Math.round(value) + '';
                             },
                             font: {
                                 weight: 'bold',
                                 size: 14
                                
                             },
                             value: {
                                 color: 'white'
                             },
                             intersect: false
                             //,
                             //color: 'rgba(0,0,0,0.5)' #8497B0
                         }
                     },
                     scales: {
                         yAxes: [{
                             stcked: true,
                             ticks: {
                                 beginAtZero: true,
                                 fontStyle: 'bold',
                                 fontSize: 12,
                                 min: 0,
                                 
                                 maxTicksLimit: 10
                                 //,
                                 //callback: function (value) { return value + "%" }
                             },
                             scaleLabel: {
                                 display: true,
                                 //labelString: "",
                                 fontStyle: 'bold'
                             }
                         }],
                         xAxes: [{
                             stacked: true,
                             ticks: {
                                 fontStyle: 'bold',
                                 fontSize: 12
                             },
                             gridLines: {
                                 display: false
                             }
                         }]
                     },
                     title: {
                         display: true,
                         text: 'Daily Production Position',
                         fontSize: 16
                     },
                     tooltips:{
                         mod: 'index',
                         intersect:'false'
                 }
				}
				
		});
        }

        val1 = 1;
         function mon_prod(value) {
            var val1 = value
            if (val1 == 1)
            {
                para_mon_boxn1 = new Array();
                target_mon_boxn1 = new Array();
                actual_mon_boxn1 = new Array();

                para_mon_bgc1 = new Array();
                target_mon_bgc1 = new Array();
                actual_mon_bgc1 = new Array();

                

           <% For i = 0 To melt_para_mon_boxn.Count - 1%> 
                target_mon_boxn1.push(<%=melt_target_mon_boxn.Item(i)%>)
                actual_mon_boxn1.push(<%=melt_actual_mon_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To melt_para_mon_bgc.Count - 1%> 
                target_mon_bgc1.push(<%=melt_target_mon_bgc.Item(i)%>)
                actual_mon_bgc1.push(<%=melt_actual_mon_bgc.Item(i)%>)
                      <%Next%>

                para_mon_boxn1.push('Heats');
                para_mon_boxn1.push('Off chem Heat');
                para_mon_boxn1.push('SOS/laddle');
                para_mon_boxn1.push('Tapping');

                para_mon_bgc1.push('Heats');
                para_mon_bgc1.push('Off chem Heat');
                para_mon_bgc1.push('SOS/laddle');
                para_mon_bgc1.push('Tapping');

            }

            else if (val1 == 2)
            {
                 para_mon_boxn1 = new Array();
                target_mon_boxn1 = new Array();
                actual_mon_boxn1 = new Array();

               para_mon_bgc1 = new Array();
                target_mon_bgc1 = new Array();
                actual_mon_bgc1 = new Array();

           <% For i = 0 To mould_para_mon_boxn.Count - 1%> 
                target_mon_boxn1.push(<%=mould_target_mon_boxn.Item(i)%>)
                actual_mon_boxn1.push(<%=mould_actual_mon_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To mould_para_mon_bgc.Count - 1%> 
                target_mon_bgc1.push(<%=mould_target_mon_bgc.Item(i)%>)
                actual_mon_bgc1.push(<%=mould_actual_mon_bgc.Item(i)%>)
                      <%Next%>

                para_mon_boxn1.push('Fresh/GC');
                para_mon_boxn1.push('Re-Work');
                para_mon_boxn1.push('Pouring Time');
                para_mon_boxn1.push('MR Xc');

                para_mon_bgc1.push('Fresh/GC');
                para_mon_bgc1.push('Re-Work');
                para_mon_bgc1.push('Pouring Time');
                para_mon_bgc1.push('MR Xc');

            }
            else if (val1 == 3) {
                para_mon_boxn1 = new Array();
                target_mon_boxn1 = new Array();
                actual_mon_boxn1 = new Array();

                para_mon_bgc1 = new Array();
                target_mon_bgc1 = new Array();
                actual_mon_bgc1 = new Array();

           <% For i = 0 To mrs_para_mon_boxn.Count - 1%> 
                para_mon_boxn1.push('<%=mrs_para_mon_boxn.Item(i)%>');
                target_mon_boxn1.push(<%=mrs_target_mon_boxn.Item(i)%>)
                actual_mon_boxn1.push(<%=mrs_actual_mon_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To mrs_para_mon_bgc.Count - 1%> 
                para_mon_bgc1.push('<%=mrs_para_mon_bgc.Item(i)%>');
                target_mon_bgc1.push(<%=mrs_target_mon_bgc.Item(i)%>)
                actual_mon_bgc1.push(<%=mrs_actual_mon_bgc.Item(i)%>)
                      <%Next%>
            }
               else if (val1 == 4) {
                para_mon_boxn1 = new Array();
                target_mon_boxn1 = new Array();
                actual_mon_boxn1 = new Array();

                para_mon_bgc1 = new Array();
                target_mon_bgc1 = new Array();
                actual_mon_bgc1 = new Array();

           <% For i = 0 To heat_treatment_para_mon_boxn.Count - 1%> 
                para_mon_boxn1.push('<%=heat_treatment_para_mon_boxn.Item(i)%>');
                target_mon_boxn1.push(<%=heat_treatment_target_mon_boxn.Item(i)%>)
                actual_mon_boxn1.push(<%=heat_treatment_actual_mon_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To heat_treatment_para_mon_bgc.Count - 1%> 
                para_mon_bgc1.push('<%=heat_treatment_para_mon_bgc.Item(i)%>');
                target_mon_bgc1.push(<%=heat_treatment_target_mon_bgc.Item(i)%>)
                actual_mon_bgc1.push(<%=heat_treatment_actual_mon_bgc.Item(i)%>)
                      <%Next%>
            }

            else if (val1 == 5) {
                para_mon_boxn1 = new Array();
                target_mon_boxn1 = new Array();
                actual_mon_boxn1 = new Array();

                para_mon_bgc1 = new Array();
                target_mon_bgc1 = new Array();
                actual_mon_bgc1 = new Array();

           <% For i = 0 To dark_room_para_mon_boxn.Count - 1%> 
                para_mon_boxn1.push('<%=dark_room_para_mon_boxn.Item(i)%>');
                target_mon_boxn1.push(<%=dark_room_target_mon_boxn.Item(i)%>)
                actual_mon_boxn1.push(<%=dark_room_actual_mon_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To dark_room_para_mon_bgc.Count - 1%> 
                para_mon_bgc1.push('<%=dark_room_para_mon_bgc.Item(i)%>');
                target_mon_bgc1.push(<%=dark_room_target_mon_bgc.Item(i)%>)
                actual_mon_bgc1.push(<%=dark_room_actual_mon_bgc.Item(i)%>)
                      <%Next%>
            }
             
        
         if(myChart11) myChart11.destroy();
		ctx11.restore;
             myChart11 = new Chart(ctx11, {
                 type: 'bar',
                 data: {
                     labels: para_mon_boxn1,
                     datasets: [

                         {
                             label: "TARGET : BGC",
                             //backgroundColor:'rgb(255,153,255)',
                             //borderColor:'rgb(255,153,255)',
                             backgroundColor: '#ffa600',
                             borderColor: '#ffa600',
                             borderWidth: 1,
                             fill: false,

                             data: target_mon_bgc1,
                             type: 'bar',
                             stack: 'stack 0'

                         },
                     {
                             label: "TARGET : BOXN",
                             //backgroundColor: 'rgb(192,192,192)',
                             //borderColor:  'rgb(192,192,192)',
                            backgroundColor: '#003f5c',
                            borderColor: '#003f5c',
                             borderWidth: 1,
                             fill: false,

                             data: target_mon_boxn1,
                             type: 'bar',
                             stack: 'stack 0'


                         },
                         {
                             label: "ACTUAL : BGC",
                             //backgroundColor:'rgb(204,0,204)',
                             //borderColor:'rgb(204,0,204)',
                             backgroundColor: '#ef5675',
                             borderColor: '#ef5675',
                             borderWidth: 1,
                             fill: false,

                             data: actual_mon_bgc1,
                             type: 'bar',
                             stack: 'stack 1'

                         },
                         
                         {
                             label: "ACTUAL : BOXN",
                             //backgroundColor: 'rgb(96,96,96)',
                             //borderColor:'rgb(96,96,96)',
                             backgroundColor: '#7a5195',
                             borderColor: '#7a5195',
                             borderWidth: 1,
                             fill: false,
                             type: 'bar',
                             stack: 'stack 1',
                             data: actual_mon_boxn1
                         },

                     ],



                 },
                 options: {
                     responsive: true,
                     maintainAspectRatio: true,
                     legend: {
                         display: true,
                         position: 'bottom',
                         labels: {
                             fontStyle: 'bold',
                             fontSize: 12
                         }
                     },
                     plugins: {
                         datalabels: {
                             display: false,

                             anchor: 'center',
                             align: 'center',

                             formatter: function (value, context) {
                                 return Math.round(value) + '';
                             },
                             font: {
                                 weight: 'bold',
                                 size: 14

                             },
                             value: {
                                 color: 'white'
                             },
                             intersect: false
                             //,
                             //color: 'rgba(0,0,0,0.5)' #8497B0
                         }
                     },
                     scales: {
                         yAxes: [{
                             stcked: true,
                             ticks: {
                                 beginAtZero: true,
                                 fontStyle: 'bold',
                                 fontSize: 12,
                                 min: 0,

                                 maxTicksLimit: 10
                                 //,
                                 //callback: function (value) { return value + "%" }
                             },
                             scaleLabel: {
                                 display: true,
                                 //labelString: "",
                                 fontStyle: 'bold'
                             }
                         }],
                         xAxes: [{
                             stacked: true,
                             ticks: {
                                 fontStyle: 'bold',
                                 fontSize: 12
                             },
                             gridLines: {
                                 display: false
                             }
                         }]
                     },
                     title: {
                         display: true,
                         text: 'Monthly Production Position',
                         fontSize: 16
                     },
                     tooltips: {
                         mod: 'index',
                         intersect: 'false'
                     }
                 }
				
		});
        }

         val1 = 1;
         function year_prod(value) {
            var val1 = value
            if (val1 == 1)
            {
                
                para_year_boxn1 = new Array();
                target_year_boxn1 = new Array();
                actual_year_boxn1 = new Array();

                para_year_bgc1 = new Array();
                target_year_bgc1 = new Array();
                actual_year_bgc1 = new Array();

                
                
               // alert('<%=melt_para.Count%>');
              
                <% For i = 0 To melt_para.Count - 1%> 
                target_year_boxn1.push(<%=melt_target_year_boxn.Item(i)%>)
                actual_year_boxn1.push(<%=melt_actual_year_boxn.Item(i)%>)
                      <%Next%>
                
                <% For i = 0 To melt_para_year_bgc.Count - 1%> 
                target_year_bgc1.push(<%=melt_target_year_bgc.Item(i)%>)
                actual_year_bgc1.push(<%=melt_actual_year_bgc.Item(i)%>)
                      <%Next%>

                para_year_boxn1.push('Heats');
                para_year_boxn1.push('Off chem Heat');
                para_year_boxn1.push('SOS/laddle');
                para_year_boxn1.push('Tapping');

                para_year_bgc1.push('Heats');
                para_year_bgc1.push('Off chem Heat');
                para_year_bgc1.push('SOS/laddle');
                para_year_bgc1.push('Tapping');


            }

            else if (val1 == 2)
            {
                 para_year_boxn1 = new Array();
                target_year_boxn1 = new Array();
                actual_year_boxn1 = new Array();

               para_year_bgc1 = new Array();
                target_year_bgc1 = new Array();
                actual_year_bgc1 = new Array();

           <% For i = 0 To mould_para_year_boxn.Count - 1%> 
                target_year_boxn1.push(<%=mould_target_year_boxn.Item(i)%>)
                actual_year_boxn1.push(<%=mould_actual_year_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To mould_para_year_bgc.Count - 1%> 
                target_year_bgc1.push(<%=mould_target_year_bgc.Item(i)%>)
                actual_year_bgc1.push(<%=mould_actual_year_bgc.Item(i)%>)
                <%Next%> 

                para_year_boxn1.push('Fresh/GC');
                para_year_boxn1.push('Re-Work');
                para_year_boxn1.push('Pouring Time');
                para_year_boxn1.push('MR Xc');

                para_year_bgc1.push('Fresh/GC');
                para_year_bgc1.push('Re-Work');
                para_year_bgc1.push('Pouring Time');
                para_year_bgc1.push('MR Xc');

            }
            else if (val1 == 3) {
                para_year_boxn1 = new Array();
                target_year_boxn1 = new Array();
                actual_year_boxn1 = new Array();

                para_year_bgc1 = new Array();
                target_year_bgc1 = new Array();
                actual_year_bgc1 = new Array();

           <% For i = 0 To mrs_para_year_boxn.Count - 1%> 
                para_year_boxn1.push('<%=mrs_para_year_boxn.Item(i)%>');
                target_year_boxn1.push(<%=mrs_target_year_boxn.Item(i)%>)
                actual_year_boxn1.push(<%=mrs_actual_year_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To mrs_para_year_bgc.Count - 1%> 
                para_year_bgc1.push('<%=mrs_para_year_bgc.Item(i)%>');
                target_year_bgc1.push(<%=mrs_target_year_bgc.Item(i)%>)
                actual_year_bgc1.push(<%=mrs_actual_year_bgc.Item(i)%>)
                      <%Next%>
            }
               else if (val1 == 4) {
                para_year_boxn1 = new Array();
                target_year_boxn1 = new Array();
                actual_year_boxn1 = new Array();

                para_year_bgc1 = new Array();
                target_year_bgc1 = new Array();
                actual_year_bgc1 = new Array();

           <% For i = 0 To heat_treatment_para_year_boxn.Count - 1%> 
                para_year_boxn1.push('<%=heat_treatment_para_year_boxn.Item(i)%>');
                target_year_boxn1.push(<%=heat_treatment_target_year_boxn.Item(i)%>)
                actual_year_boxn1.push(<%=heat_treatment_actual_year_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To heat_treatment_para_year_bgc.Count - 1%> 
                para_year_bgc1.push('<%=heat_treatment_para_year_bgc.Item(i)%>');
                target_year_bgc1.push(<%=heat_treatment_target_year_bgc.Item(i)%>)
                actual_year_bgc1.push(<%=heat_treatment_actual_year_bgc.Item(i)%>)
                      <%Next%>
            }

            else if (val1 == 5) {
               para_year_boxn1 = new Array();
                target_year_boxn1 = new Array();
                actual_year_boxn1 = new Array();

                para_year_bgc1 = new Array();
                target_year_bgc1 = new Array();
                actual_year_bgc1 = new Array();

           <% For i = 0 To dark_room_para_year_boxn.Count - 1%> 
                para_year_boxn1.push('<%=dark_room_para_year_boxn.Item(i)%>');
                target_year_boxn1.push(<%=dark_room_target_year_boxn.Item(i)%>)
                actual_year_boxn1.push(<%=dark_room_actual_year_boxn.Item(i)%>)
                      <%Next%> 

                <% For i = 0 To dark_room_para_year_bgc.Count - 1%> 
                para_year_bgc1.push('<%=dark_room_para_year_bgc.Item(i)%>');
                target_year_bgc1.push(<%=dark_room_target_year_bgc.Item(i)%>)
                actual_year_bgc1.push(<%=dark_room_actual_year_bgc.Item(i)%>)
                      <%Next%>
            }
             
        
         if(myChart12) myChart12.destroy();
		ctx12.restore;
             myChart12 = new Chart(ctx12, {
                 type: 'bar',
                 data: {
                     labels: para_year_boxn1,
                     datasets: [

                         {
                             label: "TARGET : BGC",
                             //backgroundColor: 'rgb(255,153,255)',
                             //borderColor: 'rgb(255,153,255)',
                             backgroundColor: '#ffa600',
                             borderColor: '#ffa600',
                             borderWidth: 1,
                             fill: false,

                             data: target_year_bgc1,
                             type: 'bar',
                             stack: 'stack 0'

                         },
                     {
                             label: "TARGET : BOXN",
                             //backgroundColor: 'rgb(192,192,192)',
                             //borderColor: 'rgb(192,192,192)',
                             backgroundColor: '#003f5c',
                             borderColor: '#003f5c',
                             borderWidth: 1,
                             fill: false,

                             data: target_year_boxn1,
                             type: 'bar',
                             stack: 'stack 0'


                         },
                         {
                             label: "ACTUAL : BGC",
                             //backgroundColor:'rgb(204,0,204)',
                             //borderColor:'rgb(204,0,204)',
                             backgroundColor: '#ef5675',
                             borderColor: '#ef5675',
                             borderWidth: 1,
                             fill: false,

                             data: actual_year_bgc1,
                             type: 'bar',
                             stack: 'stack 1'

                         },
                         
                         {
                             label: "ACTUAL : BOXN",
                             //backgroundColor: 'rgb(96,96,96)',
                             //borderColor: 'rgb(96,96,96)',
                             backgroundColor: '#7a5195',
                             borderColor: '#7a5195',
                             borderWidth: 1,
                             fill: false,
                             type: 'bar',
                             stack: 'stack 1',
                             data: actual_year_boxn1
                         },

                     ],



                 },
                 options: {
                     responsive: true,
                     maintainAspectRatio: true,
                     legend: {
                         display: true,
                         position: 'bottom',
                         labels: {
                             fontStyle: 'bold',
                             fontSize: 12
                         }
                     },
                     plugins: {
                         datalabels: {
                             display: false,

                             anchor: 'center',
                             align: 'center',

                             formatter: function (value, context) {
                                 return Math.round(value) + '';
                             },
                             font: {
                                 weight: 'bold',
                                 size: 14

                             },
                             value: {
                                 color: 'white'
                             },
                             intersect: false
                             //,
                             //color: 'rgba(0,0,0,0.5)' #8497B0
                         }
                     },
                     scales: {
                         yAxes: [{
                             stcked: true,
                             ticks: {
                                 beginAtZero: true,
                                 fontStyle: 'bold',
                                 fontSize: 12,
                                 min: 0,

                                 maxTicksLimit: 10
                                 //,
                                 //callback: function (value) { return value + "%" }
                             },
                             scaleLabel: {
                                 display: true,
                                 //labelString: "",
                                 fontStyle: 'bold'
                             }
                         }],
                         xAxes: [{
                             stacked: true,
                             ticks: {
                                 fontStyle: 'bold',
                                 fontSize: 12
                             },
                             gridLines: {
                                 display: false
                             }
                         }]
                     },
                     title: {
                         display: true,
                         text: 'Yearly Production Position',
                         fontSize: 16
                     },
                     tooltips: {
                         mod: 'index',
                         intersect: 'false'
                     }
                 }
    //             ,
    //             options: {
    //                 responsive: true,
    //                 maintainAspectRatio: true,
    //                 legend: {
    //                     position: 'top',
    //                 },

    //                 scales: {
    //                     yAxes: [{
    //                         ticks: {
    //                             beginAtZero: true
    //                         },
    //                         stcked:true
    //                     }],
    //                     xAxes: [{
    //                         stacked: true
    //                     }]
    //                 },
    //                 title: {
    //                     display: true,
    //                     text: 'YEARLY PRODUCTION POSITION'
    //                 },
    //                 tooltips:{
    //                     mod: 'index',
    //                     intersect:'false'
    //             }
				//}
				
		});
        }
        val1=1
        function prod(value) {
            var val1=value
            type_category = new Array();

            type_category.push("WFPS");
            type_category.push("Stock");
            type_category.push("Dispatch");
            type_category.push("Heats");
            type_category.push("Cast");

            if (val1 == 1) {
                 prod_bgc = new Array();
                prod_boxn = new Array();

               prod_bgc.push(<%=wfps_bgc.Item(0)%>)
                prod_bgc.push(<%=stock_bgc.Item(0)%>)
                prod_bgc.push(<%=dispatch_bgc.Item(0)%>)
                prod_bgc.push(<%=heats_bgc.Item(0)%>)
                prod_bgc.push(<%=cast_bgc.Item(0)%>)

               prod_boxn.push(<%=wfps_boxn.Item(0)%>)
                prod_boxn.push(<%=stock_boxn.Item(0)%>)
                prod_boxn.push(<%=dispatch_boxn.Item(0)%>)
                prod_boxn.push(<%=heats_boxn.Item(0)%>)
                prod_boxn.push(<%=cast_boxn.Item(0)%>)

                if (myChart13) myChart13.destroy();
                ctx13.restore;
                myChart13 = new Chart(ctx13, {
                    type: 'bar',
                    data: {
                        labels: type_category,
                        datasets: [
                            {
                                label: "BGC",
                                //backgroundColor:'rgb(204,0,204)',
                                //borderColor: 'rgb(204,0,204)',
                                backgroundColor: '#ffa600',
                                borderColor: '#ffa600',
                                borderWidth: 1,
                                fill: false,

                                data: prod_bgc,
                                type: 'bar',
                                stack: 'stack 0'

                            },
                            {
                                label: "BOXN",
                                //backgroundColor: 'rgb(96,96,96)',
                                //borderColor: 'rgb(96,96,96)',
                                backgroundColor: '#003f5c',
                                borderColor: '#003f5c',
                                borderWidth: 1,
                                fill: false,

                                data:prod_boxn,
                                type: 'bar',
                                stack: 'stack 0'
                            },
                        ],
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: true,
                        legend: {
                            display: true,
                            position: 'bottom',
                            labels: {
                                fontStyle: 'bold',
                                fontSize: 12
                            }
                        },
                        plugins: {
                            datalabels: {
                                display: false,

                                anchor: 'center',
                                align: 'center',

                                formatter: function (value, context) {
                                    return Math.round(value) + '';
                                },
                                font: {
                                    weight: 'bold',
                                    size: 14

                                },
                                value: {
                                    color: 'white'
                                },
                                intersect: false
                                //,
                                //color: 'rgba(0,0,0,0.5)' #8497B0
                            }
                        },
                        scales: {
                            yAxes: [{
                                stcked: true,
                                ticks: {
                                    beginAtZero: true,
                                    fontStyle: 'bold',
                                    fontSize: 12,
                                    min: 0,

                                    maxTicksLimit: 10
                                    //,
                                    //callback: function (value) { return value + "%" }
                                },
                                scaleLabel: {
                                    display: true,
                                    //labelString: "",
                                    fontStyle: 'bold'
                                }
                            }],
                            xAxes: [{
                                stacked: true,
                                ticks: {
                                    fontStyle: 'bold',
                                    fontSize: 12
                                },
                                gridLines: {
                                    display: false
                                }
                            }]
                        },
                        title: {
                            display: true,
                            text: 'Production And Dispatch',
                            fontSize: 16
                        },
                        tooltips: {
                            mod: 'index',
                            intersect: 'false'
                        }
                    }
                    //,
                    //options: {
                    //    responsive: true,
                    //    maintainAspectRatio: true,
                    //    legend: {
                    //        position: 'top',
                    //    },
                    //    plugins: {
                    //        datalabels: {
                    //            display: false,
                    //            anchor: 'start',
                    //            align: 'top',

                    //            formatter: function (value, context) {
                    //                return Math.round(value) + '';
                    //            },
                    //            font: {
                    //                weight: 'bold',
                    //                size: 14
                    //            }
                    //            //,
                    //            //color: 'rgba(0,0,0,0.5)' #8497B0
                    //        }
                    //    },
                    //    scales: {
                    //        yAxes: [{
                    //            ticks: {
                    //                beginAtZero: true
                    //            },
                    //            stcked: true
                    //        }],
                    //        xAxes: [{
                    //            stacked: true,
                    //            barPercentage:0.6
                    //        }]
                    //    },
                    //    title: {
                    //        display: true,
                    //        text: 'PRODUCTION AND DISPATCH'
                    //    },
                    //    tooltips: {
                    //        mod: 'index',
                    //        intersect: 'false'
                    //    }
                    //}
                });
            }
            else if (val1 == 2) {
                
             prod_mon_bgc = new Array();
                prod_mon_boxn = new Array();
                  prod_mon_bgc.push(<%=wfps_mon_bgc.Item(0)%>)
                prod_mon_bgc.push(<%=stock_mon_bgc.Item(0)%>)
                prod_mon_bgc.push(<%=dispatch_mon_bgc.Item(0)%>)
                prod_mon_bgc.push(<%=heats_mon_bgc.Item(0)%>)
                prod_mon_bgc.push(<%=cast_mon_bgc.Item(0)%>)

             prod_mon_boxn.push(<%=wfps_mon_boxn.Item(0)%>)
                prod_mon_boxn.push(<%=stock_mon_boxn.Item(0)%>)
                prod_mon_boxn.push(<%=dispatch_mon_boxn.Item(0)%>)
                prod_mon_boxn.push(<%=heats_mon_boxn.Item(0)%>)
                prod_mon_boxn.push(<%=cast_mon_boxn.Item(0)%>)

                if (myChart13) myChart13.destroy();
                ctx13.restore;
                myChart13 = new Chart(ctx13, {
                    type: 'bar',
                    data: {
                        labels: type_category,
                        datasets: [
                            {
                                label: "BGC",
                                //backgroundColor:'rgb(204,0,204)',
                                //borderColor:'rgb(204,0,204)',
                                backgroundColor: '#ffa600',
                                borderColor: '#ffa600',
                                borderWidth: 1,
                                fill: false,

                                data:prod_mon_bgc,
                                type: 'bar',
                                stack: 'stack 0'

                            },
                            {
                                label: "BOXN",
                                //backgroundColor: 'rgb(96,96,96)',
                                //borderColor: 'rgb(96,96,96)',
                                backgroundColor: '#003f5c',
                                borderColor: '#003f5c',
                                borderWidth: 1,
                                fill: false,

                                data:prod_mon_boxn,
                                type: 'bar',
                                stack: 'stack 0'
                            },
                        ],
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: true,
                        legend: {
                            position: 'top',
                        },
                        plugins: {
                            datalabels: {
                                display: false,
                                anchor: 'start',
                                align: 'top',

                                formatter: function (value, context) {
                                    return Math.round(value) + '';
                                },
                                font: {
                                    weight: 'bold',
                                    size: 14
                                }
                                //,
                                //color: 'rgba(0,0,0,0.5)' #8497B0
                            }
                        },
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                },
                                stcked: true
                            }],
                            xAxes: [{
                                stacked: true
                            }]
                        },
                        title: {
                            display: true,
                            text: 'PRODUCTION AND DISPATCH'
                        },
                        tooltips: {
                            mod: 'index',
                            intersect: 'false'
                        }
                    }
                });
            }
            else if (val1 == 3) {
                           
             prod_year_bgc = new Array();
                prod_year_boxn = new Array();
               prod_year_bgc.push(<%=wfps_year_bgc.Item(0)%>)
                prod_year_bgc.push(<%=stock_year_bgc.Item(0)%>)
                prod_year_bgc.push(<%=dispatch_year_bgc.Item(0)%>)
                prod_year_bgc.push(<%=heats_year_bgc.Item(0)%>)
                prod_year_bgc.push(<%=cast_year_bgc.Item(0)%>)

               prod_year_boxn.push(<%=wfps_year_boxn.Item(0)%>)
                prod_year_boxn.push(<%=stock_year_boxn.Item(0)%>)
                prod_year_boxn.push(<%=dispatch_year_boxn.Item(0)%>)
                prod_year_boxn.push(<%=heats_year_boxn.Item(0)%>)
                prod_year_boxn.push(<%=cast_year_boxn.Item(0)%>)

                if (myChart13) myChart13.destroy();
                ctx13.restore;
                myChart13 = new Chart(ctx13, {
                    type: 'bar',
                    data: {
                        labels: type_category,
                        datasets: [
                            {
                                label: "BGC",
                                //backgroundColor:'rgb(204,0,204)',
                                //borderColor:'rgb(204,0,204)',
                                backgroundColor: '#ffa600',
                                borderColor: '#ffa600',
                                borderWidth: 1,
                                fill: false,

                                data: prod_year_bgc,
                                type: 'bar',
                                stack: 'stack 0'

                            },
                            {
                                label: "BOXN",
                                //backgroundColor: 'rgb(96,96,96)',
                                //borderColor: 'rgb(96,96,96)',
                                backgroundColor: '#003f5c',
                                borderColor: '#003f5c',
                                borderWidth: 1,
                                fill: false,

                                data: prod_year_boxn,
                                type: 'bar',
                                stack: 'stack 0'
                            },
                        ],
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: true,
                        legend: {
                            position: 'top',
                        },

                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                },
                                stcked: true
                            }],
                            xAxes: [{
                                stacked: true
                            }]
                        },
                        title: {
                            display: true,
                            text: 'PRODUCTION AND DISPATCH'
                        },
                        tooltips: {
                            mod: 'index',
                            intersect: 'false'
                        }
                    }
                });
            }

        }
        function quarter_pos() {
            type_category = new Array();

            type_category.push("APR-JUN");
            type_category.push("JUL-SEP");
            type_category.push("OCT-DEC");
            type_category.push("JAN-MAR");
           // alert('<%=mon%>');

           qtr_actual_bgc = new Array();
            qtr_target_bgc = new Array();
            qtr_actual_boxn = new Array();
             qtr_target_boxn = new Array();

            <% For i = 0 To qtr_act_bgc.Count - 1%> 
                qtr_actual_bgc.push('<%=qtr_act_bgc.Item(i)%>');
                qtr_target_bgc.push(<%=qtr_tar_bgc.Item(i)%>)
                      <%Next%> 
             <% For i = 0 To qtr_act_boxn.Count - 1%> 
                qtr_actual_boxn.push('<%=qtr_act_boxn.Item(i)%>');
                qtr_target_boxn.push(<%=qtr_tar_boxn.Item(i)%>)
                      <%Next%> 

             if (myChart14) myChart14.destroy();
                ctx14.restore;
                myChart14 = new Chart(ctx14, {
                    type: 'bar',
                    data: {
                        labels: type_category,
                        datasets: [
                            {
                                label: "TARGET : BGC",
                                //backgroundColor:'rgb(255,153,255)',
                                //borderColor: 'rgb(255,153,255)',
                                backgroundColor: '#ffa600',
                                borderColor: '#ffa600',
                                borderWidth: 1,
                                fill: false,

                                data: qtr_target_bgc,
                                type: 'bar',
                                stack: 'stack 0'

                            },
                            {
                                label: "TARGET : BOXN",
                                //backgroundColor: 'rgb(192,192,192)',
                                //borderColor: 'rgb(192,192,192)',
                                backgroundColor: '#003f5c',
                                borderColor: '#003f5c',
                                borderWidth: 1,
                                fill: false,

                                data: qtr_target_boxn,
                                type: 'bar',
                                stack: 'stack 0'
                            },
                             {
                                label: "ACTUAL : BGC",
                                //backgroundColor:'rgb(204,0,204)',
                                //borderColor: 'rgb(204,0,204)',
                                 backgroundColor: '#ef5675',
                                 borderColor: '#ef5675',
                                borderWidth: 1,
                                fill: false,

                                data: qtr_actual_bgc,
                                type: 'bar',
                                stack: 'stack 1'

                            },
                            {
                                label: "ACTUAL : BOXN",
                                //backgroundColor: 'rgb(96,96,96)',
                                //borderColor: 'rgb(96,96,96)',
                                backgroundColor: '#7a5195',
                                borderColor: '#7a5195',
                                borderWidth: 1,
                                fill: false,

                                data: qtr_actual_boxn,
                                type: 'bar',
                                stack: 'stack 1'
                            },
                        ],
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: true,
                        legend: {
                            display: true,
                            position: 'bottom',
                            labels: {
                                fontStyle: 'bold',
                                fontSize: 12
                            }
                        },
                        plugins: {
                            datalabels: {
                                display: false,

                                anchor: 'center',
                                align: 'center',

                                formatter: function (value, context) {
                                    return Math.round(value) + '';
                                },
                                font: {
                                    weight: 'bold',
                                    size: 14

                                },
                                value: {
                                    color: 'white'
                                },
                                intersect: false
                                //,
                                //color: 'rgba(0,0,0,0.5)' #8497B0
                            }
                        },
                        scales: {
                            yAxes: [{
                                stcked: true,
                                ticks: {
                                    beginAtZero: true,
                                    fontStyle: 'bold',
                                    fontSize: 12,
                                    min: 0,

                                    maxTicksLimit: 10
                                    //,
                                    //callback: function (value) { return value + "%" }
                                },
                                scaleLabel: {
                                    display: true,
                                    //labelString: "",
                                    fontStyle: 'bold'
                                }
                            }],
                            xAxes: [{
                                stacked: true,
                                ticks: {
                                    fontStyle: 'bold',
                                    fontSize: 12
                                },
                                gridLines: {
                                    display: false
                                }
                            }]
                        },
                        title: {
                            display: true,
                            text: 'Quarterly Production',
                            fontSize: 16
                        },
                        tooltips: {
                            mod: 'index',
                            intersect: 'false'
                        }
                    }
                    //,
                    //options: {
                    //    responsive: true,
                    //    maintainAspectRatio: true,
                    //    legend: {
                    //        position: 'top',
                    //    },

                    //    scales: {
                    //        yAxes: [{
                    //            ticks: {
                    //                beginAtZero: true
                    //            },
                    //            stcked: true
                    //        }],
                    //        xAxes: [{
                    //            stacked: true
                    //        }]
                    //    },
                    //    title: {
                    //        display: true,
                    //        text: 'QUARTERLY PRODUCTION'
                    //    },
                    //    tooltips: {
                    //        mod: 'index',
                    //        intersect: 'false'
                    //    }
                    //}
                });
        }
         val1=1
        function wfps(value) {
            var val1 = value
            if (val1 == 1) {
               wfps_para1 = new Array();
                 wfps_target1 = new Array();
                wfps_actual1 = new Array();

                 <% For i = 0 To wfps_parameter.Count - 1%> 
                wfps_para1.push('<%=wfps_parameter.Item(i)%>');
                wfps_target1.push(<%=wfps_target.Item(i)%>)
                wfps_actual1.push(<%=wfps_actual.Item(i)%>)
                      <%Next%>
            }
             else if (val1 == 2) {
               wfps_para1 = new Array();
                 wfps_target1 = new Array();
                wfps_actual1 = new Array();

                 <% For i = 0 To wfps_mon_para.Count - 1%> 
                wfps_para1.push('<%=wfps_mon_para.Item(i)%>');
                wfps_target1.push(<%=wfps_mon_target.Item(i)%>)
                wfps_actual1.push(<%=wfps_mon_actual.Item(i)%>)
                      <%Next%>
            }
             else if (val1 == 3) {
               wfps_para1 = new Array();
                 wfps_target1 = new Array();
                wfps_actual1 = new Array();

                 <% For i = 0 To wfps_year_para.Count - 1%> 
                wfps_para1.push('<%=wfps_year_para.Item(i)%>');
                wfps_target1.push(<%=wfps_year_target.Item(i)%>)
                wfps_actual1.push(<%=wfps_year_actual.Item(i)%>)
                      <%Next%>
            }
            if(myChart15) myChart15.destroy();
		ctx15.restore;
             myChart15 = new Chart(ctx15, {
                 type: 'bar',
                 data: {
                     labels: wfps_para1,
                     datasets: [

                         {
                             label: "TARGET",
                             //backgroundColor:'rgb(204,0,204)',
                             //borderColor:'rgb(204,0,204)',
                             backgroundColor: '#ffa600',
                             borderColor: '#ffa600',
                             borderWidth: 1,
                             fill: false,

                             data: wfps_target1,
                             type: 'bar',
                             stack: 'stack 0'

                         },
                     {
                             label: "ACTUAL",
                             //backgroundColor: 'rgb(96,96,96)',
                             //borderColor:  'rgb(96,96,96)',
                             backgroundColor: '#003f5c',
                             borderColor: '#003f5c',
                             borderWidth: 1,
                             fill: false,

                             data: wfps_actual1,
                             type: 'bar',
                             stack: 'stack 0'


                         },
                        
                     ],



                 },
                 options: {
                     responsive: true,
                     maintainAspectRatio: true,
                     legend: {
                         display: true,
                         position: 'bottom',
                         labels: {
                             fontStyle: 'bold',
                             fontSize: 12
                         }
                     },
                     plugins: {
                         datalabels: {
                             display: false,

                             anchor: 'center',
                             align: 'center',

                             formatter: function (value, context) {
                                 return Math.round(value) + '';
                             },
                             font: {
                                 weight: 'bold',
                                 size: 14

                             },
                             value: {
                                 color: 'white'
                             },
                             intersect: false
                             //,
                             //color: 'rgba(0,0,0,0.5)' #8497B0
                         }
                     },
                     scales: {
                         yAxes: [{
                             stcked: true,
                             ticks: {
                                 beginAtZero: true,
                                 fontStyle: 'bold',
                                 fontSize: 12,
                                 min: 0,

                                 maxTicksLimit: 10
                                 //,
                                 //callback: function (value) { return value + "%" }
                             },
                             scaleLabel: {
                                 display: true,
                                 //labelString: "",
                                 fontStyle: 'bold'
                             }
                         }],
                         xAxes: [{
                             stacked: true,
                             ticks: {
                                 fontStyle: 'bold',
                                 fontSize: 12
                             },
                             gridLines: {
                                 display: false
                             }
                         }]
                     },
                     title: {
                         display: true,
                         text: 'WFPS Production Position',
                         fontSize: 16
                     },
                     tooltips: {
                         mod: 'index',
                         intersect: 'false'
                     }
                 }
    //             ,
    //             options: {
    //                 responsive: true,
    //                 maintainAspectRatio: true,
    //                 legend: {
    //                     position: 'top',
    //                 },

    //                 scales: {
    //                     yAxes: [{
    //                         ticks: {
    //                             beginAtZero: true
    //                         },
    //                         stcked:true
    //                     }],
    //                     xAxes: [{
    //                         stacked: true,
    //                         barPercentage:0.2
    //                     }]
    //                 },
    //                 title: {
    //                     display: true,
    //                     text: 'WFPS PRODUCTION POSITION'
    //                 },
    //                 tooltips:{
    //                     mod: 'index',
    //                     intersect:'false'
    //             }
				//}
				
		});
        }

      </script> 

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



    
</body>
</html>
