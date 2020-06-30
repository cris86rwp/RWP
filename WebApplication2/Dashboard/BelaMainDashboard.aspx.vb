Imports System.Data.SqlClient
Imports Microsoft.ApplicationBlocks.Data
Public Class BelaMainDashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'working_year = DateTime.Now.ToString("yyyy")
        'working_days_tilldate(working_year - 1, working_year)
        'working_days_year(working_year - 1, working_year)

        working_year = DateTime.Now.ToString("yyyy")
        If mon >= 4 And mon <= 12 Then
            c1 = cyear
            c2 = cyear + 1
        End If
        If mon >= 1 And mon <= 3 Then
            c1 = cyear - 1
            c2 = cyear
        End If
        working_days()

        melt_daily_production()
        mould_daily_production()
        mrs_daily_production()
        heat_treatment_daily_production()
        dark_room_daily_production()

        melt_mon_production()
        mould_mon_production()
        mrs_mon_production()
        heat_treatment_mon_production()
        dark_room_mon_production()

        melt_year_production()
        mould_year_production()
        mrs_year_production()
        heat_treatment_year_production()
        dark_room_year_production()

        prod_stock_dispatch()
        prod_stock_dispatch_mon()
        prod_stock_dispatch_year()

        quarter_position()
        critical_material()
        breakdown_detail()
        rt_vehicle_position()
        wheels_in_process()
        WFPS_daily()
        WFPS_monthly()
        WFPS_yearly()
    End Sub

    Public qtr_type As New ArrayList
    Public qtr_type_value As New ArrayList

    'Public working_year As String
    'Dim nhday As Integer
    'Dim n As Integer
    'Dim ndays_year As Integer
    'Dim list As New List(Of String)
    'Dim start_year_now As Integer
    'Dim end_year_now As Integer
    'Dim tilldate As Integer

    'Public wdays_tilldate As Integer
    'Public wdays_year As Integer


    'WORKING DAY NEW

    Public working_year As String
    Public total_days_year As Integer
    Public total_holidays As Integer
    Public tilldate_days_year As Integer
    Public tilldate_holidays As Integer

    Public total_work_days As Integer
    Public tilldate_work_days As Integer

    'daily
    Public melt_parameter_boxn As New ArrayList
    Public melt_target_boxn As New ArrayList
    Public melt_actual_boxn As New ArrayList

    Public melt_parameter_bgc As New ArrayList
    Public melt_target_bgc As New ArrayList
    Public melt_actual_bgc As New ArrayList

    Public mould_parameter_boxn As New ArrayList
    Public mould_target_boxn As New ArrayList
    Public mould_actual_boxn As New ArrayList

    Public mould_parameter_bgc As New ArrayList
    Public mould_target_bgc As New ArrayList
    Public mould_actual_bgc As New ArrayList

    Public mrs_parameter_boxn As New ArrayList
    Public mrs_target_boxn As New ArrayList
    Public mrs_actual_boxn As New ArrayList

    Public mrs_parameter_bgc As New ArrayList
    Public mrs_target_bgc As New ArrayList
    Public mrs_actual_bgc As New ArrayList

    Public heat_treatment_parameter_boxn As New ArrayList
    Public heat_treatment_target_boxn As New ArrayList
    Public heat_treatment_actual_boxn As New ArrayList

    Public heat_treatment_parameter_bgc As New ArrayList
    Public heat_treatment_target_bgc As New ArrayList
    Public heat_treatment_actual_bgc As New ArrayList

    Public dark_room_parameter_boxn As New ArrayList
    Public dark_room_target_boxn As New ArrayList
    Public dark_room_actual_boxn As New ArrayList

    Public dark_room_parameter_bgc As New ArrayList
    Public dark_room_target_bgc As New ArrayList
    Public dark_room_actual_bgc As New ArrayList

    Public melt_para_mon_boxn As New ArrayList
    Public melt_target_mon_boxn As New ArrayList
    Public melt_actual_mon_boxn As New ArrayList

    'monthly
    Public melt_para_mon_bgc As New ArrayList
    Public melt_target_mon_bgc As New ArrayList
    Public melt_actual_mon_bgc As New ArrayList

    Public mould_para_mon_boxn As New ArrayList
    Public mould_target_mon_boxn As New ArrayList
    Public mould_actual_mon_boxn As New ArrayList

    Public mould_para_mon_bgc As New ArrayList
    Public mould_target_mon_bgc As New ArrayList
    Public mould_actual_mon_bgc As New ArrayList

    Public mrs_para_mon_boxn As New ArrayList
    Public mrs_target_mon_boxn As New ArrayList
    Public mrs_actual_mon_boxn As New ArrayList

    Public mrs_para_mon_bgc As New ArrayList
    Public mrs_target_mon_bgc As New ArrayList
    Public mrs_actual_mon_bgc As New ArrayList

    Public heat_treatment_para_mon_boxn As New ArrayList
    Public heat_treatment_target_mon_boxn As New ArrayList
    Public heat_treatment_actual_mon_boxn As New ArrayList

    Public heat_treatment_para_mon_bgc As New ArrayList
    Public heat_treatment_target_mon_bgc As New ArrayList
    Public heat_treatment_actual_mon_bgc As New ArrayList

    Public dark_room_para_mon_boxn As New ArrayList
    Public dark_room_target_mon_boxn As New ArrayList
    Public dark_room_actual_mon_boxn As New ArrayList

    Public dark_room_para_mon_bgc As New ArrayList
    Public dark_room_target_mon_bgc As New ArrayList
    Public dark_room_actual_mon_bgc As New ArrayList

    'yearly
    Public melt_para_year_bgc As New ArrayList
    Public melt_actual_year_bgc As New ArrayList
    Public melt_target_year_bgc As New ArrayList

    Public melt_para As New ArrayList
    Public melt_actual_year_boxn As New ArrayList
    Public melt_target_year_boxn As New ArrayList

    Public mould_para_year_bgc As New ArrayList
    Public mould_actual_year_bgc As New ArrayList
    Public mould_target_year_bgc As New ArrayList

    Public mould_para_year_boxn As New ArrayList
    Public mould_actual_year_boxn As New ArrayList
    Public mould_target_year_boxn As New ArrayList

    Public mrs_para_year_bgc As New ArrayList
    Public mrs_actual_year_bgc As New ArrayList
    Public mrs_target_year_bgc As New ArrayList

    Public mrs_para_year_boxn As New ArrayList
    Public mrs_actual_year_boxn As New ArrayList
    Public mrs_target_year_boxn As New ArrayList

    Public heat_treatment_para_year_bgc As New ArrayList
    Public heat_treatment_actual_year_bgc As New ArrayList
    Public heat_treatment_target_year_bgc As New ArrayList

    Public heat_treatment_para_year_boxn As New ArrayList
    Public heat_treatment_actual_year_boxn As New ArrayList
    Public heat_treatment_target_year_boxn As New ArrayList

    Public dark_room_para_year_bgc As New ArrayList
    Public dark_room_actual_year_bgc As New ArrayList
    Public dark_room_target_year_bgc As New ArrayList

    Public dark_room_para_year_boxn As New ArrayList
    Public dark_room_actual_year_boxn As New ArrayList
    Public dark_room_target_year_boxn As New ArrayList

    'production daily
    Public wfps_bgc As New ArrayList
    Public wfps_boxn As New ArrayList
    Public stock_bgc As New ArrayList
    Public stock_boxn As New ArrayList
    Public dispatch_bgc As New ArrayList
    Public dispatch_boxn As New ArrayList
    Public heats_bgc As New ArrayList
    Public heats_boxn As New ArrayList
    Public cast_bgc As New ArrayList
    Public cast_boxn As New ArrayList

    'production monthly
    Public wfps_mon_bgc As New ArrayList
    Public wfps_mon_boxn As New ArrayList
    Public stock_mon_bgc As New ArrayList
    Public stock_mon_boxn As New ArrayList
    Public dispatch_mon_bgc As New ArrayList
    Public dispatch_mon_boxn As New ArrayList
    Public heats_mon_bgc As New ArrayList
    Public heats_mon_boxn As New ArrayList
    Public cast_mon_bgc As New ArrayList
    Public cast_mon_boxn As New ArrayList

    'production yearly
    Public wfps_year_bgc As New ArrayList
    Public wfps_year_boxn As New ArrayList
    Public stock_year_bgc As New ArrayList
    Public stock_year_boxn As New ArrayList
    Public dispatch_year_bgc As New ArrayList
    Public dispatch_year_boxn As New ArrayList
    Public heats_year_bgc As New ArrayList
    Public heats_year_boxn As New ArrayList
    Public cast_year_bgc As New ArrayList
    Public cast_year_boxn As New ArrayList

    Public fyear As Integer = (DateTime.Now.ToString("yyyy")) - 4
    Public endyear As Integer = 4
    Public c As String = "-"
    Public str As String = CStr(fyear) & CStr(c) & CStr(fyear + 1)
    Public cyear As Integer = (DateTime.Now.ToString("yyyy"))
    Public mon As Integer = (DateTime.Now.ToString("MM"))
    Public d As Integer
    Public bleapyear As Boolean
    Public c1 As Integer
    Public c2 As Integer

    Public qtr_act_bgc As ArrayList
    Public qtr_act_boxn As ArrayList
    Public qtr_tar_bgc As ArrayList
    Public qtr_tar_boxn As ArrayList

    Public critical_date As ArrayList
    Public material As ArrayList
    Public shop_floor As ArrayList
    Public in_stock As ArrayList
    Public status As ArrayList

    Public breakdown_date As ArrayList
    Public machine_code As ArrayList
    Public reason As ArrayList

    Public rt_date As ArrayList
    Public rt_vehicle As ArrayList
    Public total_pop As ArrayList
    Public good_working As ArrayList
    Public under_maintenance As ArrayList

    Public wheels_date As New ArrayList
    Public await_mc As New ArrayList
    Public await_heat_boxn As New ArrayList
    Public await_heat_bgc As New ArrayList
    Public await_batch_clearance As New ArrayList
    Public await_final_processing As New ArrayList
    Public mc_await_processing As New ArrayList
    Public RHT As New ArrayList
    Public hold_boring_stock As New ArrayList
    Public hold_final_inspection As New ArrayList
    Public total_sl As New ArrayList

    'wfps daily
    Public wfps_parameter As New ArrayList
    Public wfps_target As New ArrayList
    Public wfps_actual As New ArrayList

    'wfps monthly
    Public wfps_mon_para As New ArrayList
    Public wfps_mon_target As New ArrayList
    Public wfps_mon_actual As New ArrayList

    'wfps yearly
    Public wfps_year_para As New ArrayList
    Public wfps_year_target As New ArrayList
    Public wfps_year_actual As New ArrayList

    ' Dim con As SqlConnection = New SqlConnection("Data Source=rwpbeladev.southindia.cloudapp.azure.com,1433;Initial Catalog=wapdev;Persist Security Info=True;User ID=cristrg;Password=trg123")
    Dim con As SqlConnection = New SqlConnection("Data Source=DESKTOP-CIHFIAA\SQLEXPRESS01;Initial Catalog=wapdev;Persist Security Info=True;User ID=sa;Password=cris-sa")

    Public Sub WFPS_yearly()
        Dim rdr As SqlDataReader
        wfps_year_para = New ArrayList
        wfps_year_target = New ArrayList
        wfps_year_actual = New ArrayList
        If mon >= 4 And mon <= 12 Then
            c1 = cyear
            c2 = cyear + 1
        End If
        If mon >= 1 And mon <= 3 Then
            c1 = cyear - 1
            c2 = cyear
        End If
        Dim str = "select parameter from daily_production_position where date between '2020-04-01' and '2021-03-31' and process='WFPS' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2021-03-31' and process='WFPS' group by parameter"
        Dim str2 = "select count(distinct wheelnumber) as actual_wfps from mm_wheelInspection
                    where dbo.GetFinancialYear (cast(date as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(date as date)) FROM mm_wheelInspection WHERE dbo.GetFinancialYear (cast(date as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(date as date)) DESC)
                    group by dbo.GetFinancialYear (cast(date as date))"
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            wfps_year_para.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            wfps_year_target.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str2)
        While rdr.Read
            wfps_year_actual.Add(rdr.Item("actual_wfps"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub WFPS_monthly()
        Dim rdr As SqlDataReader
        wfps_mon_para = New ArrayList
        wfps_mon_target = New ArrayList
        wfps_mon_actual = New ArrayList
        bleapyear = Date.IsLeapYear(cyear + 1)
        If mon = 5 Or mon = 7 Or mon = 8 Or mon = 10 Or mon = 12 Then
            d = 31
            cyear = cyear
        End If
        If mon = 1 Or mon = 3 Then
            d = 31
            cyear = cyear + 1
        End If
        If mon = 4 Or mon = 6 Or mon = 9 Or mon = 10 Or mon = 11 Then
            d = 30
            cyear = cyear
        End If
        If bleapyear = True And mon = 2 Then
            d = 29
            cyear = cyear + 1
        Else
            d = 28
            cyear = cyear
        End If

        Dim str = "select distinct parameter from daily_production_position where process='WFPS' and date between '2020-04-01' and '2020-04-30' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and process='WFPS' group by parameter"
        Dim str2 = "select count(distinct wheelnumber) as actual_wfps from mm_wheelInspection
                    where cast(date as date) BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(date as date)), 0) AS DATE) from mm_wheelInspection WHERE cast(date as date) IN (SELECT TOP 1 cast(date as date) FROM mm_wheelInspection WHERE cast(date as date) <= getdate() ORDER BY cast(date as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(date as date)), -1) AS DATE) from mm_wheelInspection WHERE cast(date as date) IN (SELECT TOP 1 cast(date as date) FROM mm_wheelInspection WHERE cast(date as date) <= getdate() ORDER BY cast(date as date) DESC)) "
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            wfps_mon_para.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            wfps_mon_target.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str2)
        While rdr.Read
            wfps_mon_actual.Add(rdr.Item("actual_wfps"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub WFPS_daily()
        Dim rdr As SqlDataReader
        wfps_parameter = New ArrayList
        wfps_target = New ArrayList
        wfps_actual = New ArrayList

        Dim str = "select distinct parameter from daily_production_position where process='WFPS' and date='2020-04-11'"
        Dim str1 = "select distinct target from daily_production_position where process='WFPS' and date='2020-04-11'"
        Dim str2 = "select count(distinct wheelnumber) as actual_wfps from mm_wheelInspection
                    where cast(date as date) in(
                    select top 1 cast(date as date) from mm_wheelInspection where cast(date as date)<=GETDATE() order by cast(date as date) desc)"
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            wfps_parameter.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            wfps_target.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str2)
        While rdr.Read
            wfps_actual.Add(rdr.Item("actual_wfps"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub wheels_in_process()
        Dim rdr As SqlDataReader
        wheels_date = New ArrayList
        await_mc = New ArrayList
        await_heat_boxn = New ArrayList
        await_heat_bgc = New ArrayList
        await_batch_clearance = New ArrayList
        await_final_processing = New ArrayList
        mc_await_processing = New ArrayList
        RHT = New ArrayList
        hold_boring_stock = New ArrayList
        hold_final_inspection = New ArrayList
        total_sl = New ArrayList
        Dim str = "select convert(varchar,date,103) [date],await_machining,await_heat_boxn,await_heat_bgc,await_batch_clearance,await_final_processing,machined_await_processing,RHT_reRHT,hold_boring_stock,hold_final_inspection_HBMC_HTMC,total_sl_no_1_to_9 from wheels_in_process where date='2020-03-20'"
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            wheels_date.Add(rdr.Item("date"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            await_mc.Add(rdr.Item("await_machining"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            await_heat_boxn.Add(rdr.Item("await_heat_boxn"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            await_heat_bgc.Add(rdr.Item("await_heat_bgc"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            await_batch_clearance.Add(rdr.Item("await_batch_clearance"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            await_final_processing.Add(rdr.Item("await_final_processing"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            mc_await_processing.Add(rdr.Item("machined_await_processing"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            RHT.Add(rdr.Item("RHT_reRHT"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            hold_boring_stock.Add(rdr.Item("hold_boring_stock"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            hold_final_inspection.Add(rdr.Item("hold_final_inspection_HBMC_HTMC"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            total_sl.Add(rdr.Item("total_sl_no_1_to_9"))
        End While
        rdr.Close()
        con.Close()
    End Sub
    Public Sub rt_vehicle_position()
        Dim rdr As SqlDataReader
        rt_date = New ArrayList
        rt_vehicle = New ArrayList
        total_pop = New ArrayList
        good_working = New ArrayList
        under_maintenance = New ArrayList
        ' Dim str = "select convert(varchar,date,103) [date],rt_vehicle,total_population,good_working,under_maintenance from rt_vehicle_position where convert(varchar,date,103)='20/03/2020'"
        Dim str1 = "select convert(varchar,b.breakdown_time,103) [date],a.registration_number rt_vehicle,sum(a.capacity) total_population,(sum(a.capacity)-count(b.registration_number)) good_working,
                    b.remarks_after_repair under_maintenance
                    from ms_vehicle_master a,ms_vehicle_breakdown b 
                    where a.registration_number=b.registration_number and b.breakdown_time in
                    (select top 1 breakdown_time from ms_vehicle_breakdown where breakdown_time<getdate() order by breakdown_time desc)
                    group by b.breakdown_time,a.registration_number,b.remarks_after_repair"
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            rt_date.Add(rdr.Item("date"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            rt_vehicle.Add(rdr.Item("rt_vehicle"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            total_pop.Add(rdr.Item("total_population"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            good_working.Add(rdr.Item("good_working"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            under_maintenance.Add(rdr.Item("under_maintenance"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub breakdown_detail()
        Dim rdr As SqlDataReader
        breakdown_date = New ArrayList
        machine_code = New ArrayList
        reason = New ArrayList
        'Dim str = "select convert(varchar,date,103) [date],machine_code,reason from breakdown where convert(varchar,date,103)='20/03/2020'"


        Dim str = "select CONCAT(FORMAT(breakdown_date, 'dd'),'-',FORMAT(breakdown_date, 'MMM'),'-',FORMAT(breakdown_date, 'yyyy')) AS BREAKDOWN_DATE ,machine_code,remarks as Reason from ms_vw_breakdown_memo
                    WHERE breakdown_date IN (SELECT MAX(breakdown_date) FROM MS_VW_BREAKDOWN_MEMO)"


        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            breakdown_date.Add(rdr.Item("BREAKDOWN_DATE"))
            machine_code.Add(rdr.Item("machine_code"))
            reason.Add(rdr.Item("Reason"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub critical_material()
        Dim rdr As SqlDataReader
        critical_date = New ArrayList
        material = New ArrayList
        shop_floor = New ArrayList
        in_stock = New ArrayList
        status = New ArrayList
        Dim str = "select convert(varchar,date,103) [date],material,shop_floor,in_stock,status from critical_material where convert(varchar,date,103)='20/03/2020'"

        Dim str1 = "select convert(varchar,c.record_date,103) [date],b.pl_number,a.short_description as material,c.opening_balance as shop_floor,c.closing_balance as in_stores
                    from pm_item_master a,dm_critical_item b,mm_shop_accountal c where a.pl_number=b.pl_number
                    and b.pl_number=c.pl_number and cast(c.record_date as date) in
                    (SELECT TOP 1 c.record_date FROM pm_item_master a,dm_critical_item b,mm_shop_accountal c
                    where a.pl_number=b.pl_number and b.pl_number=c.pl_number and c.record_date <=getdate()
                    order by c.record_date desc)"
        Dim str2 = "select top 16 status from critical_material"
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            critical_date.Add(rdr.Item("date"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            material.Add(rdr.Item("material"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            shop_floor.Add(rdr.Item("shop_floor"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            in_stock.Add(rdr.Item("in_stores"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str2)
        While rdr.Read
            status.Add(rdr.Item("status"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub quarter_position()
        Dim rdr As SqlDataReader
        If mon >= 4 And mon <= 12 Then
            cyear = cyear
        Else
            cyear = cyear - 1
        End If

        qtr_act_bgc = New ArrayList
        qtr_act_boxn = New ArrayList
        qtr_tar_bgc = New ArrayList
        qtr_tar_boxn = New ArrayList

        Dim str1 = "EXEC wapdev.dbo.quarter_position_proc @Prod='ICF WHL',@Qtr = '1'"
        Dim str2 = "EXEC wapdev.dbo.quarter_position_proc @Prod='ICF WHL',@Qtr = '2'"
        Dim str3 = "EXEC wapdev.dbo.quarter_position_proc @Prod='ICF WHL',@Qtr = '3'"
        Dim str4 = "EXEC wapdev.dbo.quarter_position_proc @Prod='ICF WHL',@Qtr = '4'"

        Dim str5 = "EXEC wapdev.dbo.quarter_position_proc @Prod='BOXN WHL',@Qtr = '1'"
        Dim str6 = "EXEC wapdev.dbo.quarter_position_proc @Prod='BOXN WHL',@Qtr = '2'"
        Dim str7 = "EXEC wapdev.dbo.quarter_position_proc @Prod='BOXN WHL',@Qtr = '3'"
        Dim str8 = "EXEC wapdev.dbo.quarter_position_proc @Prod='BOXN WHL',@Qtr = '4'"

        If mon >= 4 And mon <= 6 Then
            con.Open()
            rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
            While rdr.Read
                qtr_act_bgc.Add(rdr.Item("rmr_generated_qty"))
                qtr_tar_bgc.Add(rdr.Item("workorder_quantity"))
            End While
            rdr.Close()

            rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str5)

            While rdr.Read
                qtr_act_boxn.Add(rdr.Item("rmr_generated_qty"))
                qtr_tar_boxn.Add(rdr.Item("workorder_quantity"))
            End While
            rdr.Close()
            con.Close()
        End If
        If mon >= 7 And mon <= 9 Then
            con.Open()
            rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str2)
            While rdr.Read
                qtr_act_bgc.Add(rdr.Item("rmr_generated_qty"))
                qtr_tar_bgc.Add(rdr.Item("workorder_quantity"))
            End While
            rdr.Close()

            rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str6)

            While rdr.Read
                qtr_act_boxn.Add(rdr.Item("rmr_generated_qty"))
                qtr_tar_boxn.Add(rdr.Item("workorder_quantity"))
            End While
            rdr.Close()
            con.Close()
        End If
        If mon >= 10 And mon <= 12 Then
            con.Open()
            rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
            While rdr.Read
                qtr_act_bgc.Add(rdr.Item("rmr_generated_qty"))
                qtr_tar_bgc.Add(rdr.Item("workorder_quantity"))
            End While
            rdr.Close()

            rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str7)

            While rdr.Read
                qtr_act_boxn.Add(rdr.Item("rmr_generated_qty"))
                qtr_tar_boxn.Add(rdr.Item("workorder_quantity"))
            End While
            rdr.Close()
            con.Close()
        End If
        If mon >= 1 And mon <= 3 Then
            con.Open()
            rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
            While rdr.Read
                qtr_act_bgc.Add(rdr.Item("rmr_generated_qty"))
                qtr_tar_bgc.Add(rdr.Item("workorder_quantity"))
            End While
            rdr.Close()

            rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str8)

            While rdr.Read
                qtr_act_boxn.Add(rdr.Item("rmr_generated_qty"))
                qtr_tar_boxn.Add(rdr.Item("workorder_quantity"))
            End While
            rdr.Close()
            con.Close()
        End If
    End Sub

    'Public Sub prod_stock_dispatch_year()

    '    wfps_year_bgc = New ArrayList
    '    wfps_year_boxn = New ArrayList
    '    stock_year_bgc = New ArrayList
    '    stock_year_boxn = New ArrayList
    '    dispatch_year_bgc = New ArrayList
    '    dispatch_year_boxn = New ArrayList
    '    heats_year_bgc = New ArrayList
    '    heats_year_boxn = New ArrayList
    '    cast_year_bgc = New ArrayList
    '    cast_year_boxn = New ArrayList
    '    Dim rdr As SqlDataReader
    '    If mon >= 4 And mon <= 12 Then
    '        c1 = cyear
    '        c2 = cyear + 1
    '    End If
    '    If mon >= 1 And mon <= 3 Then
    '        c1 = cyear - 1
    '        c2 = cyear
    '    End If

    '    Dim str1 = "select sum(wfps) wboxn from production_stock_dispatch where date between '" & c1 & "-04-01' and '" & c2 & "-03-31' and wheel_type='BOXN'"
    '    Dim str2 = "select sum(wfps) wbgc from production_stock_dispatch where date between '" & c1 & "-04-01' and '" & c2 & "-03-31' and wheel_type='BGC'"
    '    Dim str3 = "select sum(stock) sboxn from production_stock_dispatch where date between '" & c1 & "-04-01' and '" & c2 & "-03-31' and wheel_type='BOXN'"
    '    Dim str4 = "select sum(stock) sbgc from production_stock_dispatch where date between '" & c1 & "-04-01' and '" & c2 & "-03-31' and wheel_type='BGC'"
    '    Dim str5 = "select sum(dispatch) dboxn from production_stock_dispatch where date between '" & c1 & "-04-01' and '" & c2 & "-03-31' and wheel_type='BOXN'"
    '    Dim str6 = "select sum(dispatch) dbgc from production_stock_dispatch where date between '" & c1 & "-04-01' and '" & c2 & "-03-31' and wheel_type='BGC'"
    '    Dim str7 = "select sum(actual) aboxn from daily_production_position where date between '" & c1 & "-04-01' and '" & c2 & "-03-31' and process='MELT' and wheel_type='BOXN' and parameter='No. of Heats'"
    '    Dim str8 = "select sum(actual) abgc from daily_production_position where date between '" & c1 & "-04-01' and '" & c2 & "-03-31' and process='MELT' and wheel_type='BGC' and parameter='No. of Heats'"
    '    Dim str9 = "select sum(actual) aboxn from daily_production_position where date between '" & c1 & "-04-01' and '" & c2 & "-03-31' and process='MOULD' and wheel_type='BOXN' and parameter='No. of fresh/GC wheel casting'"
    '    Dim str10 = "select sum(actual) abgc from daily_production_position where date between '" & c1 & "-04-01' and '" & c2 & "-03-31' and process='MOULD' and wheel_type='BGC' and parameter='No. of fresh/GC wheel casting'"

    '    con.Open()
    '    rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
    '    While rdr.Read
    '        wfps_year_boxn.Add(rdr.Item("wboxn"))
    '    End While
    '    rdr.Close()
    '    rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str2)
    '    While rdr.Read
    '        wfps_year_bgc.Add(rdr.Item("wbgc"))
    '    End While
    '    rdr.Close()
    '    rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
    '    While rdr.Read
    '        stock_year_boxn.Add(rdr.Item("sboxn"))
    '    End While
    '    rdr.Close()
    '    rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
    '    While rdr.Read
    '        stock_year_bgc.Add(rdr.Item("sbgc"))
    '    End While
    '    rdr.Close()
    '    rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str5)
    '    While rdr.Read
    '        dispatch_year_boxn.Add(rdr.Item("dboxn"))
    '    End While
    '    rdr.Close()
    '    rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str6)
    '    While rdr.Read
    '        dispatch_year_bgc.Add(rdr.Item("dbgc"))
    '    End While
    '    rdr.Close()
    '    rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str7)
    '    While rdr.Read
    '        heats_year_boxn.Add(rdr.Item("aboxn"))
    '    End While
    '    rdr.Close()
    '    rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str8)
    '    While rdr.Read
    '        heats_year_bgc.Add(rdr.Item("abgc"))
    '    End While
    '    rdr.Close()
    '    rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str9)
    '    While rdr.Read
    '        cast_year_boxn.Add(rdr.Item("aboxn"))
    '    End While
    '    rdr.Close()
    '    rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str10)
    '    While rdr.Read
    '        cast_year_bgc.Add(rdr.Item("abgc"))
    '    End While
    '    rdr.Close()
    '    con.Close()
    'End Sub


    Public Sub prod_stock_dispatch_year()

        wfps_year_bgc = New ArrayList
        wfps_year_boxn = New ArrayList
        stock_year_bgc = New ArrayList
        stock_year_boxn = New ArrayList
        dispatch_year_bgc = New ArrayList
        dispatch_year_boxn = New ArrayList
        heats_year_bgc = New ArrayList
        heats_year_boxn = New ArrayList
        cast_year_bgc = New ArrayList
        cast_year_boxn = New ArrayList
        Dim rdr As SqlDataReader
        If mon >= 4 And mon <= 12 Then
            c1 = cyear
            c2 = cyear + 1
        End If
        If mon >= 1 And mon <= 3 Then
            c1 = cyear - 1
            c2 = cyear
        End If
        Dim str1 = "select count(distinct a.Wheelnumber) as wfps from mm_wheelInspection a,mm_pouring_old b where a.Heatnumber=b.heat_number and b.wheel_type='BOXN WHL'
                    and a.wheelStatus='PASS' and dbo.GetFinancialYear (cast(date as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(date as date)) FROM mm_wheelInspection a,mm_pouring_old b WHERE a.Heatnumber=b.heat_number and b.wheel_type='BOXN WHL' and a.wheelStatus='PASS' and dbo.GetFinancialYear (cast(date as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(date as date)) DESC)"
        Dim str2 = "select count(distinct a.Wheelnumber) as wfps from mm_wheelInspection a,mm_pouring_old b where a.Heatnumber=b.heat_number and b.wheel_type='ICF WHL'
                    and a.wheelStatus='PASS' and dbo.GetFinancialYear (cast(date as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(date as date)) FROM mm_wheelInspection a,mm_pouring_old b WHERE a.Heatnumber=b.heat_number and b.wheel_type='ICF WHL' and a.wheelStatus='PASS' and dbo.GetFinancialYear (cast(date as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(date as date)) DESC)"
        Dim str3 = "select dbo.GetFinancialYear (cast(TestDate as date)) as FIN_YR,prodType,count(distinct WheelNo) as stock from mm_magnaglow_new_shiftwiserecords_old
                    where prodType='BOXN' and dbo.GetFinancialYear (cast(TestDate as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(TestDate as date)) FROM mm_magnaglow_new_shiftwiserecords_old WHERE ProdType='BOXN' and dbo.GetFinancialYear (cast(TestDate as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(TestDate as date)) DESC)
                    group by dbo.GetFinancialYear (cast(TestDate as date)),ProdType"
        Dim str4 = "select dbo.GetFinancialYear (cast(TestDate as date)) as FIN_YR,prodType,count(distinct WheelNo) as stock from mm_magnaglow_new_shiftwiserecords_old
                    where prodType='BGC' and dbo.GetFinancialYear (cast(TestDate as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(TestDate as date)) FROM mm_magnaglow_new_shiftwiserecords_old WHERE ProdType='BGC' and dbo.GetFinancialYear (cast(TestDate as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(TestDate as date)) DESC)
                    group by dbo.GetFinancialYear (cast(TestDate as date)),ProdType"

        Dim str5 = "select dbo.GetFinancialYear (cast(despatch_date as date)) as FIN_YR,wheel_type,sum(quantity) as quantity from mm_despatchMemo where wheel_type='BOXN' and
                    dbo.GetFinancialYear (cast(despatch_date as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(despatch_date as date)) FROM mm_despatchMemo WHERE wheel_type='BOXN' and dbo.GetFinancialYear (cast(despatch_date as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(despatch_date as date)) DESC)
                    group by dbo.GetFinancialYear (cast(despatch_date as date)),wheel_type"
        Dim str6 = "select dbo.GetFinancialYear (cast(despatch_date as date)) as FIN_YR,wheel_type,sum(quantity) as quantity from mm_despatchMemo where wheel_type='BGC' and
                    dbo.GetFinancialYear (cast(despatch_date as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(despatch_date as date)) FROM mm_despatchMemo WHERE wheel_type='BGC' and dbo.GetFinancialYear (cast(despatch_date as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(despatch_date as date)) DESC)
                    group by dbo.GetFinancialYear (cast(despatch_date as date)),wheel_type"

        Dim str7 = "select dbo.GetFinancialYear (cast(pour_time as date)) as FIN_YR,count(distinct heat_number) as heat_count,wheel_type from mm_pouring_old where wheel_type='BOXN WHL'
                    and dbo.GetFinancialYear (cast(pour_time as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(pour_time as date)) FROM mm_pouring_old WHERE wheel_type='BOXN WHL' and dbo.GetFinancialYear (cast(pour_time as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(pour_time as date)) DESC)
                    group by dbo.GetFinancialYear (cast(pour_time as date)),wheel_type"
        Dim str8 = "select dbo.GetFinancialYear (cast(pour_time as date)) as FIN_YR,count(distinct heat_number) as heat_count,wheel_type from mm_pouring_old where wheel_type='ICF WHL'
                    and dbo.GetFinancialYear (cast(pour_time as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(pour_time as date)) FROM mm_pouring_old WHERE wheel_type='ICF WHL' and dbo.GetFinancialYear (cast(pour_time as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(pour_time as date)) DESC)
                    group by dbo.GetFinancialYear (cast(pour_time as date)),wheel_type"

        Dim str9 = "select dbo.GetFinancialYear (cast(pour_time as date)) as FIN_YR,wheel_type,count(distinct engraved_number) as actual_cast from mm_pouring_old
                    where wheel_type='BOXN WHL' and dbo.GetFinancialYear (cast(pour_time as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(pour_time as date)) FROM mm_pouring_old WHERE wheel_type='BOXN WHL' and dbo.GetFinancialYear (cast(pour_time as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(pour_time as date)) DESC)
                    group by dbo.GetFinancialYear (cast(pour_time as date)),wheel_type"
        Dim str10 = "select dbo.GetFinancialYear (cast(pour_time as date)) as FIN_YR,wheel_type,count(distinct engraved_number) as actual_cast from mm_pouring_old
                    where wheel_type='ICF WHL' and dbo.GetFinancialYear (cast(pour_time as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(pour_time as date)) FROM mm_pouring_old WHERE wheel_type='ICF WHL' and dbo.GetFinancialYear (cast(pour_time as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(pour_time as date)) DESC)
                    group by dbo.GetFinancialYear (cast(pour_time as date)),wheel_type"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            wfps_year_boxn.Add(rdr.Item("wfps"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str2)
        While rdr.Read
            wfps_year_bgc.Add(rdr.Item("wfps"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            stock_year_boxn.Add(rdr.Item("stock"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            stock_year_bgc.Add(rdr.Item("stock"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str5)
        While rdr.Read
            dispatch_year_boxn.Add(rdr.Item("quantity"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str6)
        While rdr.Read
            dispatch_year_bgc.Add(rdr.Item("quantity"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str7)
        While rdr.Read
            heats_year_boxn.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str8)
        While rdr.Read
            heats_year_bgc.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str9)
        While rdr.Read
            cast_year_boxn.Add(rdr.Item("actual_cast"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str10)
        While rdr.Read
            cast_year_bgc.Add(rdr.Item("actual_cast"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub prod_stock_dispatch_mon()
        wfps_mon_bgc = New ArrayList
        wfps_mon_boxn = New ArrayList
        stock_mon_bgc = New ArrayList
        stock_mon_boxn = New ArrayList
        dispatch_mon_bgc = New ArrayList
        dispatch_mon_boxn = New ArrayList
        heats_mon_bgc = New ArrayList
        heats_mon_boxn = New ArrayList
        cast_mon_bgc = New ArrayList
        cast_mon_boxn = New ArrayList


        Dim rdr As SqlDataReader
        bleapyear = Date.IsLeapYear(cyear + 1)
        If mon = 5 Or mon = 7 Or mon = 8 Or mon = 10 Or mon = 12 Then
            d = 31
            cyear = cyear
        End If
        If mon = 1 Or mon = 3 Then
            d = 31
            cyear = cyear + 1
        End If
        If mon = 4 Or mon = 6 Or mon = 9 Or mon = 10 Or mon = 11 Then
            d = 30
            cyear = cyear
        End If
        If bleapyear = True And mon = 2 Then
            d = 29
            cyear = cyear + 1
        Else
            d = 28
            cyear = cyear
        End If

        Dim str1 = "select  count(distinct a.Wheelnumber) as wfps from mm_wheelInspection a,mm_pouring_old b where a.Heatnumber=b.heat_number and b.wheel_type='BOXN WHL'
                    and a.wheelStatus='PASS' and cast(date as date) BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(date as date)), 0) AS DATE) from mm_wheelInspection a,mm_pouring_old b  WHERE date IN (SELECT TOP 1 cast(date as date) FROM mm_wheelInspection a,mm_pouring_old b  WHERE  b.wheel_type='BOXN WHL' and a.wheelStatus='PASS' and cast(date as date) <= getdate() ORDER BY date DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(date as date)), -1) AS DATE) from mm_wheelInspection a,mm_pouring_old b  WHERE date IN (SELECT TOP 1 cast(date as date) FROM mm_wheelInspection a,mm_pouring_old b  WHERE  b.wheel_type='BOXN WHL' and a.wheelStatus='PASS' and cast(date as date) <= getdate() ORDER BY date DESC)) "
        Dim str2 = "select  count(distinct a.Wheelnumber) as wfps from mm_wheelInspection a,mm_pouring_old b where a.Heatnumber=b.heat_number and b.wheel_type='ICF WHL'
                    and a.wheelStatus='PASS' and cast(date as date) BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(date as date)), 0) AS DATE) from mm_wheelInspection a,mm_pouring_old b  WHERE date IN (SELECT TOP 1 cast(date as date) FROM mm_wheelInspection a,mm_pouring_old b  WHERE  b.wheel_type='ICF WHL' and a.wheelStatus='PASS' and cast(date as date) <= getdate() ORDER BY date DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(date as date)), -1) AS DATE) from mm_wheelInspection a,mm_pouring_old b  WHERE date IN (SELECT TOP 1 cast(date as date) FROM mm_wheelInspection a,mm_pouring_old b  WHERE  b.wheel_type='ICF WHL' and a.wheelStatus='PASS' and cast(date as date) <= getdate() ORDER BY date DESC)) "

        Dim str3 = "select count(distinct WheelNo) as stock from mm_magnaglow_new_shiftwiserecords_old where prodType='BOXN' and cast(testdate as date) BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(testdate as date)), 0) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE cast(testdate as date) IN (SELECT TOP 1 cast(testdate as date) FROM mm_magnaglow_new_shiftwiserecords_old WHERE prodType='BOXN' and cast(testdate as date) <= getdate() ORDER BY cast(testdate as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(testdate as date)), -1) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE cast(testdate as date) IN (SELECT TOP 1 cast(testdate as date) FROM mm_magnaglow_new_shiftwiserecords_old WHERE prodType='BOXN' and cast(testdate as date) <= getdate() ORDER BY cast(testdate as date) DESC)) "
        Dim str4 = "select count(distinct WheelNo) as stock from mm_magnaglow_new_shiftwiserecords_old where prodType='BGC' and cast(testdate as date) BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(testdate as date)), 0) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE cast(testdate as date) IN (SELECT TOP 1 cast(testdate as date) FROM mm_magnaglow_new_shiftwiserecords_old WHERE prodType='BGC' and cast(testdate as date) <= getdate() ORDER BY cast(testdate as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(testdate as date)), -1) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE cast(testdate as date) IN (SELECT TOP 1 cast(testdate as date) FROM mm_magnaglow_new_shiftwiserecords_old WHERE prodType='BGC' and cast(testdate as date) <= getdate() ORDER BY cast(testdate as date) DESC)) "

        Dim str5 = "select sum(quantity) as quantity from mm_despatchMemo where wheel_type='BOXN' and despatch_date BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(despatch_date as date)), 0) AS DATE) from mm_despatchMemo WHERE despatch_date IN (SELECT TOP 1 cast(despatch_date as date) FROM mm_despatchMemo WHERE wheel_type='BOXN' and cast(despatch_date as date) <= getdate() ORDER BY cast(despatch_date as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(despatch_date as date)), -1) AS DATE) from mm_despatchMemo WHERE despatch_date IN (SELECT TOP 1 cast(despatch_date as date) FROM mm_despatchMemo WHERE wheel_type='BOXN' and cast(despatch_date as date) <= getdate() ORDER BY cast(despatch_date as date) DESC)) "
        Dim str6 = "select sum(quantity) as quantity from mm_despatchMemo where wheel_type='BGC' and despatch_date BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(despatch_date as date)), 0) AS DATE) from mm_despatchMemo WHERE despatch_date IN (SELECT TOP 1 cast(despatch_date as date) FROM mm_despatchMemo WHERE wheel_type='BGC' and cast(despatch_date as date) <= getdate() ORDER BY cast(despatch_date as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(despatch_date as date)), -1) AS DATE) from mm_despatchMemo WHERE despatch_date IN (SELECT TOP 1 cast(despatch_date as date) FROM mm_despatchMemo WHERE wheel_type='BGC' and cast(despatch_date as date) <= getdate() ORDER BY cast(despatch_date as date) DESC)) "
        Dim str7 = "select count(distinct heat_number) as heat_count from mm_pouring_old where wheel_type='BOXN WHL' and cast(pour_time as date) BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(pour_time as date)), 0) AS DATE) from mm_pouring_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old WHERE wheel_type='BOXN WHL' and cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(pour_time as date)), -1) AS DATE) from mm_pouring_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old WHERE wheel_type='BOXN WHL' and cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC)) "
        Dim str8 = "select count(distinct heat_number) as heat_count from mm_pouring_old where wheel_type='ICF WHL' and cast(pour_time as date) BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(pour_time as date)), 0) AS DATE) from mm_pouring_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old WHERE wheel_type='ICF WHL' and cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(pour_time as date)), -1) AS DATE) from mm_pouring_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old WHERE wheel_type='ICF WHL' and cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC)) "

        Dim str9 = "select count(distinct engraved_number) as actual_cast from mm_pouring_old where wheel_type='BOXN WHL' and cast(pour_time as date)  BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(pour_time as date)), 0) AS DATE) from mm_pouring_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old WHERE wheel_type='BOXN WHL' and cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(pour_time as date)), -1) AS DATE) from mm_pouring_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old WHERE wheel_type='BOXN WHL' and cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC)) "
        Dim str10 = "select count(distinct engraved_number) as actual_cast from mm_pouring_old where wheel_type='ICF WHL' and cast(pour_time as date)  BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(pour_time as date)), 0) AS DATE) from mm_pouring_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old WHERE wheel_type='ICF WHL' and cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(pour_time as date)), -1) AS DATE) from mm_pouring_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old WHERE wheel_type='ICF WHL' and cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC)) "

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            wfps_mon_boxn.Add(rdr.Item("wfps"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str2)
        While rdr.Read
            wfps_mon_bgc.Add(rdr.Item("wfps"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            stock_mon_boxn.Add(rdr.Item("stock"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            stock_mon_bgc.Add(rdr.Item("stock"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str5)
        While rdr.Read
            dispatch_mon_boxn.Add(rdr.Item("quantity"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str6)
        While rdr.Read
            dispatch_mon_bgc.Add(rdr.Item("quantity"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str7)
        While rdr.Read
            heats_mon_boxn.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str8)
        While rdr.Read
            heats_mon_bgc.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str9)
        While rdr.Read
            cast_mon_boxn.Add(rdr.Item("actual_cast"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str10)
        While rdr.Read
            cast_mon_bgc.Add(rdr.Item("actual_cast"))
        End While
        rdr.Close()
        con.Close()

    End Sub


    Public Sub prod_stock_dispatch()
        wfps_bgc = New ArrayList
        wfps_boxn = New ArrayList
        stock_bgc = New ArrayList
        stock_boxn = New ArrayList
        dispatch_bgc = New ArrayList
        dispatch_boxn = New ArrayList
        heats_bgc = New ArrayList
        heats_boxn = New ArrayList
        cast_bgc = New ArrayList
        cast_boxn = New ArrayList

        Dim rdr As SqlDataReader

        Dim str1 = "select  count(distinct a.Wheelnumber) as wfps from mm_wheelInspection a,mm_pouring_old b where a.Heatnumber=b.heat_number and b.wheel_type='BOXN WHL'
                    and a.wheelStatus='PASS' and cast(date as date) in
                    (select top 1 cast(date as date) from mm_wheelInspection a,mm_pouring_old b where  b.wheel_type='BOXN WHL' and a.wheelStatus='PASS' and cast(date as date)<=getdate() order by date desc)"
        Dim str2 = "select  count(distinct a.Wheelnumber) as wfps from mm_wheelInspection a,mm_pouring_old b where a.Heatnumber=b.heat_number and b.wheel_type='ICF WHL'
                    and a.wheelStatus='PASS' and cast(date as date) in
                    (select top 1 cast(date as date) from mm_wheelInspection a,mm_pouring_old b where  b.wheel_type='ICF WHL' and a.wheelStatus='PASS' and cast(date as date)<=getdate() order by date desc)"
        Dim str3 = "select count(distinct WheelNo) as stock from mm_magnaglow_new_shiftwiserecords_old where prodType='BOXN' and cast(testdate as date) in
                    (select top 1 cast(testdate as date) from mm_magnaglow_new_shiftwiserecords_old where prodType='BOXN' and cast(TestDate as date)<=getdate() order by cast(TestDate as date) desc)"
        Dim str4 = "select count(distinct WheelNo) as stock from mm_magnaglow_new_shiftwiserecords_old where prodType='BGC' and cast(testdate as date) in
                    (select top 1 cast(testdate as date) from mm_magnaglow_new_shiftwiserecords_old where prodType='BGC' and cast(TestDate as date)<=getdate() order by cast(TestDate as date) desc)"

        Dim str5 = "select cast(despatch_date as date),wheel_type,quantity from mm_despatchMemo where wheel_type='BOXN' and despatch_date in
                    (select TOP 1 despatch_date FROM mm_despatchMemo where wheel_type='BOXN' and despatch_date <= getdate() ORDER BY despatch_date DESC)"
        Dim str6 = "select cast(despatch_date as date),wheel_type,quantity from mm_despatchMemo where wheel_type='BGC' and despatch_date in
                    (select TOP 1 despatch_date FROM mm_despatchMemo where wheel_type='BGC' and despatch_date <= getdate() ORDER BY despatch_date DESC)"

        Dim str7 = "select count(distinct heat_number) as heat_count from mm_pouring_old where wheel_type='BOXN WHL' and cast(pour_time as date) in 
                    (select Top 1 cast(pour_time as date) from mm_pouring_old where wheel_type='BOXN WHL' and cast(pour_time as date)<=getdate() order by cast(pour_time as date) desc)"
        Dim str8 = "select count(distinct heat_number) as heat_count from mm_pouring_old where wheel_type='ICF WHL' and cast(pour_time as date) in 
                    (select Top 1 cast(pour_time as date) from mm_pouring_old where wheel_type='ICF WHL' and cast(pour_time as date)<=getdate() order by cast(pour_time as date) desc)"

        Dim str9 = "select count(distinct engraved_number) as actual_cast from mm_pouring_old where wheel_type='BOXN WHL' and cast(pour_time as date) in 
                    (select Top 1 cast(pour_time as date) from mm_pouring_old where wheel_type='BOXN WHL' and cast(pour_time as date)<=getdate() order by cast(pour_time as date) desc)"
        Dim str10 = "select count(distinct engraved_number) as actual_cast from mm_pouring_old where wheel_type='ICF WHL' and cast(pour_time as date) in 
                    (select Top 1 cast(pour_time as date) from mm_pouring_old where wheel_type='ICF WHL' and cast(pour_time as date)<=getdate() order by cast(pour_time as date) desc)"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            wfps_boxn.Add(rdr.Item("wfps"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str2)
        While rdr.Read
            wfps_bgc.Add(rdr.Item("wfps"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            stock_boxn.Add(rdr.Item("stock"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            stock_bgc.Add(rdr.Item("stock"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str5)
        While rdr.Read
            dispatch_boxn.Add(rdr.Item("quantity"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str6)
        While rdr.Read
            dispatch_bgc.Add(rdr.Item("quantity"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str7)
        While rdr.Read
            heats_boxn.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str8)
        While rdr.Read
            heats_bgc.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str9)
        While rdr.Read
            cast_boxn.Add(rdr.Item("actual_cast"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str10)
        While rdr.Read
            cast_bgc.Add(rdr.Item("actual_cast"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub melt_year_production()
        Dim rdr As SqlDataReader
        melt_para_year_bgc = New ArrayList
        melt_actual_year_bgc = New ArrayList
        melt_target_year_bgc = New ArrayList

        melt_para = New ArrayList
        melt_actual_year_boxn = New ArrayList
        melt_target_year_boxn = New ArrayList

        If mon >= 4 And mon <= 12 Then
            c1 = cyear
            c2 = cyear + 1
        End If
        If mon >= 1 And mon <= 3 Then
            c1 = cyear - 1
            c2 = cyear
        End If
        Dim str = "select parameter from wapdev.dbo.daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BOXN' and process='MELT' group by parameter"
        Dim str1 = "select sum(target) t from wapdev.dbo.daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BOXN' and process='MELT' group by parameter"
        Dim str11 = "SELECT dbo.GetFinancialYear (testdate) AS FIN_YR, ProdType AS PROD_TYPE , count(heatno) as HEAT_COUNT
                    FROM wapdev.dbo.mm_magnaglow_new_shiftwiserecords_old
                    WHERE ProdType='BOXN'
                    AND dbo.GetFinancialYear(testdate) IN (SELECT TOP 1 dbo.GetFinancialYear(testdate) FROM wapdev.dbo.mm_magnaglow_new_shiftwiserecords_old  WHERE dbo.GetFinancialYear(testdate) <= dbo.GetFinancialYear(getdate()) ORDER BY dbo.GetFinancialYear(testdate) DESC)
                    GROUP BY dbo.GetFinancialYear (testdate),ProdType"
        Dim str12 = "select count(a.heat_number) as HEAT_COUNT from wapdev.dbo.mm_heatsheet_header_old a,wapdev.dbo.mm_offheat_heatsheet_header_old b,wapdev.dbo.mm_magnaglow_new_shiftwiserecords_old c
                    where a.heat_number=b.heat_number
                    and b.heat_number=c.HeatNo and c.ProdType='BOXN'
                    and dbo.GetFinancialYear(a.melt_date) IN
                    (SELECT TOP 1 dbo.GetFinancialYear(melt_date) FROM wapdev.dbo.mm_heatsheet_header_old a,wapdev.dbo.mm_magnaglow_new_shiftwiserecords_old c  WHERE a.heat_number=c.HeatNo and c.ProdType='BGC' and dbo.GetFinancialYear(melt_date) <= dbo.GetFinancialYear(getdate()) ORDER BY dbo.GetFinancialYear(melt_date) DESC)
                    group by dbo.GetFinancialYear (a.melt_date),c.ProdType"
        Dim str13 = "SELECT dbo.GetFinancialYear (a.heat_tapped) AS FIN_YR,b.ProdType AS PROD_TYPE,count(a.heat_number) as HEAT_COUNT
                    FROM wapdev.dbo.mm_post_melt AS a, wapdev.dbo.mm_magnaglow_new_shiftwiserecords_old AS b 
                    WHERE 
                    b.HeatNo=a.heat_number AND 
                    b.ProdType='BOXN' AND 
                    a.sos='NOT DONE' AND
                    dbo.GetFinancialYear(a.heat_tapped) IN
                    (SELECT TOP 1 dbo.GetFinancialYear(a.heat_tapped) FROM wapdev.dbo.mm_post_melt  WHERE dbo.GetFinancialYear(a.heat_tapped) <= dbo.GetFinancialYear(getdate()) and sos='NOT DONE' ORDER BY dbo.GetFinancialYear(a.heat_tapped) DESC)
                    group by dbo.GetFinancialYear(heat_tapped),b.ProdType"
        Dim str14 = "SELECT dbo.GetFinancialYear (b.TestDate) AS FIN_YR,b.ProdType As PROD_TYPE,
                    count(distinct a.heat_number) as HEAT_COUNT
                    from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BOXN'
                    and c.heat_number=a.heat_number
                    and isnull((c.tap_end-datepart(minute,a.t12_power)),0) >150
                    and dbo.GetFinancialYear(b.TestDate) IN
                    (SELECT TOP 1 dbo.GetFinancialYear(TestDate) from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BOXN'
                    and c.heat_number=a.heat_number and dbo.GetFinancialYear(TestDate)<= dbo.GetFinancialYear(getdate()) ORDER BY dbo.GetFinancialYear(TestDate) DESC)
                    group by dbo.GetFinancialYear(TestDate),b.prodtype"

        Dim str3 = "select parameter from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BGC' and process='MELT' group by parameter"
        Dim str4 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BGC' and process='MELT' group by parameter"
        Dim str41 = "SELECT dbo.GetFinancialYear (testdate) AS FIN_YR, ProdType AS PROD_TYPE , count(heatno) as HEAT_COUNT
                    FROM mm_magnaglow_new_shiftwiserecords_old
                    WHERE ProdType='BGC'
                    AND dbo.GetFinancialYear(testdate) IN (SELECT TOP 1 dbo.GetFinancialYear(testdate) FROM mm_magnaglow_new_shiftwiserecords_old  WHERE dbo.GetFinancialYear(testdate) <= dbo.GetFinancialYear(getdate()) ORDER BY dbo.GetFinancialYear(testdate) DESC)
                    GROUP BY dbo.GetFinancialYear (testdate),ProdType"
        Dim str42 = "select isnull(count(b.heat_number),0) as HEAT_COUNT from mm_heatsheet_header_old a,mm_offheat_heatsheet_header_old b,mm_magnaglow_new_shiftwiserecords_old c
                    where a.heat_number=b.heat_number
                    and b.heat_number=c.HeatNo and c.ProdType='BGC'
                    and dbo.GetFinancialYear(a.melt_date) IN
                    (SELECT TOP 1 dbo.GetFinancialYear(melt_date) FROM mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c  WHERE a.heat_number=c.HeatNo and c.ProdType='BGC' and dbo.GetFinancialYear(melt_date) <= dbo.GetFinancialYear(getdate()) ORDER BY dbo.GetFinancialYear(melt_date) DESC)
                    group by dbo.GetFinancialYear (a.melt_date),c.ProdType"
        Dim str43 = "SELECT dbo.GetFinancialYear (a.heat_tapped) AS FIN_YR,b.ProdType AS PROD_TYPE,count(a.heat_number) as HEAT_COUNT
                    FROM mm_post_melt AS a, mm_magnaglow_new_shiftwiserecords_old AS b 
                    WHERE 
                    b.HeatNo=a.heat_number AND 
                    b.ProdType='BGC' AND 
                    a.sos='NOT DONE' AND
                    dbo.GetFinancialYear(a.heat_tapped) IN
                    (SELECT TOP 1 dbo.GetFinancialYear(a.heat_tapped) FROM mm_post_melt  WHERE dbo.GetFinancialYear(a.heat_tapped) <= dbo.GetFinancialYear(getdate()) and sos='NOT DONE' ORDER BY dbo.GetFinancialYear(a.heat_tapped) DESC)
                    group by dbo.GetFinancialYear(heat_tapped),b.ProdType"
        Dim str44 = "SELECT dbo.GetFinancialYear (b.TestDate) AS FIN_YR,b.ProdType As PROD_TYPE,
                    count(distinct a.heat_number) as HEAT_COUNT
                    from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BGC'
                    and c.heat_number=a.heat_number
                    and isnull((c.tap_end-datepart(minute,a.t12_power)),0) >150
                    and dbo.GetFinancialYear(b.TestDate) IN
                    (SELECT TOP 1 dbo.GetFinancialYear(TestDate) from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BGC'
                    and c.heat_number=a.heat_number and dbo.GetFinancialYear(TestDate)<= dbo.GetFinancialYear(getdate()) ORDER BY dbo.GetFinancialYear(TestDate) DESC)
                    group by dbo.GetFinancialYear(TestDate),b.prodtype"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            melt_para.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            melt_target_year_boxn.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        While rdr.Read
            melt_actual_year_boxn.Add(rdr.Item("HEAT_COUNT"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        If rdr.Read Then
            While rdr.Read
                melt_actual_year_boxn.Add(rdr.Item("HEAT_COUNT"))
            End While
            rdr.Close()
        Else
            melt_actual_year_boxn.Add(0)
        End If
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str13)
        While rdr.Read
            melt_actual_year_boxn.Add(rdr.Item("HEAT_COUNT"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str14)
        While rdr.Read
            melt_actual_year_boxn.Add(rdr.Item("HEAT_COUNT"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            melt_para_year_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            melt_target_year_bgc.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        While rdr.Read
            melt_actual_year_bgc.Add(rdr.Item("HEAT_COUNT"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        If rdr.Read Then
            While rdr.Read
                melt_actual_year_bgc.Add(rdr.Item("HEAT_COUNT"))
            End While
            rdr.Close()
        Else
            melt_actual_year_bgc.Add(0)
        End If
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str43)
        While rdr.Read
            melt_actual_year_bgc.Add(rdr.Item("HEAT_COUNT"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str44)
        While rdr.Read
            melt_actual_year_bgc.Add(rdr.Item("HEAT_COUNT"))
        End While
        rdr.Close()
        con.Close()
    End Sub



    Public Sub mould_year_production()
        Dim rdr As SqlDataReader
        mould_para_year_bgc = New ArrayList
        mould_actual_year_bgc = New ArrayList
        mould_target_year_bgc = New ArrayList

        mould_para_year_boxn = New ArrayList
        mould_actual_year_boxn = New ArrayList
        mould_target_year_boxn = New ArrayList

        If mon >= 4 And mon <= 12 Then
            c1 = cyear
            c2 = cyear + 1
        End If
        If mon >= 1 And mon <= 3 Then
            c1 = cyear - 1
            c2 = cyear
        End If
        Dim str = "select parameter from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BOXN' and process='MOULD' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BOXN' and process='MOULD' group by parameter"
        Dim str11 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR,wheel_type ,count(engraved_number) as actual_cast
                    from mm_pouring_old
                    where wheel_type='BOXN WHL' and dbo.GetFinancialYear (cast(pour_time as date)) in
                    (SELECT TOP 1 dbo.GetFinancialYear (pour_time) FROM mm_pouring_old  WHERE wheel_type='BOXN WHL' AND dbo.GetFinancialYear (pour_time) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (pour_time) DESC)
                    group by dbo.GetFinancialYear (pour_time),wheel_type"
        Dim str12 = "SELECT dbo.GetFinancialYear (CAST(a.date AS DATE)) AS FIN_YR,b.wheel_type AS PROD_TYPE , count(distinct a.wheel_no) as rework_wheel
                    FROM mm_hotwheelline_spgnew as a,mm_pouring_old as b
                    WHERE dbo.GetFinancialYear (a.date) IN 
                    (SELECT TOP 1 dbo.GetFinancialYear (a.date) FROM mm_hotwheelline_spgnew,mm_pouring_old  WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) AND dbo.GetFinancialYear (a.date) <= dbo.GetFinancialYear (getdate()) AND mm_pouring_old.wheel_type='BOXN WHL' and mm_hotwheelline_spgnew.process_type='rework' ORDER BY dbo.GetFinancialYear (a.date) DESC)
                    AND cast(b.heat_number as varchar)=cast(a.heatno as varchar)
                    AND b.wheel_type='BOXN WHL' and a.process_type='rework'
                    GROUP BY dbo.GetFinancialYear (CAST(a.date AS DATE)),b.wheel_type"
        Dim str13 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR,
                    mm_pouring_old.wheel_type,count(distinct(mm_post_pouring.heat_number)) as heat_count
                    from mm_post_pouring,mm_pouring_old
                    where mm_post_pouring.heat_number=mm_pouring_old.heat_number
                    and mm_pouring_old.wheel_type='BOXN WHL'
                    and mm_post_pouring.total_pour_time>50
                    and dbo.GetFinancialYear (end_time) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (end_time) FROM mm_post_pouring,mm_pouring_old  WHERE mm_post_pouring.heat_number=mm_pouring_old.heat_number and  mm_pouring_old.wheel_type='BOXN WHL' AND mm_post_pouring.total_pour_time>50 and dbo.GetFinancialYear (end_time) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (end_time) DESC)
                    group by dbo.GetFinancialYear (pour_time),mm_pouring_old.wheel_type"
        Dim str14 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR,
                    mm_pouring_old.wheel_type,count(mm_pouring_old.wheel_type) as MRXC_COUNT
                    from mm_heatsheet_header_old,mm_pouring_old
                    where mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number
                    and mm_pouring_old.rejection_code like 'XC%'
                    and mm_pouring_old.wheel_type='BOXN WHL'
                    and dbo.GetFinancialYear (cast(mm_pouring_old.pour_time as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(mm_pouring_old.pour_time as date)) FROM mm_pouring_old,mm_heatsheet_header_old  WHERE mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number and  mm_pouring_old.wheel_type='BOXN WHL' and mm_pouring_old.rejection_code like 'XC%' AND  dbo.GetFinancialYear (cast(mm_pouring_old.pour_time as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(mm_pouring_old.pour_time as date)) DESC)
                    group by dbo.GetFinancialYear (pour_time),mm_pouring_old.wheel_type"

        Dim str3 = "select parameter from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BGC' and process='MOULD' group by parameter"
        Dim str4 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BGC' and process='MOULD' group by parameter"
        Dim str41 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR,trim(wheel_type) ,count(engraved_number) as actual_cast
                    from mm_pouring_old
                    where wheel_type='ICF WHL' and dbo.GetFinancialYear (cast(pour_time as date)) in
                    (SELECT TOP 1 dbo.GetFinancialYear (pour_time) FROM mm_pouring_old  WHERE wheel_type='ICF WHL' AND dbo.GetFinancialYear (pour_time) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (pour_time) DESC)
                    group by dbo.GetFinancialYear (pour_time),wheel_type"

        Dim str42 = "SELECT dbo.GetFinancialYear (CAST(a.date AS DATE)) AS FIN_YR,b.wheel_type AS PROD_TYPE , count(distinct a.wheel_no) as rework_wheel
                    FROM mm_hotwheelline_spgnew as a,mm_pouring_old as b
                    WHERE dbo.GetFinancialYear (a.date) IN 
                    (SELECT TOP 1 dbo.GetFinancialYear (a.date) FROM mm_hotwheelline_spgnew,mm_pouring_old  WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) AND dbo.GetFinancialYear (a.date) <= dbo.GetFinancialYear (getdate()) AND mm_pouring_old.wheel_type='ICF WHL' and mm_hotwheelline_spgnew.process_type='rework' ORDER BY dbo.GetFinancialYear (a.date) DESC)
                    AND cast(b.heat_number as varchar)=cast(a.heatno as varchar)
                    AND b.wheel_type='ICF WHL' and a.process_type='rework'
                    GROUP BY dbo.GetFinancialYear (CAST(a.date AS DATE)),b.wheel_type"
        Dim str43 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR,
                    mm_pouring_old.wheel_type,count(distinct(mm_post_pouring.heat_number)) as heat_count
                    from mm_post_pouring,mm_pouring_old
                    where mm_post_pouring.heat_number=mm_pouring_old.heat_number
                    and mm_pouring_old.wheel_type='ICF WHL'
                    and mm_post_pouring.total_pour_time>50
                    and dbo.GetFinancialYear (end_time) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (end_time) FROM mm_post_pouring,mm_pouring_old  WHERE mm_post_pouring.heat_number=mm_pouring_old.heat_number and  mm_pouring_old.wheel_type='ICF WHL' AND mm_post_pouring.total_pour_time>50 and dbo.GetFinancialYear (end_time) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (end_time) DESC)
                    group by dbo.GetFinancialYear (pour_time),mm_pouring_old.wheel_type"
        Dim str44 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR,
                    mm_pouring_old.wheel_type,count(mm_pouring_old.wheel_type) as MRXC_COUNT
                    from mm_heatsheet_header_old,mm_pouring_old
                    where mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number
                    and mm_pouring_old.rejection_code like 'XC%'
                    and mm_pouring_old.wheel_type='ICF WHL'
                    and dbo.GetFinancialYear (cast(mm_pouring_old.pour_time as date)) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (cast(mm_pouring_old.pour_time as date)) FROM mm_pouring_old,mm_heatsheet_header_old  WHERE mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number and  mm_pouring_old.wheel_type='ICF WHL' and mm_pouring_old.rejection_code like 'XC%' AND  dbo.GetFinancialYear (cast(mm_pouring_old.pour_time as date)) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (cast(mm_pouring_old.pour_time as date)) DESC)
                    group by dbo.GetFinancialYear (pour_time),mm_pouring_old.wheel_type"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            mould_para_year_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            mould_target_year_boxn.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        While rdr.Read
            mould_actual_year_boxn.Add(rdr.Item("actual_cast"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        While rdr.Read
            mould_actual_year_boxn.Add(rdr.Item("rework_wheel"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str13)
        While rdr.Read
            mould_actual_year_boxn.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str14)
        While rdr.Read
            mould_actual_year_boxn.Add(rdr.Item("MRXC_COUNT"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            mould_para_year_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            mould_target_year_bgc.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        While rdr.Read
            mould_actual_year_bgc.Add(rdr.Item("actual_cast"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        While rdr.Read
            mould_actual_year_bgc.Add(rdr.Item("rework_wheel"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str43)
        While rdr.Read
            mould_actual_year_bgc.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str44)
        While rdr.Read
            mould_actual_year_bgc.Add(rdr.Item("MRXC_COUNT"))
        End While
        rdr.Close()
        con.Close()

    End Sub

    Public Sub mrs_year_production()
        Dim rdr As SqlDataReader
        mrs_para_year_bgc = New ArrayList
        mrs_actual_year_bgc = New ArrayList
        mrs_target_year_bgc = New ArrayList

        mrs_para_year_boxn = New ArrayList
        mrs_actual_year_boxn = New ArrayList
        mrs_target_year_boxn = New ArrayList

        If mon >= 4 And mon <= 12 Then
            c1 = cyear
            c2 = cyear + 1
        End If
        If mon >= 1 And mon <= 3 Then
            c1 = cyear - 1
            c2 = cyear
        End If
        Dim str = "select parameter from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BOXN' and process='MRS' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BOXN' and process='MRS' group by parameter"
        Dim str11 = "select dbo.GetFinancialYear (machining_date) AS FIN_YR,count(mould_number) as BOXN_COPE 
                    from mm_mould_machining_details where mould_number like '10%'
                    and dbo.GetFinancialYear (machining_date) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (machining_date) FROM mm_mould_machining_details where mould_number like '10%' and dbo.GetFinancialYear (machining_date) <= dbo.GetFinancialYear (getdate()) ORDER BY machining_date DESC)
                    group by dbo.GetFinancialYear (machining_date)"
        Dim str12 = "select dbo.GetFinancialYear (machining_date) AS FIN_YR,count(mould_number) as BOXN_DRAG
                    from mm_mould_machining_details where mould_number like '18%'
                    and dbo.GetFinancialYear (machining_date) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (machining_date) FROM mm_mould_machining_details where mould_number like '18%' and dbo.GetFinancialYear (machining_date) <= dbo.GetFinancialYear (getdate()) ORDER BY machining_date DESC)
                    group by dbo.GetFinancialYear (machining_date)"

        Dim str3 = "select parameter from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BGC' and process='MRS' group by parameter"
        Dim str4 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BGC' and process='MRS' group by parameter"
        Dim str41 = "select dbo.GetFinancialYear (machining_date) AS FIN_YR,count(mould_number) as BGC_COPE 
                    from mm_mould_machining_details where mould_number like '50%'
                    and dbo.GetFinancialYear (machining_date) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (machining_date) FROM mm_mould_machining_details where mould_number like '50%' and dbo.GetFinancialYear (machining_date) <= dbo.GetFinancialYear (getdate()) ORDER BY machining_date DESC)
                    group by dbo.GetFinancialYear (machining_date)"
        Dim str42 = "select dbo.GetFinancialYear (machining_date) AS FIN_YR,count(mould_number) as BGC_DRAG
                    from mm_mould_machining_details where mould_number like '58%'
                    and dbo.GetFinancialYear (machining_date) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (machining_date) FROM mm_mould_machining_details where mould_number like '58%' and dbo.GetFinancialYear (machining_date) <= dbo.GetFinancialYear (getdate()) ORDER BY machining_date DESC)
                    group by dbo.GetFinancialYear (machining_date)"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            mrs_para_year_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            mrs_target_year_boxn.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        While rdr.Read
            mrs_actual_year_boxn.Add(rdr.Item("BOXN_COPE"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        While rdr.Read
            mrs_actual_year_boxn.Add(rdr.Item("BOXN_DRAG"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            mrs_para_year_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            mrs_target_year_bgc.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        While rdr.Read
            mrs_actual_year_bgc.Add(rdr.Item("BGC_COPE"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        While rdr.Read
            mrs_actual_year_bgc.Add(rdr.Item("BGC_DRAG"))
        End While
        rdr.Close()
        con.Close()

    End Sub

    Public Sub heat_treatment_year_production()
        Dim rdr As SqlDataReader
        heat_treatment_para_year_bgc = New ArrayList
        heat_treatment_actual_year_bgc = New ArrayList
        heat_treatment_target_year_bgc = New ArrayList

        heat_treatment_para_year_boxn = New ArrayList
        heat_treatment_actual_year_boxn = New ArrayList
        heat_treatment_target_year_boxn = New ArrayList

        If mon >= 4 And mon <= 12 Then
            c1 = cyear
            c2 = cyear + 1
        End If
        If mon >= 1 And mon <= 3 Then
            c1 = cyear - 1
            c2 = cyear
        End If
        Dim str = "select parameter from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BOXN' and process='HEAT TREATMENT' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BOXN' and process='HEAT TREATMENT' group by parameter"
        Dim str11 = "select dbo.GetFinancialYear (date) AS FIN_YR,
                    mm_pouring_old.wheel_type,count(distinct wheel_no) as heat_treatment 
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='NOT OK' 
                    and mm_pouring_old.wheel_type='BOXN WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and dbo.GetFinancialYear (date) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (date) FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and  spg_status='NOT OK' and mm_pouring_old.wheel_type='BOXN WHL' and dbo.GetFinancialYear (date) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (date) DESC)
                    group by dbo.GetFinancialYear (date),mm_pouring_old.wheel_type"
        Dim str12 = "select dbo.GetFinancialYear (date) AS FIN_YR,
                    mm_pouring_old.wheel_type,count(distinct wheel_no) as heat_treatment 
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='OK' 
                    and mm_pouring_old.wheel_type='BOXN WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and dbo.GetFinancialYear (date) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (date) FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and  spg_status='OK' and mm_pouring_old.wheel_type='BOXN WHL' and dbo.GetFinancialYear (date) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (date) DESC)
                    group by dbo.GetFinancialYear (date),mm_pouring_old.wheel_type"


        Dim str3 = "select parameter from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BGC' and process='HEAT TREATMENT' group by parameter"
        Dim str4 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BGC' and process='HEAT TREATMENT' group by parameter"
        Dim str41 = "select dbo.GetFinancialYear (date) AS FIN_YR,
                    mm_pouring_old.wheel_type,count(distinct wheel_no) as heat_treatment 
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='NOT OK' 
                    and mm_pouring_old.wheel_type='ICF WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and dbo.GetFinancialYear (date) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (date) FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and  spg_status='NOT OK' and mm_pouring_old.wheel_type='ICF WHL' and dbo.GetFinancialYear (date) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (date) DESC)
                    group by dbo.GetFinancialYear (date),mm_pouring_old.wheel_type"
        Dim str42 = "select dbo.GetFinancialYear (date) AS FIN_YR,
                    mm_pouring_old.wheel_type,count(distinct wheel_no) as heat_treatment 
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='OK' 
                    and mm_pouring_old.wheel_type='ICF WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and dbo.GetFinancialYear (date) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (date) FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and  spg_status='OK' and mm_pouring_old.wheel_type='ICF WHL' and dbo.GetFinancialYear (date) <= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (date) DESC)
                    group by dbo.GetFinancialYear (date),mm_pouring_old.wheel_type"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            heat_treatment_para_year_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            heat_treatment_target_year_boxn.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        While rdr.Read
            heat_treatment_actual_year_boxn.Add(rdr.Item("heat_treatment"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        While rdr.Read
            heat_treatment_actual_year_boxn.Add(rdr.Item("heat_treatment"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            heat_treatment_para_year_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            heat_treatment_target_year_bgc.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        While rdr.Read
            heat_treatment_actual_year_bgc.Add(rdr.Item("heat_treatment"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        While rdr.Read
            heat_treatment_actual_year_bgc.Add(rdr.Item("heat_treatment"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub dark_room_year_production()
        Dim rdr As SqlDataReader
        dark_room_para_year_bgc = New ArrayList
        dark_room_actual_year_bgc = New ArrayList
        dark_room_target_year_bgc = New ArrayList

        dark_room_para_year_boxn = New ArrayList
        dark_room_actual_year_boxn = New ArrayList
        dark_room_target_year_boxn = New ArrayList

        If mon >= 4 And mon <= 12 Then
            c1 = cyear
            c2 = cyear + 1
        End If
        If mon >= 1 And mon <= 3 Then
            c1 = cyear - 1
            c2 = cyear
        End If
        Dim str = "select parameter from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BOXN' and process='DARK ROOM' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BOXN' and process='DARK ROOM' group by parameter"
        Dim str11 = "select dbo.GetFinancialYear (testdate) AS FIN_YR,
                    prodType AS PROD_TYPE, count(finalstatus) as actual_darkroom from mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BOXN'
                    and dbo.GetFinancialYear (testdate) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (testdate) FROM mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BOXN' and dbo.GetFinancialYear (testdate)<= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (testdate) DESC)
                    group by dbo.GetFinancialYear (testdate),prodType"

        Dim str3 = "select parameter from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BGC' and process='DARK ROOM' group by parameter"
        Dim str4 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2021-03-31' and wheel_type='BGC' and process='DARK ROOM' group by parameter"
        Dim str41 = "select dbo.GetFinancialYear (testdate) AS FIN_YR,
                    prodType AS PROD_TYPE, count(finalstatus) as actual_darkroom from mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BGC'
                    and dbo.GetFinancialYear (testdate) IN
                    (SELECT TOP 1 dbo.GetFinancialYear (testdate) FROM mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BGC' and dbo.GetFinancialYear (testdate)<= dbo.GetFinancialYear (getdate()) ORDER BY dbo.GetFinancialYear (testdate) DESC)
                    group by dbo.GetFinancialYear (testdate),prodType"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            dark_room_para_year_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            dark_room_target_year_boxn.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        While rdr.Read
            dark_room_actual_year_boxn.Add(rdr.Item("actual_darkroom"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            dark_room_para_year_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            dark_room_target_year_bgc.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        While rdr.Read
            dark_room_actual_year_bgc.Add(rdr.Item("actual_darkroom"))
        End While
        rdr.Close()
        con.Close()

    End Sub

    Public Sub melt_mon_production()
        Dim rdr As SqlDataReader
        melt_para_mon_boxn = New ArrayList
        melt_target_mon_boxn = New ArrayList
        melt_actual_mon_boxn = New ArrayList

        melt_para_mon_bgc = New ArrayList
        melt_target_mon_bgc = New ArrayList
        melt_actual_mon_bgc = New ArrayList
        bleapyear = Date.IsLeapYear(cyear + 1)
        If mon = 5 Or mon = 7 Or mon = 8 Or mon = 10 Or mon = 12 Then
            d = 31
            cyear = cyear
        End If
        If mon = 1 Or mon = 3 Then
            d = 31
            cyear = cyear + 1
        End If
        If mon = 4 Or mon = 6 Or mon = 9 Or mon = 10 Or mon = 11 Then
            d = 30
            cyear = cyear
        End If
        If bleapyear = True And mon = 2 Then
            d = 29
            cyear = cyear + 1
        Else
            d = 28
            cyear = cyear
        End If

        Dim str = "select parameter from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BOXN' and process='MELT' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BOXN' and process='MELT' group by parameter"
        Dim str11 = "SELECT dbo.GetFinancialYear (testdate) AS FIN_YR, CONCAT(FORMAT(testdate, 'MMM'),'-',FORMAT(testdate, 'yy')) AS MONTH_YEAR  , CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, testdate), 0) AS DATE) AS FIRST_DATE, CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, testdate), -1) AS DATE) AS LAST_DATE , CAST(testdate AS DATE) AS TEST_DATE, ProdType AS PROD_TYPE , count(heatno) as HEAT_COUNT
                    FROM mm_magnaglow_new_shiftwiserecords_old
                    WHERE ProdType='BOXN'
                    GROUP BY testdate,ProdType
                    HAVING testdate BETWEEN 
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, testdate), 0) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE testdate IN (SELECT TOP 1 testdate FROM mm_magnaglow_new_shiftwiserecords_old  WHERE testdate <= getdate() ORDER BY testdate DESC)) 
                    AND (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, testdate), -1) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE testdate IN (SELECT TOP 1 testdate FROM mm_magnaglow_new_shiftwiserecords_old  WHERE testdate <= getdate() ORDER BY testdate DESC))"
        Dim str12 = "select count(a.heat_number) as heat_count from mm_heatsheet_header_old a,mm_offheat_heatsheet_header_old b,mm_magnaglow_new_shiftwiserecords_old c
                    where a.heat_number=b.heat_number
                    and b.heat_number=c.HeatNo and c.ProdType='BOXN'
                    and a.melt_date between 
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, melt_date), 0) AS DATE) from mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c  WHERE a.heat_number=c.HeatNo and c.ProdType='BGC' and melt_date IN (SELECT TOP 1 melt_date FROM mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c   WHERE a.heat_number=c.HeatNo and c.ProdType='BGC' and melt_date<= getdate() ORDER BY melt_date DESC)) 
                    AND (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, melt_date), -1) AS DATE) from mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c  WHERE a.heat_number=c.HeatNo and c.ProdType='BGC' and melt_date IN (SELECT TOP 1 melt_date FROM mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c   WHERE a.heat_number=c.HeatNo and c.ProdType='BGC' and melt_date <= getdate() ORDER BY melt_date DESC))"

        Dim str13 = "SELECT dbo.GetFinancialYear (a.heat_tapped) AS FIN_YR, CONCAT(FORMAT(a.heat_tapped, 'MMM'),'-',FORMAT(a.heat_tapped, 'yy')) AS MONTH_YEAR, CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, a.heat_tapped), 0) AS DATE) AS FIRST_DATE, CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, a.heat_tapped), -1) AS DATE) AS LAST_DATE , CAST(a.heat_tapped AS DATE) AS HEAT_TAPPED, b.ProdType AS PROD_TYPE,a.heat_number,count(a.heat_number) as heat_count,a.SOS 
                    FROM mm_post_melt AS a, mm_magnaglow_new_shiftwiserecords_old AS b 
                    WHERE 
                    b.HeatNo=a.heat_number AND 
                    b.ProdType='BOXN' AND 
                    a.sos='NOT DONE' AND
                    heat_tapped BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, heat_tapped), 0) AS DATE) from mm_post_melt WHERE heat_tapped IN (SELECT TOP 1 heat_tapped FROM mm_post_melt  WHERE heat_tapped <= getdate() and sos='NOT DONE' ORDER BY heat_tapped DESC)) 
                    AND (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, heat_tapped), -1) AS DATE) from mm_post_melt WHERE heat_tapped IN (SELECT TOP 1 heat_tapped FROM mm_post_melt  WHERE heat_tapped <= getdate() and sos='NOT DONE' ORDER BY heat_tapped DESC))
                    group by a.heat_tapped,a.heat_number,a.SOS,b.ProdType"
        Dim str14 = "SELECT dbo.GetFinancialYear (b.TestDate) AS FIN_YR, CONCAT(FORMAT(b.TestDate, 'MMM'),'-',FORMAT(b.TestDate, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, b.TestDate), 0) AS DATE) AS FIRST_DATE,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, b.TestDate), -1) AS DATE) AS LAST_DATE ,b.TestDate AS HEAT_DATE,b.ProdType As PROD_TYPE,
                    count(distinct a.heat_number) as heat_count,isnull((c.tap_end-datepart(minute,a.t12_power)),0) as tapping
                    from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BOXN'
                    and c.heat_number=a.heat_number
                    and isnull((c.tap_end-datepart(minute,a.t12_power)),0) >150
                    and b.TestDate BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, TestDate), 0) AS DATE) from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BOXN'
                    and c.heat_number=a.heat_number and TestDate IN (SELECT TOP 1 TestDate from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BOXN'
                    and c.heat_number=a.heat_number and TestDate<= getdate() ORDER BY TestDate DESC)) 
                    AND 
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, TestDate), -1) AS DATE) from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BOXN'
                    and c.heat_number=a.heat_number and TestDate IN (SELECT TOP 1 TestDate from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BOXN'
                    and c.heat_number=a.heat_number and TestDate<= getdate() ORDER BY TestDate DESC)) 
                    group by isnull((c.tap_end-datepart(minute,a.t12_power)),0),b.TestDate,b.prodtype"

        Dim str3 = "select parameter from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BGC' and process='MELT' group by parameter"
        Dim str4 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BGC' and process='MELT' group by parameter"
        Dim str41 = "SELECT dbo.GetFinancialYear (testdate) AS FIN_YR, CONCAT(FORMAT(testdate, 'MMM'),'-',FORMAT(testdate, 'yy')) AS MONTH_YEAR  , CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, testdate), 0) AS DATE) AS FIRST_DATE, CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, testdate), -1) AS DATE) AS LAST_DATE , CAST(testdate AS DATE) AS TEST_DATE, ProdType AS PROD_TYPE , count(heatno) as HEAT_COUNT
                     FROM mm_magnaglow_new_shiftwiserecords_old
                    WHERE ProdType='BGC'
                    GROUP BY testdate,ProdType
                    HAVING testdate BETWEEN 
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, testdate), 0) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE testdate IN (SELECT TOP 1 testdate FROM mm_magnaglow_new_shiftwiserecords_old  WHERE testdate <= getdate() ORDER BY testdate DESC)) 
                    AND (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, testdate), -1) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE testdate IN (SELECT TOP 1 testdate FROM mm_magnaglow_new_shiftwiserecords_old  WHERE testdate <= getdate() ORDER BY testdate DESC))"
        Dim str42 = "select count(a.heat_number) as heat_count from mm_heatsheet_header_old a,mm_offheat_heatsheet_header_old b,mm_magnaglow_new_shiftwiserecords_old c
                    where a.heat_number=b.heat_number
                    and b.heat_number=c.HeatNo and c.ProdType='BGC'
                    and a.melt_date between 
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, melt_date), 0) AS DATE) from mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c  WHERE a.heat_number=c.HeatNo and c.ProdType='BGC' and melt_date IN (SELECT TOP 1 melt_date FROM mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c   WHERE a.heat_number=c.HeatNo and c.ProdType='BGC' and melt_date<= getdate() ORDER BY melt_date DESC)) 
                    AND (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, melt_date), -1) AS DATE) from mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c  WHERE a.heat_number=c.HeatNo and c.ProdType='BGC' and melt_date IN (SELECT TOP 1 melt_date FROM mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c   WHERE a.heat_number=c.HeatNo and c.ProdType='BGC' and melt_date <= getdate() ORDER BY melt_date DESC))"

        Dim str43 = "SELECT dbo.GetFinancialYear (a.heat_tapped) AS FIN_YR, CONCAT(FORMAT(a.heat_tapped, 'MMM'),'-',FORMAT(a.heat_tapped, 'yy')) AS MONTH_YEAR, CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, a.heat_tapped), 0) AS DATE) AS FIRST_DATE, CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, a.heat_tapped), -1) AS DATE) AS LAST_DATE , CAST(a.heat_tapped AS DATE) AS HEAT_TAPPED, b.ProdType AS PROD_TYPE,a.heat_number,count(a.heat_number) as heat_count,a.SOS 
                    FROM mm_post_melt AS a, mm_magnaglow_new_shiftwiserecords_old AS b 
                    WHERE 
                    b.HeatNo=a.heat_number AND 
                    b.ProdType='BGC' AND 
                    a.sos='NOT DONE' AND
                    heat_tapped BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, heat_tapped), 0) AS DATE) from mm_post_melt WHERE heat_tapped IN (SELECT TOP 1 heat_tapped FROM mm_post_melt  WHERE heat_tapped <= getdate() and sos='NOT DONE' ORDER BY heat_tapped DESC)) 
                    AND (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, heat_tapped), -1) AS DATE) from mm_post_melt WHERE heat_tapped IN (SELECT TOP 1 heat_tapped FROM mm_post_melt  WHERE heat_tapped <= getdate() and sos='NOT DONE' ORDER BY heat_tapped DESC))
                    group by a.heat_tapped,a.heat_number,a.SOS,b.ProdType"

        Dim str44 = "SELECT dbo.GetFinancialYear (b.TestDate) AS FIN_YR, CONCAT(FORMAT(b.TestDate, 'MMM'),'-',FORMAT(b.TestDate, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, b.TestDate), 0) AS DATE) AS FIRST_DATE,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, b.TestDate), -1) AS DATE) AS LAST_DATE ,b.TestDate AS HEAT_DATE,b.ProdType As PROD_TYPE,
                    count(distinct a.heat_number) as heat_count,isnull((c.tap_end-datepart(minute,a.t12_power)),0) as tapping
                    from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BGC'
                    and c.heat_number=a.heat_number
                    and isnull((c.tap_end-datepart(minute,a.t12_power)),0) >150
                    and b.TestDate BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, TestDate), 0) AS DATE) from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BGC'
                    and c.heat_number=a.heat_number and TestDate IN (SELECT TOP 1 TestDate from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BGC'
                    and c.heat_number=a.heat_number and TestDate<= getdate() ORDER BY TestDate DESC)) 
                    AND 
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, TestDate), -1) AS DATE) from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BGC'
                    and c.heat_number=a.heat_number and TestDate IN (SELECT TOP 1 TestDate from mm_heat_sheet_melting a,mm_magnaglow_new_shiftwiserecords_old b,mm_post_melt c
                    where b.heatno=a.heat_number
                    and b.ProdType='BGC'
                    and c.heat_number=a.heat_number and TestDate<= getdate() ORDER BY TestDate DESC)) 
                    group by isnull((c.tap_end-datepart(minute,a.t12_power)),0),b.TestDate,b.prodtype"

        Dim s11 As Integer
        Dim s41 As Integer
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            melt_para_mon_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            melt_target_mon_boxn.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("HEAT_COUNT")
        End While
        melt_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("heat_count")
        End While
        melt_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str13)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("heat_count")
        End While
        melt_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str14)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("heat_count")
        End While
        melt_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            melt_para_mon_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            melt_target_mon_bgc.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("HEAT_COUNT")
        End While
        melt_actual_mon_bgc.Add(s41)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("heat_count")
        End While
        melt_actual_mon_bgc.Add(s41)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str43)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("heat_count")
        End While
        melt_actual_mon_bgc.Add(s41)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str44)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("heat_count")
        End While
        melt_actual_mon_bgc.Add(s41)
        rdr.Close()
        con.Close()

    End Sub

    Public Sub mould_mon_production()
        Dim rdr As SqlDataReader
        mould_para_mon_boxn = New ArrayList
        mould_target_mon_boxn = New ArrayList
        mould_actual_mon_boxn = New ArrayList

        mould_para_mon_bgc = New ArrayList
        mould_target_mon_bgc = New ArrayList
        mould_actual_mon_bgc = New ArrayList
        bleapyear = Date.IsLeapYear(cyear + 1)
        If mon = 5 Or mon = 7 Or mon = 8 Or mon = 10 Or mon = 12 Then
            d = 31
            cyear = cyear
        End If
        If mon = 1 Or mon = 3 Then
            d = 31
            cyear = cyear + 1
        End If
        If mon = 4 Or mon = 6 Or mon = 9 Or mon = 10 Or mon = 11 Then
            d = 30
            cyear = cyear
        End If
        If bleapyear = True And mon = 2 Then
            d = 29
            cyear = cyear + 1
        Else
            d = 28
            cyear = cyear
        End If

        Dim str = "select parameter from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BOXN' and process='MOULD' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BOXN' and process='MOULD' group by parameter"
        Dim str14 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR, CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')) AS MONTH_YEAR, 
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE) AS LAST_DATE,
                    cast(pour_time as date) as TEST_DATE,mm_pouring_old.wheel_type,count(mm_pouring_old.wheel_type) as MRXC_COUNT
                     from mm_heatsheet_header_old,mm_pouring_old
                    where mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number
                    and mm_pouring_old.rejection_code like 'XC%'
                    and mm_pouring_old.wheel_type='BOXN WHL'
                    and cast(mm_pouring_old.pour_time as date) BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(pour_time as date)), 0) AS DATE) from mm_pouring_old,mm_heatsheet_header_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old,mm_heatsheet_header_old  WHERE mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number and  mm_pouring_old.wheel_type='BOXN WHL' and mm_pouring_old.rejection_code like 'XC%' AND  cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(pour_time as date)), -1) AS DATE) from mm_pouring_old,mm_heatsheet_header_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old,mm_heatsheet_header_old WHERE mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number and mm_pouring_old.wheel_type='BOXN WHL' and mm_pouring_old.rejection_code like 'XC%' AND cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC))
                    group by  dbo.GetFinancialYear (pour_time),CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')), CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE),
                    cast(pour_time as date),mm_pouring_old.wheel_type"
        Dim str11 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR, CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')) AS MONTH_YEAR, 
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE) AS LAST_DATE,
                    cast(pour_time as date) as TEST_DATE , wheel_type ,count(engraved_number) as actual_cast
                    from mm_pouring_old
                    where wheel_type='BOXN WHL' and cast(pour_time as date) between
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE) from mm_pouring_old WHERE pour_time IN (SELECT TOP 1 pour_time FROM mm_pouring_old  WHERE wheel_type='BOXN WHL' AND pour_time <= getdate() ORDER BY pour_time DESC)) 
                    AND 
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE) from mm_pouring_old WHERE pour_time IN (SELECT TOP 1 pour_time FROM mm_pouring_old  WHERE wheel_type='BOXN WHL' AND pour_time <= getdate() ORDER BY pour_time DESC))
                    group by dbo.GetFinancialYear (pour_time),CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')), CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE),
                    cast(pour_time as date),wheel_type"
        Dim str13 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR, CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')) AS MONTH_YEAR, 
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE) AS LAST_DATE,
                    cast(mm_post_pouring.end_time as date) as TEST_DATE,mm_pouring_old.wheel_type,count(distinct(mm_post_pouring.heat_number)) as heat_count ,mm_post_pouring.total_pour_time
                    from mm_post_pouring,mm_pouring_old
                    where mm_post_pouring.heat_number=mm_pouring_old.heat_number
                    and mm_pouring_old.wheel_type='BOXN WHL'
                    and mm_post_pouring.total_pour_time>50
                    and end_time BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, end_time), 0) AS DATE) from mm_post_pouring,mm_pouring_old WHERE end_time IN (SELECT TOP 1 end_time FROM mm_post_pouring,mm_pouring_old  WHERE mm_post_pouring.heat_number=mm_pouring_old.heat_number and  mm_pouring_old.wheel_type='BOXN WHL' AND mm_post_pouring.total_pour_time>50 and end_time <= getdate() ORDER BY end_time DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, end_time), -1) AS DATE) from mm_post_pouring,mm_pouring_old WHERE end_time IN (SELECT TOP 1 end_time FROM mm_post_pouring,mm_pouring_old WHERE mm_post_pouring.heat_number=mm_pouring_old.heat_number and mm_pouring_old.wheel_type='BOXN WHL' AND mm_post_pouring.total_pour_time>50 and end_time <= getdate() ORDER BY end_time DESC))
                    group by dbo.GetFinancialYear (pour_time),CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')), CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE),
                    cast(mm_post_pouring.end_time as date),mm_pouring_old.wheel_type,mm_post_pouring.total_pour_time"
        Dim str12 = "SELECT dbo.GetFinancialYear (CAST(a.date AS DATE)) AS FIN_YR, CONCAT(FORMAT(CAST(a.date AS DATE), 'MMM'),'-',FORMAT(CAST(a.date AS DATE), 'yy')) AS MONTH_YEAR  , CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, CAST(a.date AS DATE)), 0) AS DATE) AS FIRST_DATE, CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, CAST(a.date AS DATE)), -1) AS DATE) AS LAST_DATE ,CAST(a.date AS DATE) AS TEST_DATE, b.wheel_type AS PROD_TYPE , count(distinct a.wheel_no) as rework_wheel
                    FROM mm_hotwheelline_spgnew as a,mm_pouring_old as b
                    WHERE a.date BETWEEN (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, CAST(date AS DATE)), 0) AS DATE) from mm_hotwheelline_spgnew WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew,mm_pouring_old  WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) AND date <= getdate() AND mm_pouring_old.wheel_type='ICF WHL' and mm_hotwheelline_spgnew.process_type='rework' ORDER BY pour_time DESC)) AND (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, CAST(date AS DATE)), -1) AS DATE) from mm_hotwheelline_spgnew WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew,mm_pouring_old  WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) AND date <= getdate() AND mm_pouring_old.wheel_type='BOXN WHL' and mm_hotwheelline_spgnew.process_type='rework' ORDER BY pour_time DESC))
                    AND cast(b.heat_number as varchar)=cast(a.heatno as varchar)
                    AND b.wheel_type='BOXN WHL' and a.process_type='rework'
                    GROUP BY a.date,b.wheel_type"

        Dim str3 = "select parameter from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BGC' and process='MOULD' group by parameter"
        Dim str4 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BGC' and process='MOULD' group by parameter"
        Dim str44 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR, CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')) AS MONTH_YEAR, 
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE) AS LAST_DATE,
                    cast(pour_time as date) as TEST_DATE,mm_pouring_old.wheel_type,count(mm_pouring_old.wheel_type) as MRXC_COUNT
                     from mm_heatsheet_header_old,mm_pouring_old
                    where mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number
                    and mm_pouring_old.rejection_code like 'XC%'
                    and mm_pouring_old.wheel_type='ICF WHL'
                    and cast(mm_pouring_old.pour_time as date) BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, cast(pour_time as date)), 0) AS DATE) from mm_pouring_old,mm_heatsheet_header_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old,mm_heatsheet_header_old  WHERE mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number and  mm_pouring_old.wheel_type='ICF WHL' and mm_pouring_old.rejection_code like 'XC%' AND  cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, cast(pour_time as date)), -1) AS DATE) from mm_pouring_old,mm_heatsheet_header_old WHERE cast(pour_time as date) IN (SELECT TOP 1 cast(pour_time as date) FROM mm_pouring_old,mm_heatsheet_header_old WHERE mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number and mm_pouring_old.wheel_type='ICF WHL' and mm_pouring_old.rejection_code like 'XC%' AND cast(pour_time as date) <= getdate() ORDER BY cast(pour_time as date) DESC))
                    group by  dbo.GetFinancialYear (pour_time),CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')), CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE),
                    cast(pour_time as date),mm_pouring_old.wheel_type"
        Dim str41 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR, CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')) AS MONTH_YEAR, 
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE) AS LAST_DATE,
                    cast(pour_time as date) as TEST_DATE , wheel_type ,count(engraved_number) as actual_cast
                    from mm_pouring_old
                    where wheel_type='ICF WHL' and cast(pour_time as date) between
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE) from mm_pouring_old WHERE pour_time IN (SELECT TOP 1 pour_time FROM mm_pouring_old  WHERE wheel_type='ICF WHL' AND pour_time <= getdate() ORDER BY pour_time DESC)) 
                    AND 
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE) from mm_pouring_old WHERE pour_time IN (SELECT TOP 1 pour_time FROM mm_pouring_old  WHERE wheel_type='ICF WHL' AND pour_time <= getdate() ORDER BY pour_time DESC))
                    group by dbo.GetFinancialYear (pour_time),CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')), CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE),
                    cast(pour_time as date),wheel_type"
        Dim str43 = "select dbo.GetFinancialYear (pour_time) AS FIN_YR, CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')) AS MONTH_YEAR, 
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE) AS LAST_DATE,
                    cast(mm_post_pouring.end_time as date) as TEST_DATE,mm_pouring_old.wheel_type,count(distinct(mm_post_pouring.heat_number)) as heat_count ,mm_post_pouring.total_pour_time
                    from mm_post_pouring,mm_pouring_old
                    where mm_post_pouring.heat_number=mm_pouring_old.heat_number
                    and mm_pouring_old.wheel_type='ICF WHL'
                    and mm_post_pouring.total_pour_time>50
                    and end_time BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, end_time), 0) AS DATE) from mm_post_pouring,mm_pouring_old WHERE end_time IN (SELECT TOP 1 end_time FROM mm_post_pouring,mm_pouring_old  WHERE mm_post_pouring.heat_number=mm_pouring_old.heat_number and  mm_pouring_old.wheel_type='ICF WHL' AND mm_post_pouring.total_pour_time>50 and end_time <= getdate() ORDER BY end_time DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, end_time), -1) AS DATE) from mm_post_pouring,mm_pouring_old WHERE end_time IN (SELECT TOP 1 end_time FROM mm_post_pouring,mm_pouring_old WHERE mm_post_pouring.heat_number=mm_pouring_old.heat_number and mm_pouring_old.wheel_type='ICF WHL' AND mm_post_pouring.total_pour_time>50 and end_time <= getdate() ORDER BY end_time DESC))
                    group by dbo.GetFinancialYear (pour_time),CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')), CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, pour_time), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, pour_time), -1) AS DATE),
                    cast(mm_post_pouring.end_time as date),mm_pouring_old.wheel_type,mm_post_pouring.total_pour_time"
        Dim str42 = "SELECT dbo.GetFinancialYear (CAST(a.date AS DATE)) AS FIN_YR, CONCAT(FORMAT(CAST(a.date AS DATE), 'MMM'),'-',FORMAT(CAST(a.date AS DATE), 'yy')) AS MONTH_YEAR  , CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, CAST(a.date AS DATE)), 0) AS DATE) AS FIRST_DATE, CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, CAST(a.date AS DATE)), -1) AS DATE) AS LAST_DATE ,CAST(a.date AS DATE) AS TEST_DATE, b.wheel_type AS PROD_TYPE , count(distinct a.wheel_no) as rework_wheel
                    FROM mm_hotwheelline_spgnew as a,mm_pouring_old as b
                    WHERE a.date BETWEEN (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, CAST(date AS DATE)), 0) AS DATE) from mm_hotwheelline_spgnew WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew,mm_pouring_old  WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) AND date <= getdate() AND mm_pouring_old.wheel_type='ICF WHL' and mm_hotwheelline_spgnew.process_type='rework' ORDER BY pour_time DESC)) AND (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, CAST(date AS DATE)), -1) AS DATE) from mm_hotwheelline_spgnew WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew,mm_pouring_old  WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) AND date <= getdate() AND mm_pouring_old.wheel_type='ICF WHL' and mm_hotwheelline_spgnew.process_type='rework' ORDER BY pour_time DESC))
                    AND cast(b.heat_number as varchar)=cast(a.heatno as varchar)
                    AND b.wheel_type='ICF WHL' and a.process_type='rework'
                    GROUP BY a.date,b.wheel_type"
        Dim s11 As Integer
        Dim s41 As Integer
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            mould_para_mon_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            mould_target_mon_boxn.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("actual_cast")
        End While
        mould_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("rework_wheel")
        End While
        mould_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str13)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("heat_count")
        End While
        mould_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str14)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("MRXC_COUNT")
        End While
        mould_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            mould_para_mon_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            mould_target_mon_bgc.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("actual_cast")
        End While
        mould_actual_mon_bgc.Add(s41)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("rework_wheel")
        End While
        mould_actual_mon_bgc.Add(s41)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str43)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("heat_count")
        End While
        mould_actual_mon_bgc.Add(s41)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str44)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("MRXC_COUNT")
        End While
        mould_actual_mon_bgc.Add(s41)
        rdr.Close()
        con.Close()

    End Sub

    Public Sub mrs_mon_production()
        Dim rdr As SqlDataReader
        mrs_para_mon_boxn = New ArrayList
        mrs_target_mon_boxn = New ArrayList
        mrs_actual_mon_boxn = New ArrayList

        mrs_para_mon_bgc = New ArrayList
        mrs_target_mon_bgc = New ArrayList
        mrs_actual_mon_bgc = New ArrayList
        bleapyear = Date.IsLeapYear(cyear + 1)
        If mon = 5 Or mon = 7 Or mon = 8 Or mon = 10 Or mon = 12 Then
            d = 31
            cyear = cyear
        End If
        If mon = 1 Or mon = 3 Then
            d = 31
            cyear = cyear + 1
        End If
        If mon = 4 Or mon = 6 Or mon = 9 Or mon = 10 Or mon = 11 Then
            d = 30
            cyear = cyear
        End If
        If bleapyear = True And mon = 2 Then
            d = 29
            cyear = cyear + 1
        Else
            d = 28
            cyear = cyear
        End If
        Dim str = "select parameter from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BOXN' and process='MRS' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BOXN' and process='HEAT TREATMENT' group by parameter"
        Dim str11 = "select dbo.GetFinancialYear (machining_date) AS FIN_YR, CONCAT(FORMAT(machining_date, 'MMM'),'-',FORMAT(machining_date, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE) AS LAST_DATE,
                    machining_date AS TEST_DATE,count(mould_number) as BOXN_COPE from mm_mould_machining_details where mould_number like '10%'
                    and machining_date BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE) from mm_mould_machining_details WHERE machining_date IN (SELECT TOP 1 machining_date FROM mm_mould_machining_details where mould_number like '10%' and machining_date <= getdate() ORDER BY machining_date DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE) from mm_mould_machining_details WHERE machining_date IN (SELECT TOP 1 machining_date FROM mm_mould_machining_details where mould_number like '10%'and machining_date <= getdate() ORDER BY machining_date DESC))
                    group by dbo.GetFinancialYear (machining_date), CONCAT(FORMAT(machining_date, 'MMM'),'-',FORMAT(machining_date, 'yy')),CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE),
                    machining_date"
        Dim str12 = "select dbo.GetFinancialYear (machining_date) AS FIN_YR, CONCAT(FORMAT(machining_date, 'MMM'),'-',FORMAT(machining_date, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE) AS LAST_DATE,
                    machining_date AS TEST_DATE,count(mould_number) as BOXN_DRAG from mm_mould_machining_details where mould_number like '18%'
                    and machining_date BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE) from mm_mould_machining_details WHERE machining_date IN (SELECT TOP 1 machining_date FROM mm_mould_machining_details where mould_number like '18%' and machining_date <= getdate() ORDER BY machining_date DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE) from mm_mould_machining_details WHERE machining_date IN (SELECT TOP 1 machining_date FROM mm_mould_machining_details where mould_number like '18%'and machining_date <= getdate() ORDER BY machining_date DESC))
                    group by dbo.GetFinancialYear (machining_date), CONCAT(FORMAT(machining_date, 'MMM'),'-',FORMAT(machining_date, 'yy')),CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE),
                    machining_date"

        Dim str3 = "select parameter from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BGC' and process='MRS' group by parameter"
        Dim str4 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BGC' and process='HEAT TREATMENT' group by parameter"
        Dim str41 = "select dbo.GetFinancialYear (machining_date) AS FIN_YR, CONCAT(FORMAT(machining_date, 'MMM'),'-',FORMAT(machining_date, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE) AS LAST_DATE,
                    machining_date AS TEST_DATE,count(mould_number) as BGC_COPE from mm_mould_machining_details where mould_number like '50%'
                    and machining_date BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE) from mm_mould_machining_details WHERE machining_date IN (SELECT TOP 1 machining_date FROM mm_mould_machining_details where mould_number like '50%' and machining_date <= getdate() ORDER BY machining_date DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE) from mm_mould_machining_details WHERE machining_date IN (SELECT TOP 1 machining_date FROM mm_mould_machining_details where mould_number like '50%'and machining_date <= getdate() ORDER BY machining_date DESC))
                    group by dbo.GetFinancialYear (machining_date), CONCAT(FORMAT(machining_date, 'MMM'),'-',FORMAT(machining_date, 'yy')),CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE),
                    machining_date"
        Dim str42 = "select dbo.GetFinancialYear (machining_date) AS FIN_YR, CONCAT(FORMAT(machining_date, 'MMM'),'-',FORMAT(machining_date, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE) AS LAST_DATE,
                    machining_date AS TEST_DATE,count(mould_number) as BGC_DRAG from mm_mould_machining_details where mould_number like '58%'
                    and machining_date BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE) from mm_mould_machining_details WHERE machining_date IN (SELECT TOP 1 machining_date FROM mm_mould_machining_details where mould_number like '58%' and machining_date <= getdate() ORDER BY machining_date DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE) from mm_mould_machining_details WHERE machining_date IN (SELECT TOP 1 machining_date FROM mm_mould_machining_details where mould_number like '58%'and machining_date <= getdate() ORDER BY machining_date DESC))
                    group by dbo.GetFinancialYear (machining_date), CONCAT(FORMAT(machining_date, 'MMM'),'-',FORMAT(machining_date, 'yy')),CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, machining_date), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, machining_date), -1) AS DATE),
                    machining_date"
        Dim s11 As Integer
        Dim s41 As Integer
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            mrs_para_mon_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            mrs_target_mon_boxn.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("BOXN_COPE")
        End While
        mrs_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("BOXN_DRAG")
        End While
        mrs_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            mrs_para_mon_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            mrs_target_mon_bgc.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("BGC_COPE")
        End While
        mrs_actual_mon_bgc.Add(s41)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("BGC_DRAG")
        End While
        mrs_actual_mon_bgc.Add(s41)
        rdr.Close()
        con.Close()

    End Sub

    Public Sub heat_treatment_mon_production()
        Dim rdr As SqlDataReader
        heat_treatment_para_mon_boxn = New ArrayList
        heat_treatment_target_mon_boxn = New ArrayList
        heat_treatment_actual_mon_boxn = New ArrayList

        heat_treatment_para_mon_bgc = New ArrayList
        heat_treatment_target_mon_bgc = New ArrayList
        heat_treatment_actual_mon_bgc = New ArrayList
        bleapyear = Date.IsLeapYear(cyear + 1)
        If mon = 5 Or mon = 7 Or mon = 8 Or mon = 10 Or mon = 12 Then
            d = 31
            cyear = cyear
        End If
        If mon = 1 Or mon = 3 Then
            d = 31
            cyear = cyear + 1
        End If
        If mon = 4 Or mon = 6 Or mon = 9 Or mon = 10 Or mon = 11 Then
            d = 30
            cyear = cyear
        End If
        If bleapyear = True And mon = 2 Then
            d = 29
            cyear = cyear + 1
        Else
            d = 28
            cyear = cyear
        End If

        Dim str = "select parameter from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BOXN' and process='HEAT TREATMENT' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BOXN' and process='HEAT TREATMENT' group by parameter"
        Dim str11 = "select dbo.GetFinancialYear (date) AS FIN_YR, CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE) AS LAST_DATE,
                    date as TEST_DATE,mm_pouring_old.wheel_type,count(distinct wheel_no) as heat_treatment 
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='NOT OK' 
                    and mm_pouring_old.wheel_type='BOXN WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and date BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE) from mm_hotwheelline_spgnew ,mm_pouring_old WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and  spg_status='NOT OK' and mm_pouring_old.wheel_type='BOXN WHL' and date <= getdate() ORDER BY date DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE) from mm_hotwheelline_spgnew ,mm_pouring_old WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and spg_status='NOT OK' and mm_pouring_old.wheel_type='BOXN WHL' and date <= getdate() ORDER BY date DESC))
                    group by dbo.GetFinancialYear (date), CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')),CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE),
                    mm_pouring_old.wheel_type,date "
        Dim str12 = "select dbo.GetFinancialYear (date) AS FIN_YR, CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE) AS LAST_DATE,
                    date as TEST_DATE,mm_pouring_old.wheel_type,count(distinct wheel_no) as heat_treatment 
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='OK' 
                    and mm_pouring_old.wheel_type='BOXN WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and date BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE) from mm_hotwheelline_spgnew ,mm_pouring_old WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and  spg_status='OK' and mm_pouring_old.wheel_type='BOXN WHL' and date <= getdate() ORDER BY date DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE) from mm_hotwheelline_spgnew ,mm_pouring_old WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and spg_status='OK' and mm_pouring_old.wheel_type='BOXN WHL' and date <= getdate() ORDER BY date DESC))
                    group by dbo.GetFinancialYear (date), CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')),CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE),
                    mm_pouring_old.wheel_type,date "

        Dim str3 = "select parameter from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BGC' and process='HEAT TREATMENT' group by parameter"
        Dim str4 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BGC' and process='HEAT TREATMENT' group by parameter"
        Dim str41 = "select dbo.GetFinancialYear (date) AS FIN_YR, CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE) AS LAST_DATE,
                    date as TEST_DATE,mm_pouring_old.wheel_type,count(distinct wheel_no) as heat_treatment 
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='NOT OK' 
                    and mm_pouring_old.wheel_type='ICF WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and date BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE) from mm_hotwheelline_spgnew ,mm_pouring_old WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and  spg_status='NOT OK' and mm_pouring_old.wheel_type='ICF WHL' and date <= getdate() ORDER BY date DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE) from mm_hotwheelline_spgnew ,mm_pouring_old WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and spg_status='NOT OK' and mm_pouring_old.wheel_type='ICF WHL' and date <= getdate() ORDER BY date DESC))
                    group by dbo.GetFinancialYear (date), CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')),CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE),
                    mm_pouring_old.wheel_type,date "
        Dim str42 = "select dbo.GetFinancialYear (date) AS FIN_YR, CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE) AS LAST_DATE,
                    date as TEST_DATE,mm_pouring_old.wheel_type,count(distinct wheel_no) as heat_treatment 
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='OK' 
                    and mm_pouring_old.wheel_type='ICF WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and date BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE) from mm_hotwheelline_spgnew ,mm_pouring_old WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and  spg_status='OK' and mm_pouring_old.wheel_type='ICF WHL' and date <= getdate() ORDER BY date DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE) from mm_hotwheelline_spgnew ,mm_pouring_old WHERE date IN (SELECT TOP 1 date FROM mm_hotwheelline_spgnew ,mm_pouring_old WHERE cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar) and spg_status='OK' and mm_pouring_old.wheel_type='ICF WHL' and date <= getdate() ORDER BY date DESC))
                    group by dbo.GetFinancialYear (date), CONCAT(FORMAT(pour_time, 'MMM'),'-',FORMAT(pour_time, 'yy')),CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, date), -1) AS DATE),
                    mm_pouring_old.wheel_type,date "

        Dim s11 As Integer
        Dim s41 As Integer
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            heat_treatment_para_mon_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            heat_treatment_target_mon_boxn.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("heat_treatment")
        End While
        heat_treatment_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("heat_treatment")
        End While
        heat_treatment_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            heat_treatment_para_mon_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            heat_treatment_target_mon_bgc.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("heat_treatment")
        End While
        heat_treatment_actual_mon_bgc.Add(s41)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("heat_treatment")
        End While
        heat_treatment_actual_mon_bgc.Add(s41)
        rdr.Close()
        con.Close()

    End Sub

    Public Sub dark_room_mon_production()
        Dim rdr As SqlDataReader
        dark_room_para_mon_boxn = New ArrayList
        dark_room_target_mon_boxn = New ArrayList
        dark_room_actual_mon_boxn = New ArrayList

        dark_room_para_mon_bgc = New ArrayList
        dark_room_target_mon_bgc = New ArrayList
        dark_room_actual_mon_bgc = New ArrayList
        bleapyear = Date.IsLeapYear(cyear + 1)
        If mon = 5 Or mon = 7 Or mon = 8 Or mon = 10 Or mon = 12 Then
            d = 31
            cyear = cyear
        End If
        If mon = 1 Or mon = 3 Then
            d = 31
            cyear = cyear + 1
        End If
        If mon = 4 Or mon = 6 Or mon = 9 Or mon = 10 Or mon = 11 Then
            d = 30
            cyear = cyear
        End If
        If bleapyear = True And mon = 2 Then
            d = 29
            cyear = cyear + 1
        Else
            d = 28
            cyear = cyear
        End If


        Dim str = "select parameter from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BOXN' and process='DARK ROOM' group by parameter"
        Dim str1 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BOXN' and process='DARK ROOM' group by parameter"
        Dim str11 = "select dbo.GetFinancialYear (testdate) AS FIN_YR, CONCAT(FORMAT(testdate, 'MMM'),'-',FORMAT(testdate, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, testdate), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, testdate), -1) AS DATE) AS LAST_DATE,
                    testdate as TEST_DATE,prodType AS PROD_TYPE, count(finalstatus) as actual_darkroom from mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BOXN'
                    and testdate BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, testdate), 0) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE testdate IN (SELECT TOP 1 testdate FROM mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BOXN' and testdate <= getdate() ORDER BY testdate DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, testdate), -1) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE testdate IN (SELECT TOP 1 testdate FROM mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BOXN'and testdate <= getdate() ORDER BY testdate DESC))
                    group by dbo.GetFinancialYear (testdate), CONCAT(FORMAT(testdate, 'MMM'),'-',FORMAT(testdate, 'yy')),CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, testdate), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, testdate), -1) AS DATE)
                    ,prodType,testdate"

        Dim str3 = "select parameter from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BGC' and process='DARK ROOM' group by parameter"
        Dim str4 = "select sum(target) t from daily_production_position where date between '2020-04-01' and '2020-04-30' and wheel_type='BGC' and process='DARK ROOM' group by parameter"
        Dim str41 = "select dbo.GetFinancialYear (testdate) AS FIN_YR, CONCAT(FORMAT(testdate, 'MMM'),'-',FORMAT(testdate, 'yy')) AS MONTH_YEAR,
                    CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, testdate), 0) AS DATE) AS FIRST_DATE,CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, testdate), -1) AS DATE) AS LAST_DATE,
                    testdate as TEST_DATE,prodType AS PROD_TYPE, count(finalstatus) as actual_darkroom from mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BGC'
                    and testdate BETWEEN
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, testdate), 0) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE testdate IN (SELECT TOP 1 testdate FROM mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BGC' and testdate <= getdate() ORDER BY testdate DESC)) 
                    AND
                    (SELECT DISTINCT CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, testdate), -1) AS DATE) from mm_magnaglow_new_shiftwiserecords_old WHERE testdate IN (SELECT TOP 1 testdate FROM mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BGC'and testdate <= getdate() ORDER BY testdate DESC))
                    group by dbo.GetFinancialYear (testdate), CONCAT(FORMAT(testdate, 'MMM'),'-',FORMAT(testdate, 'yy')),CAST(DATEADD(MONTH, DATEDIFF(MONTH, 0, testdate), 0) AS DATE),CAST(DATEADD(MONTH, DATEDIFF(MONTH, -1, testdate), -1) AS DATE)
                    ,prodType,testdate"
        Dim s11 As Integer
        Dim s41 As Integer

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            dark_room_para_mon_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            dark_room_target_mon_boxn.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        s11 = 0
        While rdr.Read
            s11 = s11 + rdr.Item("actual_darkroom")
        End While
        dark_room_actual_mon_boxn.Add(s11)
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            dark_room_para_mon_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            dark_room_target_mon_bgc.Add(rdr.Item("t"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        s41 = 0
        While rdr.Read
            s41 = s41 + rdr.Item("actual_darkroom")
        End While
        dark_room_actual_mon_bgc.Add(s41)
        rdr.Close()
        con.Close()

    End Sub

    Public Sub melt_daily_production()
        Dim rdr As SqlDataReader
        melt_parameter_boxn = New ArrayList
        melt_target_boxn = New ArrayList
        melt_actual_boxn = New ArrayList

        melt_parameter_bgc = New ArrayList
        melt_target_bgc = New ArrayList
        melt_actual_bgc = New ArrayList

        Dim str = "select parameter from daily_production_position where date='2020-04-19' and wheel_type='BOXN' and process='MELT'"
        Dim str1 = "select target from daily_production_position where date='2020-04-19' and wheel_type='BOXN' and process='MELT'"
        Dim str11 = "select testdate,count(heatno) as heat,prodtype from mm_magnaglow_new_shiftwiserecords_old where testdate in
                        (select max(testdate) from mm_magnaglow_new_shiftwiserecords_old where prodType='BOXN')
                        Group by TestDate, prodtype"
        Dim str12 = "select count(a.heat_number) as heat_count from mm_heatsheet_header_old a,mm_offheat_heatsheet_header_old b,mm_magnaglow_new_shiftwiserecords_old c
                    where a.heat_number=b.heat_number
                    and b.heat_number=c.HeatNo and c.ProdType='BOXN'
                    and a.melt_date in (select max(melt_date) from mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c where a.heat_number=c.HeatNo and c.prodType='BOXN')"
        Dim str13 = "select heat_tapped,heat_number,count(heat_number) as heat_count,SOS from mm_post_melt, mm_magnaglow_new_shiftwiserecords_old where 
                        mm_magnaglow_new_shiftwiserecords_old.HeatNo=mm_post_melt.heat_number
                        and mm_magnaglow_new_shiftwiserecords_old.ProdType='BOXN' and
                    heat_tapped in(select max(heat_tapped) from mm_post_melt where sos='NOT DONE')
                        group by heat_tapped,heat_number,SOS"
        Dim str14 = "select count(distinct mm_heat_sheet_melting.heat_number) as heat_count,isnull((mm_post_melt.tap_end-datepart(minute,mm_heat_sheet_melting.t12_power)),0) as tapping
                    ,mm_magnaglow_new_shiftwiserecords_old.TestDate
                    from mm_heat_sheet_melting,mm_magnaglow_new_shiftwiserecords_old,mm_post_melt
                    where mm_magnaglow_new_shiftwiserecords_old.heatno=mm_heat_sheet_melting.heat_number
                    and mm_magnaglow_new_shiftwiserecords_old.ProdType='BOXN'
                    and mm_post_melt.heat_number=mm_heat_sheet_melting.heat_number
                    and isnull((mm_post_melt.tap_end-datepart(minute,mm_heat_sheet_melting.t12_power)),0) >150
                    and mm_magnaglow_new_shiftwiserecords_old.TestDate in
                    (select max(TestDate) from mm_heat_sheet_melting,mm_magnaglow_new_shiftwiserecords_old,mm_post_melt
                    where mm_magnaglow_new_shiftwiserecords_old.heatno=mm_heat_sheet_melting.heat_number
                    and mm_magnaglow_new_shiftwiserecords_old.ProdType='BOXN'
                    and mm_post_melt.heat_number=mm_heat_sheet_melting.heat_number)
                    group by isnull((mm_post_melt.tap_end-datepart(minute,mm_heat_sheet_melting.t12_power)),0),mm_magnaglow_new_shiftwiserecords_old.TestDate"

        Dim str3 = "select parameter from daily_production_position where date='2020-04-19' and wheel_type='BGC' and process='MELT'"
        Dim str4 = "select target from daily_production_position where date='2020-04-19' and wheel_type='BGC' and process='MELT'"
        Dim str41 = "select testdate,count(heatno) as heat,prodtype from mm_magnaglow_new_shiftwiserecords_old where testdate in
                    (select max(testdate) from mm_magnaglow_new_shiftwiserecords_old where prodType='BGC')
                        group by TestDate,prodtype"
        Dim str42 = "select count(a.heat_number) as heat_count from mm_heatsheet_header_old a,mm_offheat_heatsheet_header_old b,mm_magnaglow_new_shiftwiserecords_old c
                    where a.heat_number=b.heat_number
                    and b.heat_number=c.HeatNo and c.ProdType='BGC'
                    and a.melt_date in (select max(melt_date) from mm_heatsheet_header_old a,mm_magnaglow_new_shiftwiserecords_old c where a.heat_number=c.HeatNo and c.prodType='BGC')"
        Dim str43 = "select heat_tapped,heat_number,count(heat_number) as heat_count,SOS from mm_post_melt, mm_magnaglow_new_shiftwiserecords_old where 
                        mm_magnaglow_new_shiftwiserecords_old.HeatNo=mm_post_melt.heat_number
                        and mm_magnaglow_new_shiftwiserecords_old.ProdType='BGC' and
                        heat_tapped in(select max(heat_tapped) from mm_post_melt where sos='NOT DONE')
                        group by heat_tapped,heat_number,SOS"
        Dim str44 = "select count(distinct mm_heat_sheet_melting.heat_number) as heat_count,isnull((mm_post_melt.tap_end-datepart(minute,mm_heat_sheet_melting.t12_power)),0) as tapping
                    ,mm_magnaglow_new_shiftwiserecords_old.TestDate
                        from mm_heat_sheet_melting,mm_magnaglow_new_shiftwiserecords_old,mm_post_melt
                    where mm_magnaglow_new_shiftwiserecords_old.heatno=mm_heat_sheet_melting.heat_number
                    and mm_magnaglow_new_shiftwiserecords_old.ProdType='BGC'
                    and mm_post_melt.heat_number=mm_heat_sheet_melting.heat_number
                and isnull((mm_post_melt.tap_end-datepart(minute,mm_heat_sheet_melting.t12_power)),0) >150
                and mm_magnaglow_new_shiftwiserecords_old.TestDate in
                (select max(TestDate) from mm_heat_sheet_melting,mm_magnaglow_new_shiftwiserecords_old,mm_post_melt
                where mm_magnaglow_new_shiftwiserecords_old.heatno=mm_heat_sheet_melting.heat_number
                and mm_magnaglow_new_shiftwiserecords_old.ProdType='BGC'
                and mm_post_melt.heat_number=mm_heat_sheet_melting.heat_number)
                    group by isnull((mm_post_melt.tap_end-datepart(minute,mm_heat_sheet_melting.t12_power)),0),mm_magnaglow_new_shiftwiserecords_old.TestDate"
        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            melt_parameter_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            melt_target_boxn.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        While rdr.Read
            melt_actual_boxn.Add(rdr.Item("heat"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        While rdr.Read
            melt_actual_boxn.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str13)
        While rdr.Read
            melt_actual_boxn.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str14)
        While rdr.Read
            melt_actual_boxn.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            melt_parameter_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            melt_target_bgc.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        While rdr.Read
            melt_actual_bgc.Add(rdr.Item("heat"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        While rdr.Read
            melt_actual_bgc.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str43)
        While rdr.Read
            melt_actual_bgc.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str44)
        While rdr.Read
            melt_actual_bgc.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr.Close()
        con.Close()

    End Sub

    Public Sub mould_daily_production()
        Dim rdr As SqlDataReader
        mould_parameter_boxn = New ArrayList
        mould_target_boxn = New ArrayList
        mould_actual_boxn = New ArrayList

        mould_parameter_bgc = New ArrayList
        mould_target_bgc = New ArrayList
        mould_actual_bgc = New ArrayList

        Dim str = "select parameter from daily_production_position where date='2020-04-19' and wheel_type='BOXN' and process='MOULD'"
        Dim str1 = "select target from daily_production_position where date='2020-04-19' and wheel_type='BOXN' and process='MOULD'"
        Dim str11 = "select cast(pour_time as date) as melt_date , wheel_type , count(engraved_number) as actual_cast
                     from mm_pouring_old
                    where wheel_type='BOXN WHL' and cast(pour_time as date) in
                    (select max(cast(pour_time as date)) from mm_pouring_old where wheel_type='BOXN WHL')
                    group by cast(pour_time as date),wheel_type"
        Dim str12 = "select date,count(distinct wheel_no) as rework_wheel from mm_hotwheelline_spgnew,mm_pouring_old  where
                    cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and mm_pouring_old.wheel_type='BOXN WHL' and mm_hotwheelline_spgnew.process_type='rework'
                    and mm_hotwheelline_spgnew.date in(select max(date) from mm_hotwheelline_spgnew,mm_pouring_old  where
                    cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and mm_pouring_old.wheel_type='BOXN WHL' and mm_hotwheelline_spgnew.process_type='rework')
                    group by date"
        Dim str13 = "select count(distinct(mm_post_pouring.heat_number)) as heat_count ,mm_post_pouring.end_time,mm_post_pouring.total_pour_time from mm_post_pouring,mm_pouring_old
                     where mm_post_pouring.heat_number=mm_pouring_old.heat_number
                     and mm_pouring_old.wheel_type='BOXN WHL'
                    and mm_post_pouring.total_pour_time>50
                    and end_time in
                    (select max(end_time) from mm_post_pouring, mm_pouring_old where mm_post_pouring.heat_number=mm_pouring_old.heat_number
                    and mm_pouring_old.wheel_type='BOXN WHL'
                    and mm_post_pouring.total_pour_time>50)
                    group by mm_post_pouring.end_time,mm_post_pouring.total_pour_time"
        Dim str14 = "select count(mm_pouring_old.wheel_type) as MRXC_COUNT
                    ,mm_pouring_old.wheel_type from mm_heatsheet_header_old,mm_pouring_old
                    where mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number
                    and mm_pouring_old.rejection_code like 'XC%'
                    and mm_pouring_old.wheel_type='BOXN WHL'
                    and cast(mm_pouring_old.pour_time as date) in 
                    (select max(cast(pour_time as date)) from mm_pouring_old,mm_heatsheet_header_old
                    where mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number
                    and mm_pouring_old.rejection_code like 'XC%'
                    and mm_pouring_old.wheel_type='BOXN WHL')
                    group by mm_pouring_old.wheel_type"

        Dim str3 = "select parameter from daily_production_position where date='2020-04-19' and wheel_type='BGC' and process='MOULD'"
        Dim str4 = "select target from daily_production_position where date='2020-04-19' and wheel_type='BGC' and process='MOULD'"
        Dim str41 = "select cast(pour_time as date) as melt_date , wheel_type , count(engraved_number) as actual_cast
                     from mm_pouring_old
                     where wheel_type='ICF WHL' and cast(pour_time as date) in
                    (select max(cast(pour_time as date)) from mm_pouring_old where wheel_type='ICF WHL')
                    group by cast(pour_time as date),wheel_type"
        Dim str42 = "select date,count(distinct wheel_no) as rework_wheel from mm_hotwheelline_spgnew,mm_pouring_old  where
                     cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                     and mm_pouring_old.wheel_type='ICF WHL' and mm_hotwheelline_spgnew.process_type='rework'
                    and mm_hotwheelline_spgnew.date in(select max(date) from mm_hotwheelline_spgnew,mm_pouring_old  where
                    cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and mm_pouring_old.wheel_type='ICF WHL' and mm_hotwheelline_spgnew.process_type='rework')
                    group by date"
        Dim str43 = "select count(distinct(mm_post_pouring.heat_number)) as heat_count ,mm_post_pouring.end_time,mm_post_pouring.total_pour_time
                        from mm_post_pouring,mm_pouring_old
                    where mm_post_pouring.heat_number=mm_pouring_old.heat_number
                    and mm_pouring_old.wheel_type='ICF WHL'
                    and mm_post_pouring.total_pour_time>50
                    and end_time in
                    (select max(end_time) from mm_post_pouring, mm_pouring_old where mm_post_pouring.heat_number=mm_pouring_old.heat_number
                    and mm_pouring_old.wheel_type='ICF WHL'
                    and mm_post_pouring.total_pour_time>50)
                    group by mm_post_pouring.end_time,mm_post_pouring.total_pour_time"
        Dim str44 = "select count(mm_pouring_old.wheel_type) as MRXC_COUNT
                    ,mm_pouring_old.wheel_type from mm_heatsheet_header_old,mm_pouring_old
                    where mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number
                    and mm_pouring_old.rejection_code like 'XC%'
                    and mm_pouring_old.wheel_type='ICF WHL'
                    and cast(mm_pouring_old.pour_time as date) in 
                    (select max(cast(pour_time as date)) from mm_pouring_old,mm_heatsheet_header_old
                    where mm_pouring_old.heat_number=mm_heatsheet_header_old.heat_number
                    and mm_pouring_old.rejection_code like 'XC%'
                    and mm_pouring_old.wheel_type='ICF WHL')
                    group by mm_pouring_old.wheel_type"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            mould_parameter_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            mould_target_boxn.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        While rdr.Read
            mould_actual_boxn.Add(rdr.Item("actual_cast"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        While rdr.Read
            mould_actual_boxn.Add(rdr.Item("rework_wheel"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str13)
        While rdr.Read
            mould_actual_boxn.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str14)
        While rdr.Read
            mould_actual_boxn.Add(rdr.Item("MRXC_COUNT"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            mould_parameter_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            mould_target_bgc.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        While rdr.Read
            mould_actual_bgc.Add(rdr.Item("actual_cast"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        While rdr.Read
            mould_actual_bgc.Add(rdr.Item("rework_wheel"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str43)
        While rdr.Read
            mould_actual_bgc.Add(rdr.Item("heat_count"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str44)
        While rdr.Read
            mould_actual_bgc.Add(rdr.Item("MRXC_COUNT"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub mrs_daily_production()
        Dim rdr As SqlDataReader
        mrs_parameter_boxn = New ArrayList
        mrs_target_boxn = New ArrayList
        mrs_actual_boxn = New ArrayList

        mrs_parameter_bgc = New ArrayList
        mrs_target_bgc = New ArrayList
        mrs_actual_bgc = New ArrayList

        Dim str = "select  parameter from daily_production_position where date='2020-04-20' and wheel_type='BOXN' and process='MRS'"
        Dim str1 = "select target from daily_production_position where date='2020-04-20' and wheel_type='BOXN' and process='MRS'"
        Dim str11 = "select machining_date,count(mould_number) as BOXN_COPE from mm_mould_machining_details where mould_number like '10%'
                    and machining_date in(select max(machining_date) from mm_mould_machining_details where mould_number like '10%')
                    group by machining_date"
        Dim str12 = "select isnull(count(mould_number),0) as BOXN_DRAG from mm_mould_machining_details where mould_number like '18%'"

        Dim str3 = "select  parameter from daily_production_position where date='2020-04-20' and wheel_type='BGC' and process='MRS'"
        Dim str4 = "select target from daily_production_position where date='2020-04-20' and wheel_type='BGC' and process='MRS'"
        Dim str41 = "select machining_date,count(mould_number) as BGC_COPE from mm_mould_machining_details where mould_number like '50%'
                    and machining_date in(select max(machining_date) from mm_mould_machining_details where mould_number like '50%')
                    group by machining_date"
        Dim str42 = "select machining_date,count(mould_number) as BGC_DRAG from mm_mould_machining_details where mould_number like '58%'
                    and machining_date in(select max(machining_date) from mm_mould_machining_details where mould_number like '58%')
                    group by machining_date"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            mrs_parameter_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            mrs_target_boxn.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        While rdr.Read
            mrs_actual_boxn.Add(rdr.Item("BOXN_COPE"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        While rdr.Read
            mrs_actual_boxn.Add(rdr.Item("BOXN_DRAG"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            mrs_parameter_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            mrs_target_bgc.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        While rdr.Read
            mrs_actual_bgc.Add(rdr.Item("BGC_COPE"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        While rdr.Read
            mrs_actual_bgc.Add(rdr.Item("BGC_DRAG"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub heat_treatment_daily_production()
        Dim rdr As SqlDataReader
        heat_treatment_parameter_boxn = New ArrayList
        heat_treatment_target_boxn = New ArrayList
        heat_treatment_actual_boxn = New ArrayList

        heat_treatment_parameter_bgc = New ArrayList
        heat_treatment_target_bgc = New ArrayList
        heat_treatment_actual_bgc = New ArrayList

        Dim str = "select parameter from daily_production_position where date='2020-04-19' and wheel_type='BOXN' and process='HEAT TREATMENT'"
        Dim str1 = "select target from daily_production_position where date='2020-04-19' and wheel_type='BOXN' and process='HEAT TREATMENT'"
        Dim str11 = "select date as heat_treatment_date,count(distinct wheel_no) as heat_treatment 
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='OK' 
                    and mm_pouring_old.wheel_type='BOXN WHL'
                    and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and date in(select max(date) from mm_hotwheelline_spgnew,mm_pouring_old
                    where spg_status='OK' 
                    and mm_pouring_old.wheel_type='BOXN WHL')
                    group by date "
        Dim str12 = "select date as heat_treatment_date,count(distinct wheel_no) as heat_rework
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='NOT OK' 
                    and mm_pouring_old.wheel_type='BOXN WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and date in(select max(date) from mm_hotwheelline_spgnew,mm_pouring_old
                    where spg_status='NOT OK' 
                    and mm_pouring_old.wheel_type='BOXN WHL')
                    group by date "

        Dim str3 = "select parameter from daily_production_position where date='2020-04-19' and wheel_type='BGC' and process='HEAT TREATMENT'"
        Dim str4 = "select target from daily_production_position where date='2020-04-19' and wheel_type='BGC' and process='HEAT TREATMENT'"
        Dim str41 = "select date as heat_treatment_date,count(distinct wheel_no) as heat_treatment 
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='OK' 
                    and mm_pouring_old.wheel_type='ICF WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and date in(select max(date) from mm_hotwheelline_spgnew,mm_pouring_old
                    where spg_status='OK' 
                    and mm_pouring_old.wheel_type='ICF WHL')
                    group by date "
        Dim str42 = "select date as heat_treatment_date,count(distinct wheel_no) as heat_rework
                    from mm_hotwheelline_spgnew ,mm_pouring_old
                    where spg_status='NOT OK' 
                    and mm_pouring_old.wheel_type='ICF WHL'
                     and cast(mm_pouring_old.heat_number as varchar)=cast(mm_hotwheelline_spgnew.heatno as varchar)
                    and date in(select max(date) from mm_hotwheelline_spgnew,mm_pouring_old
                    where spg_status='NOT OK' 
                    and mm_pouring_old.wheel_type='ICF WHL')
                    group by date "

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            heat_treatment_parameter_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            heat_treatment_target_boxn.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        While rdr.Read
            heat_treatment_actual_boxn.Add(rdr.Item("heat_treatment"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str12)
        While rdr.Read
            heat_treatment_actual_boxn.Add(rdr.Item("heat_rework"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            heat_treatment_parameter_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            heat_treatment_target_bgc.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        While rdr.Read
            heat_treatment_actual_bgc.Add(rdr.Item("heat_treatment"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str42)
        While rdr.Read
            heat_treatment_actual_bgc.Add(rdr.Item("heat_rework"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub dark_room_daily_production()
        Dim rdr As SqlDataReader
        dark_room_parameter_boxn = New ArrayList
        dark_room_target_boxn = New ArrayList
        dark_room_actual_boxn = New ArrayList

        dark_room_parameter_bgc = New ArrayList
        dark_room_target_bgc = New ArrayList
        dark_room_actual_bgc = New ArrayList

        Dim str = "select parameter from daily_production_position where date='2020-04-19' and wheel_type='BOXN' and process='DARK ROOM'"
        Dim str1 = "select target from daily_production_position where date='2020-04-19' and wheel_type='BOXN' and process='DARK ROOM'"
        Dim str11 = "select testdate, count(finalstatus) as actual_darkroom from mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BOXN'
                    and testdate in(select max(testdate) from mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BOXN')
                    group by testdate"

        Dim str3 = "select parameter from daily_production_position where date='2020-04-19' and wheel_type='BGC' and process='DARK ROOM'"
        Dim str4 = "select target from daily_production_position where date='2020-04-19' and wheel_type='BGC' and process='DARK ROOM'"
        Dim str41 = "select testdate, count(finalstatus) as actual_darkroom from mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BGC'
                     and testdate in(select max(testdate) from mm_magnaglow_new_shiftwiserecords_old where finalstatus='stock' and prodType='BGC')
                     group by testdate"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str)
        While rdr.Read
            dark_room_parameter_boxn.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            dark_room_target_boxn.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str11)
        While rdr.Read
            dark_room_actual_boxn.Add(rdr.Item("actual_darkroom"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            dark_room_parameter_bgc.Add(rdr.Item("parameter"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            dark_room_target_bgc.Add(rdr.Item("target"))
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str41)
        While rdr.Read
            dark_room_actual_bgc.Add(rdr.Item("actual_darkroom"))
        End While
        rdr.Close()
        con.Close()
    End Sub

    Public Sub working_days()
        Dim rdr As SqlDataReader
        Dim str1 As String = "select count(distinct date) total_holidays from mm_calendar_dump where convert(date,mm_calendar_dump.date) between '" & c1 & "-04-01' and '" & c2 & "-03-31'"
        Dim str2 As String = "select DATEDIFF(day,'" & c1 & "-04-01','" & c2 & "-03-31')+1 as ndays_year"
        Dim str3 As String = "SELECT COUNT(distinct date) tilldate_holidays FROM MM_CALENDAR_DUMP WHERE DATE BETWEEN '" & c1 & "-04-01' AND GETDATE()"
        Dim str4 = "select DATEDIFF(day,'" & c1 & "-04-01',GETDATE())+1 as tilldate"

        con.Open()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str1)
        While rdr.Read
            total_holidays = rdr.Item("total_holidays")
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str2)
        While rdr.Read
            total_days_year = rdr.Item("ndays_year")
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str3)
        While rdr.Read
            tilldate_holidays = rdr.Item("tilldate_holidays")
        End While
        rdr.Close()
        rdr = SqlHelper.ExecuteReader(con, CommandType.Text, str4)
        While rdr.Read
            tilldate_days_year = rdr.Item("tilldate")
        End While
        rdr.Close()
        con.Close()
        total_work_days = total_days_year - total_holidays
        tilldate_work_days = tilldate_days_year - tilldate_holidays

    End Sub

End Class