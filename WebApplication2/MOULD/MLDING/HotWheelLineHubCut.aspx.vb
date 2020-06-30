Imports Microsoft.ApplicationBlocks.Data
Imports System.Data.SqlClient
Imports System.Data

Public Class HotWheelLineHubCut
    Inherits System.Web.UI.Page
    Protected WithEvents Dd1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents TxtSSEJE As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtHC1Oper As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtHC2Oper As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtHC3Oper As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtSTMOper As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLshift As System.Web.UI.WebControls.DropDownList
    Protected WithEvents TxtMouldWO As System.Web.UI.WebControls.TextBox
    Protected WithEvents rbl1 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents TxtHheat_No As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtStart_Time As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtFinish_Time As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLHWheelNo As System.Web.UI.WebControls.DropDownList
    Protected WithEvents TxtHTemp As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLHStampStatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLHeatMcNo As System.Web.UI.WebControls.DropDownList
    Protected WithEvents TxtHCHOperator As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLheat_status As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLheatXC_code As System.Web.UI.WebControls.DropDownList
    Protected WithEvents TxtRWwheel_No As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtRWtemp As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLRWStampStatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLRWMcNo As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLNozzalType As System.Web.UI.WebControls.DropDownList
    Protected WithEvents TxtHCRWOperator As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLRWStatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLRWXcCode As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLHC As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLNZRepMcNo As System.Web.UI.WebControls.DropDownList
    Protected WithEvents TxtHC_NZ_Heat_No As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLHC_NZ As System.Web.UI.WebControls.DropDownList
    Protected WithEvents TxtNLHC1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtNLHC2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtNLHC3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtHCRemarks As System.Web.UI.WebControls.TextBox
    Protected WithEvents BtnSave As System.Web.UI.WebControls.Button
    Protected WithEvents BtnClear As System.Web.UI.WebControls.Button
    Protected WithEvents BtnExit As System.Web.UI.WebControls.Button
    Protected WithEvents BtnSHeader As System.Web.UI.WebControls.Button
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
    Private con As New SqlConnection(ConfigurationManager.AppSettings("con"))
    Dim i As Integer
    Dim strsql As String
    Shared themeValue As String

    Public Sub New()

        AddHandler PreInit, New EventHandler(AddressOf Page_PreInit)
    End Sub

    Private Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs)

        Page.Theme = themeValue
    End Sub


    Protected Sub Dd1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        themeValue = Dd1.SelectedItem.Value
        Response.Redirect(Request.Url.ToString())

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            ' set dropdownlist selected based on text
            DDLHC.Items.FindByText("N").Selected = True
            DDLHC_SelectedIndexChanged(sender, e)

        End If

        If Page.IsPostBack = False Then
            Try
                getDateShift()
                SetScreen()
            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try
        End If

        GetHHeatWoNo()
        DDLshift_SelectedIndexChanged(sender, e)

    End Sub

    Private Sub SetScreen()

        Panel1.Visible = False
        Panel2.Visible = False
        'Panel4.Visible = False
        TxtHheat_No.Text = RWF.tables.GetLatestHeathotwheelline1
        TxtHC_NZ_Heat_No.Text = RWF.tables.GetLatestHWNozzalLifeDetails
        GetHHeatWoNo()
        Getwheel()
        GetRWwheel()
        Try
            If rbl1.SelectedItem.Value = "heat" Then
                Panel1.Visible = True
                Panel2.Visible = False
                Panel5.Visible = False
                Panel4.Visible = False
                Panel7.Visible = False
                Label1.Text = ""
                TxtHCRemarks.Text = ""
            ElseIf rbl1.SelectedItem.Value = "rework" Then
                Panel1.Visible = False
                Panel2.Visible = True
                Panel6.Visible = False
                Panel4.Visible = False
                Panel7.Visible = False
                TxtMouldWO.Text = ""
                Label1.Text = ""
                TxtHCRemarks.Text = ""
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub

    Protected Sub BtnSave_Click(sender As Object, e As EventArgs) Handles BtnSave.Click
        Dim Done As Boolean
        Dim Done1 As Boolean
        Try
            If (rbl1.SelectedItem.Value = "heat" And DDLHeatMcNo.SelectedItem.Value <> "select") Then
                Done = save()
                Done1 = save1()
                lblMessage.Text = ""
                Panel7.Visible = True
                show_data()
            ElseIf (rbl1.SelectedItem.Value = "rework" And DDLRWMcNo.SelectedItem.Value <> "select") Then
                Done = save()
                Done1 = save1()
                Panel7.Visible = True
                show_data1()
            End If
        Catch exp As Exception
            Label1.Text = exp.Message

        End Try
        If Done And Done1 Then
            Label1.Text = "inserted successfully"
        End If
        'show_data()
        'GetHeatWoNo()
        'getDateShift()
    End Sub


    Public Function save()

        Dim done As Boolean
        Dim aa As Integer

        aa = Autogenerate_idd()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj

        If (rbl1.SelectedItem.Value = "heat") Then
            cmd.CommandText = "Insert INTO mm_HWLHubCutDetails(Date,Shift,SSEJE,HCOperator,HC_ProcesType,HeatNo,Wheel_No,HC_Temp,Stamping_Status,HC_Mcn_No,HC_Status,HC_XC_Code, HCRemarks)  
           VALUES ('" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "', '" & DDLshift.SelectedItem.Value & "' , '" & TxtSSEJE.Text & "', '" & TxtHCHOperator.Text & "','" & rbl1.SelectedItem.Text & "', 
          '" & TxtHheat_No.Text & "', '" & DDLHWheelNo.SelectedItem.Value & "', '" & TxtHTemp.Text & "','" & DDLHStampStatus.SelectedItem.Value & "', '" & DDLHeatMcNo.SelectedItem.Value & "', 
           '" & DDLheat_status.SelectedItem.Value & "', '" & DDLheatXC_code.SelectedItem.Value & "', '" & TxtHCRemarks.Text & "') "

        ElseIf (rbl1.SelectedItem.Value = "rework") Then
            cmd.CommandText = "Insert INTO mm_HWLHubCutDetails(Date,Shift,SSEJE,HCOperator,HC_ProcesType,HeatNo,Wheel_No,HC_Temp,Stamping_Status,HC_Mcn_No,HC_Status,HC_XC_Code, HCRemarks)
            VALUES ('" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "', '" & DDLshift.SelectedItem.Value & "' , '" & TxtSSEJE.Text & "', '" & TxtHCRWOperator.Text & "','" & rbl1.SelectedItem.Text & "',
              '" & TxtRWheat_No.Text & "', '" & TxtRWwheel_No.Text & "', '" & TxtRWtemp.Text & "','" & DDLRWStampStatus.SelectedItem.Value & "','" & DDLRWMcNo.SelectedItem.Value & "',
             '" & DDLRWStatus.SelectedItem.Value & "', '" & DDLRWXcCode.SelectedItem.Value & "', '" & TxtHCRemarks.Text & "')"

            'If (rbl1.SelectedItem.Value = "heat") Then
            '    cmd.CommandText = "Insert INTO mm_HotWheelLineHubCutDetails(Date,Shift,SSEJE,HCOperator,HC_ProcesType,HC_HeatNo,HC_Wheel_No,HC_Temp,Stamping_Status,HC_Mcn_No,HC_Status,HC_XC_Code, HCRemarks)  
            '   VALUES ('" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "', '" & DDLshift.SelectedItem.Value & "' , '" & TxtSSEJE.Text & "', '" & TxtHCHOperator.Text & "','" & rbl1.SelectedItem.Text & "', 
            '        '" & TxtHheat_No.Text & "', '" & DDLHWheelNo.SelectedItem.Value & "', '" & TxtHTemp.Text & "','" & DDLHStampStatus.SelectedItem.Value & "', '" & DDLHeatMcNo.SelectedItem.Value & "', 
            '           '" & DDLheat_status.SelectedItem.Value & "', '" & DDLheatXC_code.SelectedItem.Value & "', '" & TxtHCRemarks.Text & "') "


            'ElseIf (rbl1.SelectedItem.Value = "rework") Then
            '    cmd.CommandText = "Insert INTO mm_HotWheelLineHubCutDetails(Date,Shift,SSEJE,HC_ProcesType,HCOperator1,rework_heatno,rework_wheel_no,rework_temp,rework_Stamping_Status,rework_mc_no,rework_status,rework_xc_code,HCRemarks)
            '         VALUES ('" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "', '" & DDLshift.SelectedItem.Value & "' , '" & TxtSSEJE.Text & "', '" & rbl1.SelectedItem.Text & "','" & TxtHCRWOperator.Text & "',
            '      '" & TxtRWheat_No.Text & "', '" & TxtRWwheel_No.Text & "', '" & TxtRWtemp.Text & "','" & DDLRWStampStatus.SelectedItem.Value & "','" & DDLRWMcNo.SelectedItem.Value & "',
            '     '" & DDLRWStatus.SelectedItem.Value & "', '" & DDLRWXcCode.SelectedItem.Value & "', '" & TxtHCRemarks.Text & "')"

        End If
        Try
            cmd.Connection.Open()

            If cmd.ExecuteNonQuery() = 1 Then done = True

        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally

            If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
            cmd.Dispose()
            cmd = Nothing


        End Try
        DDLHeatMcNo.SelectedIndex = 0
        DDLRWMcNo.SelectedIndex = 0
        Return done

    End Function

    Public Function save1()

        Dim done1 As Boolean
        Dim aa As Integer

        aa = Autogenerate_idd()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj

        cmd.CommandText = "Insert INTO mm_HWNozzalLifeDetails (Date,Shift,HC_NzR_Mcn_No,HC_NzR_Heat_No,HC_NzR_wheel_No,HC1_Life,HC2_Life,HC3_Life,Nozzle_Type,ID)
        values('" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "','" & DDLshift.SelectedItem.Value & "','" & DDLNZRepMcNo.Text & "','" & TxtHC_NZ_Heat_No.Text & "', '" & DDLHC_NZ.SelectedItem.Value & "',
                '" & Val(TxtNLHC1.Text) & "',  '" & Val(TxtNLHC2.Text) & "', '" & Val(TxtNLHC3.Text) & "','" & DDLNozzalType.SelectedItem.Value & "', '" & aa & "')"

        'cmd.CommandText = "Insert INTO mm_HWNozzalLifeDetails (Date,Shift,HC_NzR_Mcn_No,HC_NzR_Heat_No,HC_NzR_wheel_No,HC1_Life,HC2_Life,HC3_Life,ID)
        'values('" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "','" & DDLshift.SelectedItem.Value & "','" & DDLNZRepMcNo.Text & "','" & TxtHC_NZ_Heat_No.Text & "', '" & DDLHC_NZ.SelectedItem.Value & "',
        '        '" & Val(TxtNLHC1.Text) & "',  '" & Val(TxtNLHC2.Text) & "', '" & Val(TxtNLHC3.Text) & "', '" & aa & "')"
        Try
            cmd.Connection.Open()

            If cmd.ExecuteNonQuery() = 1 Then done1 = True

        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally

            If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
            cmd.Dispose()
            cmd = Nothing


        End Try
        Return done1
    End Function

    Private Sub Autogenerate_id1()


        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim number As Integer
        cmd.CommandText = "Select TOP 1 HC1_Life from mm_HWNozzalLifeDetails ORDER BY id DESC"
        If IsDBNull(cmd.ExecuteScalar) Then
            number = 1
            TxtNLHC1.Text = number

        Else

            number = (cmd.ExecuteScalar) + 1
            TxtNLHC1.Text = number

        End If
        If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
        cmd.Dispose()
        cmd.Connection.Dispose()
    End Sub




    Private Sub Autogenerate_id2()

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim number As Integer
        cmd.CommandText = "Select TOP 1 HC2_Life from mm_HWNozzalLifeDetails ORDER BY id DESC"
        If IsDBNull(cmd.ExecuteScalar) Then
            number = 1
            TxtNLHC2.Text = (number)
        Else
            number = (cmd.ExecuteScalar) + 1
            TxtNLHC2.Text = number
        End If
        If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
        cmd.Dispose()
        cmd.Connection.Dispose()
    End Sub

    Private Sub Autogenerate_id3()

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim number As Integer
        cmd.CommandText = "Select TOP 1 HC3_Life from mm_HWNozzalLifeDetails ORDER BY id DESC"
        If IsDBNull(cmd.ExecuteScalar) Then
            number = 1
            TxtNLHC3.Text = number

        Else

            number = (cmd.ExecuteScalar) + 1
            TxtNLHC3.Text = number

        End If
        If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
        cmd.Dispose()
        cmd.Connection.Dispose()
    End Sub




    Public Function Autogenerate_idd()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim number As Integer
        cmd.CommandText = "Select Max(id) from mm_HWNozzalLifeDetails "
        If IsDBNull(cmd.ExecuteScalar) Then
            number = 1
            Return number
        Else

            number = (cmd.ExecuteScalar) + 1
            Return number
        End If
        If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
        cmd.Dispose()
        cmd.Connection.Dispose()
    End Function

    Protected Sub Btnclear_Click(sender As Object, e As EventArgs) Handles BtnClear.Click
        TxtDate.Text = ""
        TxtSSEJE.Text = ""
        TxtHC1Oper.Text = ""
        TxtHC2Oper.Text = ""
        TxtHC3Oper.Text = ""
        TxtHCHOperator.Text = ""
        TxtMouldWO.Text = ""
        TxtHheat_No.Text = ""
        TxtStart_Time.Text = ""
        TxtFinish_Time.Text = ""
        TxtHTemp.Text = ""
        TxtHCRWOperator.Text = ""
        TxtSTMOper.Text = ""
        TxtRWheat_No.Text = ""
        TxtRWtemp.Text = ""
        TxtHC_NZ_Heat_No.Text = ""
        'TxtHC_NZ_Whl_No.Text = ""
        TxtNLHC1.Text = ""
        TxtNLHC2.Text = ""
        TxtNLHC3.Text = ""
        TxtHCRemarks.Text = ""
        Label1.Text = ""
    End Sub

    Protected Sub TxtHheat_no_TextChanged(sender As Object, e As EventArgs) Handles TxtHheat_No.TextChanged
        GetHHeatWoNo()
        Getwheel()
        Try
            lblMessage.Text = ""
            If Val(TxtHheat_No.Text) > 0 Then
                If Val(DDLHWheelNo.SelectedItem.Text) > 0 Then
                    CheckWheel()
                Else

                    SetFocus(DDLHWheelNo)
                End If
            Else
                SetFocus(DDLHWheelNo)
            End If
        Catch ee As Exception
            lblMessage.Text = "invalid heat no"

        End Try
    End Sub



    Public Function GetHHeatWoNo()
        Dim dt As New DataTable()
        dt = RWF.tables.getHeatWo(Val(TxtHheat_No.Text))
        If dt.Rows.Count > 0 Then
            TxtMouldWO.Text = IIf(IsDBNull(dt.Rows(0)("number")), "", dt.Rows(0)("number"))
        Else
            TxtMouldWO.Text = ""
        End If
        dt = Nothing
        Return dt
    End Function

    Public Function GetRWHeatWoNo()
        Dim dt As New DataTable()
        dt = RWF.tables.getHeatWo(Val(TxtRWheat_No.Text))
        If dt.Rows.Count > 0 Then
            TxtMouldWO.Text = IIf(IsDBNull(dt.Rows(0)("number")), "", dt.Rows(0)("number"))
        Else
            TxtMouldWO.Text = ""
        End If
        dt = Nothing
        Return dt
    End Function

    Public Function Getwheel()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim heat As Integer = Val(TxtHheat_No.Text)
        cmd.CommandText = "Select engraved_number from mm_pouring  where heat_number =@heat"
        cmd.Parameters.AddWithValue("@heat", heat)
        'cmd.ExecuteScalar()
        DDLHWheelNo.DataSource = cmd.ExecuteReader()
        DDLHWheelNo.DataTextField = "engraved_number"
        DDLHWheelNo.DataBind()
    End Function

    Public Function GetRWwheel()

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim heat As Integer = Convert.ToInt64(TxtHC_NZ_Heat_No.Text)
        cmd.CommandText = "Select engraved_number from mm_pouring  where heat_number =@heat"
        cmd.Parameters.AddWithValue("@heat", heat)
        DDLHC_NZ.DataSource = cmd.ExecuteReader()
        DDLHC_NZ.DataTextField = "engraved_number"
        DDLHC_NZ.DataBind()
    End Function

    Public Sub getDateShift()
        If Now.Hour = 0 OrElse Now.Hour = 1 OrElse Now.Hour = 2 OrElse Now.Hour = 3 OrElse Now.Hour = 4 OrElse Now.Hour = 5 Then
            TxtDate.Text = CDate(Now.Date.AddDays(-1))
        Else
            TxtDate.Text = CDate(Now.Date)
        End If
        Dim dt As Date
        Dim Shift As String
        dt = Now
        Select Case dt.Hour
            Case 6 To 13
                Shift = "A"
            Case 14 To 21
                Shift = "B"
            Case Else
                Shift = "C"
        End Select
        Dim i As Integer = 0
        DDLshift.ClearSelection()
        For i = 0 To DDLshift.Items.Count - 1
            If DDLshift.Items(i).Text = Shift Then
                DDLshift.Items(i).Selected = True
                Exit For
            End If
        Next
        dt = Nothing

        Shift = Nothing
        i = Nothing
    End Sub
    Protected Sub rbl1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rbl1.SelectedIndexChanged
        SetScreen()
    End Sub

    Protected Sub DDLHC_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLHC.SelectedIndexChanged


        If (DDLNZRepMcNo.SelectedItem.Value = "1") Then
            If (DDLHC.SelectedItem.Value = "Y") Then
                TxtNLHC1.Text = 1
                Autogenerate_id2()
                Autogenerate_id3()

            End If
        ElseIf (DDLNZRepMcNo.SelectedItem.Value = "2") Then
            If (DDLHC.SelectedItem.Value = "Y") Then

                TxtNLHC2.Text = 1
                Autogenerate_id1()
                Autogenerate_id3()

            End If
        ElseIf (DDLNZRepMcNo.SelectedItem.Value = "3") Then
            If (DDLHC.SelectedItem.Value = "Y") Then
                TxtNLHC3.Text = 1
                Autogenerate_id1()
                Autogenerate_id2()

            End If
        End If

    End Sub

    Protected Sub DDLHeatMcNo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLHeatMcNo.SelectedIndexChanged
        If (DDLHeatMcNo.SelectedItem.Value = "1") Then
            Panel4.Visible = True
            TxtHCHOperator.Text = TxtHC1Oper.Text

            Autogenerate_id1()
            TxtNLHC2.Text = ""
            TxtNLHC3.Text = ""
        ElseIf (DDLHeatMcNo.SelectedItem.Value = "2") Then
            Panel4.Visible = True
            TxtHCHOperator.Text = TxtHC2Oper.Text

            Autogenerate_id2()
            TxtNLHC1.Text = ""
            TxtNLHC3.Text = ""
        ElseIf (DDLHeatMcNo.SelectedItem.Value = "3") Then
            Panel4.Visible = True
            TxtHCHOperator.Text = TxtHC3Oper.Text
            Autogenerate_id3()
            TxtNLHC1.Text = ""
            TxtNLHC2.Text = ""
        Else
            Panel4.Visible = False
        End If
    End Sub

    Protected Sub DDLRWMcNo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLRWMcNo.SelectedIndexChanged

        If (DDLRWMcNo.SelectedItem.Value = "1") Then
            Panel4.Visible = True
            Autogenerate_id1()
            TxtHCRWOperator.Text = TxtHC1Oper.Text
            TxtNLHC2.Text = ""
            TxtNLHC3.Text = ""
        ElseIf (DDLRWMcNo.SelectedItem.Value = "2") Then
            Panel4.Visible = True
            Autogenerate_id2()
            TxtHCRWOperator.Text = TxtHC2Oper.Text
            TxtNLHC1.Text = ""
            TxtNLHC3.Text = ""
        ElseIf (DDLRWMcNo.SelectedItem.Value = "3") Then
            Panel4.Visible = True
            Autogenerate_id3()
            TxtHCRWOperator.Text = TxtHC3Oper.Text
            TxtNLHC1.Text = ""
            TxtNLHC2.Text = ""
        Else
            Panel4.Visible = False
        End If
    End Sub

    Protected Sub TxtRWheat_No_TextChanged(sender As Object, e As EventArgs) Handles TxtRWheat_No.TextChanged
        GetRWHeatWoNo()
    End Sub

    Protected Sub DDLheat_status_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLheat_status.SelectedIndexChanged
        If (DDLheat_status.SelectedItem.Value = "Not OK") Then
            Panel5.Visible = True
        Else
            Panel5.Visible = False
            DDLheatXC_code.SelectedValue = ""
        End If
    End Sub

    Protected Sub DDLRWStatus_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLRWStatus.SelectedIndexChanged
        If (DDLRWStatus.SelectedItem.Value = "Not OK") Then
            Panel6.Visible = True
        Else
            Panel6.Visible = False
            DDLRWXcCode.SelectedValue = ""

        End If
    End Sub
    Protected Sub BtnSHeader_Click(sender As Object, e As EventArgs) Handles BtnSHeader.Click
        If BtnSHeader.Text = "SAVE DETAILS" Then
            con.Open()

            If con.State = ConnectionState.Closed Then
                con.Open()
            End If

            'Declaring parameters and assigning for Normalising  table
            Dim sqlPara(15) As SqlParameter
            sqlPara(0) = New SqlParameter("@TxtHheat_No", Val(TxtHheat_No.Text))
            sqlPara(1) = New SqlParameter("@TxtSSEJE", Trim(TxtSSEJE.Text))
            sqlPara(2) = New SqlParameter("@TxtMouldWO", Trim(TxtMouldWO.Text))
            sqlPara(3) = New SqlParameter("@TxtHC1Oper", Trim(TxtHC1Oper.Text))
            sqlPara(4) = New SqlParameter("@TxtHC2Oper", Trim(TxtHC2Oper.Text))
            sqlPara(5) = New SqlParameter("@TxtDate", Format(CDate(TxtDate.Text), "MM/dd/yyyy"))
            sqlPara(6) = New SqlParameter("@TxtHC3Oper", Trim(TxtHC3Oper.Text))
            sqlPara(7) = New SqlParameter("@TxtSTMOper", Trim(TxtSTMOper.Text))
            sqlPara(8) = New SqlParameter("@TxtStart_Time", Trim(TxtStart_Time.Text))
            sqlPara(9) = New SqlParameter("@Txtfinish_time", Trim(TxtFinish_Time.Text))
            sqlPara(10) = New SqlParameter("@DDLshift", Trim(DDLshift.SelectedItem.Value))
            sqlPara(11) = New SqlParameter("@TxtRWheat_No", Val(TxtRWheat_No.Text))
            sqlPara(12) = New SqlParameter("@TxtHCHOperator", Trim(TxtHCHOperator.Text))
            sqlPara(13) = New SqlParameter("@TxtHCRWOperator", Trim(TxtHCRWOperator.Text))
            sqlPara(14) = New SqlParameter("@TxtHTemp", Trim(TxtHTemp.Text))
            sqlPara(15) = New SqlParameter("@TxtRWtemp", Trim(TxtRWtemp.Text))


            Dim sqlstr As String = "Insert INTO mm_HWLHCHeader(Date,Shift,SSEJE,HC1Operator,HC2Operator,HC3Operator,STMOperator,HC_StartTime,HC_FinishTime,HC_HeatNo,rework_heatno,Moulding_WO_No)  
          values("
            sqlstr &= "@TxtDate,@DDLshift,@TxtSSEJE,@TxtHC1Oper,@TxtHC2Oper,@TxtHC3Oper,@TxtSTMOper,@TxtStart_Time,@Txtfinish_time,@TxtHheat_No,@TxtRWheat_No,@TxtMouldWO)"


            '  Dim sqlstr As String = "Insert INTO mm_HoTWheelLineHCHeader(Date,Shift,SSEJE,HC1Operator,HC2Operator,HC3Operator,STMOperator,HC_StartTime,HC_FinishTime,HC_HeatNo,rework_heatno,Moulding_WO_No)  
            'values("
            '  sqlstr &= "@TxtDate,@DDLshift,@TxtSSEJE,@TxtHC1Oper,@TxtHC2Oper,@TxtHC3Oper,@TxtSTMOper,@TxtStart_Time,@Txtfinish_time,@TxtHheat_No,@TxtRWheat_No,@TxtMouldWO)"

            Try

                If con.State = ConnectionState.Closed Then
                    con.Open()
                End If
                SqlHelper.ExecuteNonQuery(con, CommandType.Text, sqlstr, sqlPara)
                '  BtnSHeader.Text = "add"
                Label2.Text = "HoTWheelLineHCHeader Details Added"
                'Call clearform()

            Catch exp As SqlException
                If exp.Number = 2627 Then
                    Label2.Text = "This Record Already exists"
                    BtnSHeader.Text = "Update"
                    ' strmode = "update"
                    'Call update()
                Else

                    strsql = exp.StackTrace
                    Label2.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message
                End If
            Catch exp As Exception
                strsql = exp.StackTrace
                Label2.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message
            End Try
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If
        Else
            Call update()

        End If

    End Sub


    Sub update()
        If BtnSHeader.Text = "Update" Then

            Label2.Text = ""



            'Declaring parameters and assigning for Normalising  table
            Dim sqlPara(7) As SqlParameter

            sqlPara(0) = New SqlParameter("@TxtSSEJE", Trim(TxtSSEJE.Text))
            sqlPara(1) = New SqlParameter("@TxtMouldWO", Trim(TxtMouldWO.Text))
            sqlPara(2) = New SqlParameter("@TxtHC1Oper", Trim(TxtHC1Oper.Text))
            sqlPara(3) = New SqlParameter("@TxtHC2Oper", Trim(TxtHC2Oper.Text))
            sqlPara(4) = New SqlParameter("@TxtHC3Oper", Trim(TxtHC3Oper.Text))
            sqlPara(5) = New SqlParameter("@TxtSTMOper", Trim(TxtSTMOper.Text))
            sqlPara(6) = New SqlParameter("@TxtStart_Time", Trim(TxtStart_Time.Text))
            sqlPara(7) = New SqlParameter("@Txtfinish_time", Trim(TxtFinish_Time.Text))

            Try
                'strsql = "UPDATE mm_HoTWheelLineHCHeader SET SSEJE=@TxtSSEJE,HC1Operator=@TxtHC1Oper,HC2Operator=@TxtHC2Oper,HC3Operator=@TxtHC3Oper,STMOperator=@TxtSTMOper,HC_StartTime=@TxtStart_Time,HC_FinishTime=@Txtfinish_time,Moulding_WO_No=@TxtMouldWO WHERE Date ='" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "' AND  Shift = '" & DDLshift.SelectedItem.Value & "' "

                strsql = "UPDATE mm_HWLHCHeader SET SSEJE=@TxtSSEJE,HC1Operator=@TxtHC1Oper,HC2Operator=@TxtHC2Oper,HC3Operator=@TxtHC3Oper,STMOperator=@TxtSTMOper,HC_StartTime=@TxtStart_Time,HC_FinishTime=@Txtfinish_time,Moulding_WO_No=@TxtMouldWO WHERE Date ='" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "' AND  Shift = '" & DDLshift.SelectedItem.Value & "' "
                SqlHelper.ExecuteNonQuery(con, CommandType.Text, strsql, sqlPara)
                Label2.Text = "Updated Sucessfully"
                BtnSHeader.Text = "SAVE DETAILS"
                'Call clearform()


            Catch exp As SqlException
                strsql = exp.StackTrace
                Label2.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message

            Catch exp As Exception
                strsql = exp.StackTrace
                Label2.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message
            End Try
        End If


    End Sub

    Protected Sub TxtSSEJE_TextChanged(sender As Object, e As EventArgs) Handles TxtSSEJE.TextChanged
        TxtSSEJE.Text = TxtSSEJE.Text.ToUpper
    End Sub

    Private Sub show_data()

        Try
            cmd.Connection.Open()
            cmd.CommandText = "select Date,Shift,SSEJE,HCOperator,HC_ProcesType,HeatNo,Wheel_No,HC_Temp,Stamping_Status,HC_Mcn_No,HC_Status,HC_XC_Code from mm_HWLHubCutDetails where HC_ProcesType='" & rbl1.SelectedItem.Value & "' and Date='" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "'  and Shift='" & DDLshift.SelectedItem.Value & "' "
            Using sda As New SqlDataAdapter()
                sda.SelectCommand = cmd
                Using dt As New DataSet()
                    sda.Fill(dt)
                    dg_insert.DataSource = dt
                    dg_insert.DataBind()
                End Using
            End Using
        Catch ex As Exception
            Throw New Exception(ex.Message)
        Finally
            cmd.Connection.Close()
        End Try
    End Sub


    Private Sub show_data1()

        Try
            cmd.Connection.Open()
            cmd.CommandText = "select Date,Shift,SSEJE,HCOperator,HC_ProcesType,HeatNo,Wheel_No,HC_Temp,Stamping_Status,HC_Mcn_No,HC_Status,HC_XC_Code from  mm_HWLHubCutDetails where HC_ProcesType='" & rbl1.SelectedItem.Value & "' and Date='" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "'  and Shift='" & DDLshift.SelectedItem.Value & "' "
            Using sda As New SqlDataAdapter()
                sda.SelectCommand = cmd
                Using dt As New DataSet()
                    sda.Fill(dt)
                    dg_insert.DataSource = dt
                    dg_insert.DataBind()
                End Using
            End Using
        Catch ex As Exception
            Throw New Exception(ex.Message)
        Finally
            cmd.Connection.Close()
        End Try
        'End If

    End Sub

    Protected Sub TxtHC_NZ_Heat_No_TextChanged(sender As Object, e As EventArgs) Handles TxtHC_NZ_Heat_No.TextChanged
        GetRWwheel()
    End Sub

    Protected Sub DDLHWheelNo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLHWheelNo.SelectedIndexChanged
        Try
            lblMessage.Text = ""
            If Val(DDLHWheelNo.SelectedItem.Value) > 0 Then
                If Val(TxtHheat_No.Text) > 0 Then
                    CheckWheel()
                Else

                    SetFocus(TxtHheat_No)
                End If
            Else
                SetFocus(TxtHheat_No)
            End If
        Catch ee As Exception
            lblMessage.Text = "invalid wheel no"
        End Try
    End Sub


    Private Sub CheckWheel()
        Try
            If RWF.MLDING.CheckWheel(Val(DDLHWheelNo.SelectedItem.Value), Val(TxtHheat_No.Text)) Then
                lblMessage.Text = ""
                ' GetWheelData()
                SetFocus(TxtHTemp)
            Else
                lblMessage.Text = "InValid Wheel/Heat Number !"
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub
    Private Sub SetFocus(ByVal ctrl As Control)
        Dim focusScript As String = "<script language=" & "javascript" & " > " &
       "document.getElementById('" + ctrl.ClientID.ToString.Trim &
       "').focus();</script>"
        ClientScript.RegisterStartupScript(GetType(HotWheelLineHubCut), "FocusScript", focusScript)
    End Sub

    Protected Sub DDLshift_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLshift.SelectedIndexChanged
        Dim sqlstr3 As String
        'sqlstr3 = "select Date,Shift,SSEJE,HC1Operator,HC2Operator,HC3Operator,STMOperator,HC_StartTime,HC_FinishTime,Moulding_WO_No from mm_HoTWheelLineHCHeader where Date='" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "'  and shift='" & DDLshift.SelectedItem.Value & "'"
        sqlstr3 = "select Date,Shift,SSEJE,HC1Operator,HC2Operator,HC3Operator,STMOperator,HC_StartTime,HC_FinishTime,Moulding_WO_No from mm_HWLHCHeader where Date='" & Format(CDate(TxtDate.Text), "MM/dd/yyyy") & "'  and shift='" & DDLshift.SelectedItem.Value & "'"
        Call BindDataGrid(sqlstr3)
    End Sub

    Private Sub BindDataGrid(ByVal strArg As String)

        Dim objCmd As SqlCommand
        Dim objDr As SqlDataReader

        If con.State = ConnectionState.Closed Then
            con.Open()
        Else
            con.Close()
            con.Open()
        End If
        Try
            objCmd = New SqlCommand(strArg, con)
            objDr = objCmd.ExecuteReader()
            Dim arr() As String
            dghotwheelineHCheader.DataSource = arr
            dghotwheelineHCheader.DataBind()
            dghotwheelineHCheader.DataSource = objDr
            dghotwheelineHCheader.DataBind()
        Catch exp As SqlException
            strsql = exp.StackTrace
            Label2.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strsql = exp.StackTrace
            Label2.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message
        End Try

        con.Close()

    End Sub

    Private Sub dghotwheelineHCheader_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles dghotwheelineHCheader.ItemCommand
        i = e.Item.ItemIndex()
    End Sub

    Protected Sub dghotwheelineHCheader_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dghotwheelineHCheader.SelectedIndexChanged
        dghotwheelineHCheader.SelectedIndex = i
        TxtSSEJE.Text = Trim(dghotwheelineHCheader.Items(i).Cells(3).Text)
        TxtHC1Oper.Text = Trim(dghotwheelineHCheader.Items(i).Cells(4).Text)
        TxtHC2Oper.Text = Trim(dghotwheelineHCheader.Items(i).Cells(5).Text)
        TxtHC3Oper.Text = Trim(dghotwheelineHCheader.Items(i).Cells(6).Text)
        TxtSTMOper.Text = Trim(dghotwheelineHCheader.Items(i).Cells(7).Text)
        TxtStart_Time.Text = Trim(dghotwheelineHCheader.Items(i).Cells(8).Text).Substring(Trim(dghotwheelineHCheader.Items(i).Cells(8).Text).Length - 5, 5)
        TxtFinish_Time.Text = Trim(dghotwheelineHCheader.Items(i).Cells(9).Text).Substring(Trim(dghotwheelineHCheader.Items(i).Cells(9).Text).Length - 5, 5)
        TxtMouldWO.Text = dghotwheelineHCheader.Items(i).Cells(10).Text

    End Sub
End Class