Imports Microsoft.ApplicationBlocks.Data
Imports System.Data.SqlClient
Imports System.Data
Imports System.DateTime

Public Class HWLSPG
    Inherits System.Web.UI.Page
    Protected WithEvents Dd1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtSSEJE As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtMCOperator As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtMCOperator1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtSPG1Oper As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtSPG2Oper As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtSPG3Oper As System.Web.UI.WebControls.TextBox
    Protected WithEvents TxtSPG4Oper As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdate As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLshift As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtmould As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtheat_no As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtstart_time As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtfinish_time As System.Web.UI.WebControls.TextBox
    Protected WithEvents DropDownList1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Txttemp As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLheatmcno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLheat_status As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLheatXC_code As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Txtheat_no1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtstrt_time As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtfin_time As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtwheel_no As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txttmp As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLremcno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLrestatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLrexccode As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DDLSPG As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Txtspgrindheat_no As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLgrindmc As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Txtspgrindwhl_no As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtgrind As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtspg1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtspg2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtspg3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtspg4 As System.Web.UI.WebControls.TextBox
    Protected WithEvents DDLStpipe As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Txtstheatno As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtstwhlno As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtstpipe As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txtremark As System.Web.UI.WebControls.TextBox
    Protected WithEvents Btnsave As System.Web.UI.WebControls.Button
    Protected WithEvents BtnSHeader As System.Web.UI.WebControls.Button
    Protected WithEvents Btnclear As System.Web.UI.WebControls.Button
    Protected WithEvents Btnexit As System.Web.UI.WebControls.Button
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents rbl1 As System.Web.UI.WebControls.RadioButtonList
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
            DDLStpipe.Items.FindByText("N").Selected = True
            DDLStpipe_SelectedIndexChanged(sender, e)
            DDLSPG.Items.FindByText("N").Selected = True
            DDLSPG_SelectedIndexChanged(sender, e)

        End If

        If Page.IsPostBack = False Then
            getDateShift()
            Try

                SetScreen()
            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try
        End If

        GetHeatWoNo()

        DDLshift_SelectedIndexChanged(sender, e)
        'Txtwhl_no.Text = ""
        ' getDateShift()

    End Sub

    Private Sub SetScreen()

        Panel1.Visible = False
        Panel2.Visible = False
        'Panel4.Visible = False
        Txtheat_no.Text = RWF.tables.GetLatestHeathotwheelline
        Txtspgrindheat_no.Text = RWF.tables.GetLatestHeathotwheellife
        Txtstheatno.Text = RWF.tables.GetLatestHeathotwheellife1
        GetHeatWoNo()
        lblMessage.Text = ""
        'Txtwhl_no.Text = ""
        Getwheel2()
        Getwheel()
        Getwheel1()
        Try
            If rbl1.SelectedItem.Value = "heat" Then
                Panel1.Visible = True
                Panel2.Visible = False
                Panel5.Visible = False
                Panel4.Visible = False
                Panel7.Visible = False
                Label1.Text = ""
                Txtremark.Text = ""
            ElseIf rbl1.SelectedItem.Value = "rework" Then
                Panel1.Visible = False
                Panel2.Visible = True
                Panel6.Visible = False
                Panel4.Visible = False
                Panel7.Visible = False
                txtmould.Text = ""
                Label1.Text = ""
                Txtremark.Text = ""
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub


    Protected Sub Btnsave_Click(sender As Object, e As EventArgs) Handles Btnsave.Click

        Dim Done As Boolean
        Dim Done1 As Boolean
        Try
            If (rbl1.SelectedItem.Value = "heat" And DDLheatmcno.SelectedItem.Value <> "select") Then
                Done = save()
                Done1 = save1()
                lblMessage.Text = ""
                Panel7.Visible = True
                show_data()
            ElseIf (rbl1.SelectedItem.Value = "rework" And DDLremcno.SelectedItem.Value <> "select") Then
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
        GetHeatWoNo()
        'getDateShift()
    End Sub

    Public Function save()

        Dim done As Boolean
        Dim aa As Integer

        aa = Autogenerate_idd()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj

        If (rbl1.SelectedItem.Value = "heat") Then
            cmd.CommandText = "Insert INTO mm_hotwheelline_spgnew(date,shift,SSEJE,MCoperator,process_type,heatno,wheel_no,spg_temp,spg_mc_no,spg_status,spg_xc_code,remark)
                VALUES('" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "', '" & DDLshift.SelectedItem.Value & "' , '" & txtSSEJE.Text & "', '" & TxtMCOperator.Text & "','" & rbl1.SelectedItem.Value & "',
                '" & Txtheat_no.Text & "',  '" & DropDownList1.SelectedItem.Value & "','" & Txttemp.Text & "','" & DDLheatmcno.SelectedItem.Value & "', 
                 '" & DDLheat_status.SelectedItem.Value & "', '" & DDLheatXC_code.SelectedItem.Value & "', '" & Txtremark.Text & "')"

        ElseIf (rbl1.SelectedItem.Value = "rework") Then
            cmd.CommandText = "Insert INTO mm_hotwheelline_spgnew(date,shift,SSEJE,MCoperator,process_type,heatno,wheel_no,spg_temp,spg_mc_no,spg_status,spg_xc_code,remark)
                 VALUES ('" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "', '" & DDLshift.SelectedItem.Value & "' , '" & txtSSEJE.Text & "','" & TxtMCOperator1.Text & "', '" & rbl1.SelectedItem.Value & "',
                 '" & Txtheat_no1.Text & "', '" & Txtwheel_no.Text & "', '" & Txttmp.Text & "','" & DDLremcno.SelectedItem.Value & "', '" & DDLrestatus.SelectedItem.Value & "',
                 '" & DDLrexccode.SelectedItem.Value & "', '" & Txtremark.Text & "')"

            'If (rbl1.SelectedItem.Value = "heat") Then
            '    cmd.CommandText = "Insert INTO mm_hotwheelline_spg(date,shift,SSEJE,MCoperator,process_type,heat_heatno,heat_wheel_no,heat_temp,heat_mc_no,heat_status,heat_xc_code,remark)
            '        VALUES('" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "', '" & DDLshift.SelectedItem.Value & "' , '" & txtSSEJE.Text & "', '" & TxtMCOperator.Text & "','" & rbl1.SelectedItem.Value & "',
            '        '" & Txtheat_no.Text & "',  '" & DropDownList1.SelectedItem.Value & "',
            '        '" & Txttemp.Text & "', '" & DDLheatmcno.SelectedItem.Value & "', '" & DDLheat_status.SelectedItem.Value & "', '" & DDLheatXC_code.SelectedItem.Value & "', 
            '         '" & Txtremark.Text & "')"

            'ElseIf (rbl1.SelectedItem.Value = "rework") Then
            '    cmd.CommandText = "Insert INTO mm_hotwheelline_spg(date,shift,SSEJE,process_type,MCoperator1,rework_heatno,rework_wheel_no,rework_temp,rework_mc_no,rework_status,rework_xc_code,remark)
            '         VALUES ('" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "', '" & DDLshift.SelectedItem.Value & "' , '" & txtSSEJE.Text & "', '" & rbl1.SelectedItem.Value & "','" & TxtMCOperator1.Text & "',
            '         '" & Txtheat_no1.Text & "', '" & Txtwheel_no.Text & "', '" & Txttmp.Text & "','" & DDLremcno.SelectedItem.Value & "', '" & DDLrestatus.SelectedItem.Value & "',
            '                     '" & DDLrexccode.SelectedItem.Value & "', '" & Txtremark.Text & "')"

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
        Autogenerate_id()
        DDLheatmcno.SelectedIndex = 0
        DDLremcno.SelectedIndex = 0
        Return done

    End Function

    Public Function save1()

        Dim done1 As Boolean
        Dim aa As Integer

        aa = Autogenerate_idd()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.CommandText = "Insert INTO mm_hotwheellife(Date,process_type, SPG_grinding_wheel_replaced, SPG_heat_no, SPG_mc_no, SPG_wheel_no, SPG1, SPG2, SPG3, SPG4, Stopper_Pipe_Cutting_Wheels_replaced, ST_Pipe_heat_no, ST_Pipe_wheel_no, ST_Pipe_Cutting_Wheels_Life, ID)
         VALUES('" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "','" & rbl1.SelectedItem.Value & "','" & DDLSPG.SelectedItem.Value & "','" & Txtspgrindheat_no.Text & "',  '" & DDLgrindmc.SelectedItem.Value & "', '" & DropDownList2.SelectedItem.Value & "',  
             '" & Txtspg1.Text & "',  '" & Txtspg2.Text & "', '" & Txtspg3.Text & "', '" & Txtspg4.Text & "', '" & DDLStpipe.SelectedItem.Value & "', '" & Txtstheatno.Text & "', '" & DropDownList4.SelectedItem.Value & "',
                '" & Txtstpipe.Text & "','" & aa & "')"
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
        cmd.CommandText = "Select TOP 1 SPG1 from mm_hotwheellife ORDER BY id DESC"
        If IsDBNull(cmd.ExecuteScalar) Then
            number = 1
            Txtspg1.Text = (number)

        Else

            number = (cmd.ExecuteScalar) + 1
            Txtspg1.Text = number

        End If
        If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
        cmd.Dispose()
        cmd.Connection.Dispose()
    End Sub

    Private Sub Autogenerate_id2()

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim number As Integer
        cmd.CommandText = "Select TOP 1 SPG2 from mm_hotwheellife ORDER BY id DESC"
        If IsDBNull(cmd.ExecuteScalar) Then
            number = 1
            Txtspg2.Text = (number)
        Else

            number = (cmd.ExecuteScalar) + 1
            Txtspg2.Text = number
        End If
        If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
        cmd.Dispose()
        cmd.Connection.Dispose()
    End Sub

    Public Function Autogenerate_idd()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim number As Integer
        cmd.CommandText = "Select Max(id) from mm_hotwheellife "
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


    Private Sub Autogenerate_id3()

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim number As Integer
        cmd.CommandText = "Select TOP 1 SPG3 from mm_hotwheellife ORDER BY id DESC"
        If IsDBNull(cmd.ExecuteScalar) Then
            number = 1
            Txtspg3.Text = (number)
        Else
            number = (cmd.ExecuteScalar) + 1
            Txtspg3.Text = number
        End If
        If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
        cmd.Dispose()
        cmd.Connection.Dispose()
    End Sub

    Private Sub Autogenerate_id4()


        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim number As Integer
        cmd.CommandText = "Select TOP 1 SPG4 from mm_hotwheellife ORDER BY id DESC"
        If IsDBNull(cmd.ExecuteScalar) Then
            number = 1
            Txtspg4.Text = (number)
        Else
            number = (cmd.ExecuteScalar) + 1
            Txtspg4.Text = number
        End If
        If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
        cmd.Dispose()
        cmd.Connection.Dispose()
    End Sub

    Private Sub Autogenerate_id()


        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Dim number1 As Integer
        cmd.CommandText = "Select TOP 1 ST_Pipe_Cutting_Wheels_Life from mm_hotwheellife ORDER BY id DESC"
        If IsDBNull(cmd.ExecuteScalar) Then
            number1 = 1

            Txtstpipe.Text = (number1)
        Else

            number1 = (cmd.ExecuteScalar) + 1

            Txtstpipe.Text = number1

        End If

        If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
        cmd.Dispose()
        cmd.Connection.Dispose()

    End Sub

    Protected Sub Btnclear_Click(sender As Object, e As EventArgs) Handles Btnclear.Click

        TxtMCOperator.Text = ""
        TxtMCOperator1.Text = ""
        txtmould.Text = ""
        Txtheat_no.Text = ""
        'Txtwhl_no.Text = ""
        Txttemp.Text = ""
        Txtheat_no1.Text = ""
        Txtwheel_no.Text = ""
        Txttmp.Text = ""
        Txtspgrindheat_no.Text = ""
        'Txtspgrindwhl_no.Text = ""
        'Txtgrind.Text = ""
        Txtspg1.Text = ""
        Txtspg2.Text = ""
        Txtspg3.Text = ""
        Txtspg4.Text = ""
        Txtstheatno.Text = ""
        'Txtstwhlno.Text = ""
        Txtstpipe.Text = ""
        Txtremark.Text = ""
        Label1.Text = ""

    End Sub

    Protected Sub DDLStpipe_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLStpipe.SelectedIndexChanged

        If (DDLStpipe.SelectedItem.Value = "Y") Then
            Txtstpipe.Text = 1
        Else
            Autogenerate_id()
        End If

    End Sub

    Protected Sub Txtheat_no_TextChanged(sender As Object, e As EventArgs) Handles Txtheat_no.TextChanged
        GetHeatWoNo()
        Getwheel()
        Try
            lblMessage.Text = ""
            If Val(Txtheat_no.Text) > 0 Then
                If Val(DropDownList1.SelectedItem.Text) > 0 Then
                    CheckWheel()
                Else

                    SetFocus(DropDownList1)
                End If
            Else
                SetFocus(DropDownList1)
            End If
        Catch ee As Exception
            lblMessage.Text = "invalid heat no"

        End Try
    End Sub
    Public Function GetHeatWoNo()
        Dim dt As New DataTable()
        dt = RWF.tables.getHeatWo(Val(Txtheat_no.Text))
        If dt.Rows.Count > 0 Then
            txtmould.Text = IIf(IsDBNull(dt.Rows(0)("number")), "", dt.Rows(0)("number"))

        Else
            txtmould.Text = ""

        End If
        dt = Nothing
        Return dt
    End Function

    Public Function GetHeatWoNo1()
        Dim dt As New DataTable()
        dt = RWF.tables.getHeatWo(Val(Txtheat_no1.Text))
        If dt.Rows.Count > 0 Then
            txtmould.Text = IIf(IsDBNull(dt.Rows(0)("number")), "", dt.Rows(0)("number"))

        Else
            txtmould.Text = ""

        End If
        dt = Nothing
        Return dt
    End Function

    Public Function Getwheel()

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Try
            cmd.Connection.Open()
            Dim heat As Integer = Convert.ToInt64(Txtheat_no.Text)
            cmd.CommandText = "Select engraved_number from mm_pouring  where heat_number =@heat"
            cmd.Parameters.AddWithValue("@heat", heat)
            DropDownList1.DataSource = cmd.ExecuteReader()
            DropDownList1.DataTextField = "engraved_number"
            DropDownList1.DataBind()

        Catch exp As Exception
            Label1.Text = "please fill heat number!!"
        End Try
    End Function

    Public Function Getwheel1()

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        Try
            Dim heat As Integer = Convert.ToInt64(Txtspgrindheat_no.Text)
            cmd.CommandText = "Select engraved_number from mm_pouring  where heat_number =@heat"
            cmd.Parameters.AddWithValue("@heat", heat)
            DropDownList2.DataSource = cmd.ExecuteReader()
            DropDownList2.DataTextField = "engraved_number"
            DropDownList2.DataBind()
        Catch exp As Exception
            Label1.Text = "please fill heat number!!"
        End Try
    End Function

    Public Function Getwheel2()

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Try
            cmd.Connection.Open()
            Dim heat As Integer = Convert.ToInt64(Txtstheatno.Text)
            cmd.CommandText = "Select engraved_number from mm_pouring  where heat_number =@heat"
            cmd.Parameters.AddWithValue("@heat", heat)
            DropDownList4.DataSource = cmd.ExecuteReader()
            DropDownList4.DataTextField = "engraved_number"
            DropDownList4.DataBind()

        Catch exp As Exception
            Label1.Text = "please fill heat number!!"
        End Try

    End Function

    Public Sub getDateShift()
        If Now.Hour = 0 OrElse Now.Hour = 1 OrElse Now.Hour = 2 OrElse Now.Hour = 3 OrElse Now.Hour = 4 OrElse Now.Hour = 5 Then
            txtdate.Text = CDate(Now.Date.AddDays(-1))
        Else
            txtdate.Text = CDate(Now.Date)
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


    Protected Sub DDLSPG_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLSPG.SelectedIndexChanged

        'If (DDLSPG.SelectedItem.Value = "Y") Then
        If (DDLgrindmc.SelectedItem.Value = "1") Then
            If (DDLSPG.SelectedItem.Value = "Y") Then
                'DDLSPG.Items.FindByText("N").Selected = True
                Txtspg1.Text = 1
                Autogenerate_id2()
                Autogenerate_id3()
                Autogenerate_id4()
                'Txtspg3.Text = ""
                'Txtspg4.Text = ""
            End If
        ElseIf (DDLgrindmc.SelectedItem.Value = "2") Then
            If (DDLSPG.SelectedItem.Value = "Y") Then
                'Txtspg1.Text = ""
                'DDLSPG.Items.FindByText("N").Selected = True
                Txtspg2.Text = 1
                Autogenerate_id1()
                Autogenerate_id3()
                Autogenerate_id4()
                'Txtspg3.Text = ""
                'Txtspg4.Text = ""
            End If
        ElseIf (DDLgrindmc.SelectedItem.Value = "3") Then
            If (DDLSPG.SelectedItem.Value = "Y") Then
                'Txtspg1.Text = ""
                'Txtspg2.Text = ""
                Txtspg3.Text = 1
                Autogenerate_id1()
                Autogenerate_id2()
                Autogenerate_id4()
                'Txtspg4.Text = ""
            End If
        ElseIf (DDLgrindmc.SelectedItem.Value = "4") Then
            If (DDLSPG.SelectedItem.Value = "Y") Then
                'Txtspg1.Text = ""
                Autogenerate_id1()
                Autogenerate_id2()
                Autogenerate_id3()
                'Txtspg2.Text = ""
                'Txtspg3.Text = ""
                Txtspg4.Text = 1
            End If
            'ElseIf (DDLremcno.SelectedItem.Value = "1") Then
            '    If (DDLSPG.SelectedItem.Value = "Y") Then
            '        Txtspg1.Text = 1
            '        Autogenerate_id2()
            '        Autogenerate_id3()
            '        Autogenerate_id4()

            '        'Txtspg3.Text = ""
            '        'Txtspg4.Text = ""
            '    End If
            'ElseIf (DDLremcno.SelectedItem.Value = "2") Then
            '    If (DDLSPG.SelectedItem.Value = "Y") Then
            '        'Txtspg1.Text = ""
            '        Txtspg2.Text = 1
            '        Autogenerate_id1()
            '        Autogenerate_id3()
            '        Autogenerate_id4()
            '        'Txtspg3.Text = ""
            '        'Txtspg4.Text = ""
            '    End If
            'ElseIf (DDLremcno.SelectedItem.Value = "3") Then
            '    If (DDLSPG.SelectedItem.Value = "Y") Then
            '        'Txtspg1.Text = ""
            '        'Txtspg2.Text = ""
            '        Txtspg3.Text = 1
            '        Autogenerate_id1()
            '        Autogenerate_id2()
            '        Autogenerate_id4()
            '        'Txtspg4.Text = ""
            '    End If
            'ElseIf (DDLremcno.SelectedItem.Value = "4") Then
            '    If (DDLSPG.SelectedItem.Value = "Y") Then
            '            'Txtspg1.Text = ""
            '            Autogenerate_id1()
            '            Autogenerate_id2()
            '            Autogenerate_id3()
            '            'Txtspg2.Text = ""
            '            'Txtspg3.Text = ""
            '            Txtspg4.Text = 1
            '        End If

        End If


    End Sub

    Protected Sub Txtheat_no1_TextChanged(sender As Object, e As EventArgs) Handles Txtheat_no1.TextChanged
        GetHeatWoNo1()
    End Sub

    Protected Sub DDLheat_status_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLheat_status.SelectedIndexChanged
        If (DDLheat_status.SelectedItem.Value = "NOT OK") Then
            Panel5.Visible = True
        Else
            Panel5.Visible = False
            DDLheatXC_code.SelectedValue = ""

        End If
    End Sub

    Protected Sub DDLrestatus_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLrestatus.SelectedIndexChanged
        If (DDLrestatus.SelectedItem.Value = "NOT OK") Then
            Panel6.Visible = True
        Else
            Panel6.Visible = False
            DDLrexccode.SelectedValue = ""
        End If
    End Sub

    Protected Sub DDLremcno_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLremcno.SelectedIndexChanged
        If (DDLremcno.SelectedItem.Value = "1") Then

            Autogenerate_id1()
            TxtMCOperator1.Text = TxtSPG1Oper.Text
            Panel4.Visible = True
            Txtspg2.Text = ""
            Txtspg3.Text = ""
            Txtspg4.Text = ""
        ElseIf (DDLremcno.SelectedItem.Value = "2") Then
            Panel4.Visible = True

            Autogenerate_id2()
            TxtMCOperator1.Text = TxtSPG2Oper.Text
            Txtspg1.Text = ""
            Txtspg3.Text = ""
            Txtspg4.Text = ""
        ElseIf (DDLremcno.SelectedItem.Value = "3") Then
            Panel4.Visible = True
            Autogenerate_id3()
            TxtMCOperator1.Text = TxtSPG3Oper.Text
            Txtspg1.Text = ""
            Txtspg2.Text = ""
            Txtspg4.Text = ""
        ElseIf (DDLremcno.SelectedItem.Value = "4") Then
            Panel4.Visible = True
            Autogenerate_id4()
            TxtMCOperator1.Text = TxtSPG4Oper.Text
            Txtspg1.Text = ""
            Txtspg2.Text = ""
            Txtspg3.Text = ""
        Else
            Panel4.Visible = False

        End If
    End Sub

    Protected Sub DDLheatmcno_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLheatmcno.SelectedIndexChanged

        If (DDLheatmcno.SelectedItem.Value = "1") Then
            'If (DDLSPG.SelectedItem.Value = "N") Then
            TxtMCOperator.Text = TxtSPG1Oper.Text
            Panel4.Visible = True

            Autogenerate_id1()
            Txtspg2.Text = ""
            Txtspg3.Text = ""
            Txtspg4.Text = ""

            DDLSPG.SelectedItem.Value = "N"

        ElseIf (DDLheatmcno.SelectedItem.Value = "2") Then
            TxtMCOperator.Text = TxtSPG2Oper.Text
            Panel4.Visible = True

            Autogenerate_id2()
            Txtspg1.Text = ""
            Txtspg3.Text = ""
            Txtspg4.Text = ""
            DDLSPG.SelectedItem.Value = "N"
        ElseIf (DDLheatmcno.SelectedItem.Value = "3") Then
            TxtMCOperator.Text = TxtSPG3Oper.Text
            Panel4.Visible = True
            Autogenerate_id3()
            Txtspg1.Text = ""
            Txtspg2.Text = ""
            Txtspg4.Text = ""
            DDLSPG.SelectedItem.Value = "N"
        ElseIf (DDLheatmcno.SelectedItem.Value = "4") Then
            TxtMCOperator.Text = TxtSPG4Oper.Text
            Panel4.Visible = True
            Autogenerate_id4()
            Txtspg1.Text = ""
            Txtspg2.Text = ""
            Txtspg3.Text = ""

            DDLSPG.SelectedItem.Value = "N"


        Else
            Panel4.Visible = False
        End If
    End Sub

    Protected Sub Txtspgrindheat_no_TextChanged(sender As Object, e As EventArgs) Handles Txtspgrindheat_no.TextChanged
        Getwheel1()
    End Sub

    Protected Sub Txtstheatno_TextChanged(sender As Object, e As EventArgs) Handles Txtstheatno.TextChanged
        Getwheel2()
    End Sub

    Private Sub show_data()

        Try
            cmd.Connection.Open()
            cmd.CommandText = "select process_type,heatno,wheel_no,spg_temp,spg_mc_no,spg_status,spg_xc_code,MCoperator from mm_hotwheelline_spgnew where process_type='" & rbl1.SelectedItem.Value & "' and date='" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "'  and shift='" & DDLshift.SelectedItem.Value & "' "
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
            cmd.CommandText = "select process_type,heatno,wheel_no,spg_temp,spg_mc_no,spg_status,spg_xc_code,MCoperator from mm_hotwheelline_spgnew where process_type='" & rbl1.SelectedItem.Value & "' and date='" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "'  and shift='" & DDLshift.SelectedItem.Value & "'"
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

    'Private Sub show_griddata()

    '    Try
    '        cmd.Connection.Open()
    '        cmd.CommandText = "select process_type,heatno,wheel_no,spg_temp,spg_mc_no,spg_status,spg_xc_code,MCoperator from mm_hotwheelline_spgnew where date='" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "' order by process_type "
    '        Using sda As New SqlDataAdapter()
    '            sda.SelectCommand = cmd
    '            Using dt As New DataSet()
    '                sda.Fill(dt)
    '                dg_insert.DataSource = dt
    '                dg_insert.DataBind()
    '            End Using
    '        End Using
    '    Catch ex As Exception
    '        Throw New Exception(ex.Message)
    '    Finally
    '        cmd.Connection.Close()
    '    End Try
    'End Sub

    Protected Sub BtnSHeader_Click(sender As Object, e As EventArgs) Handles BtnSHeader.Click

        If BtnSHeader.Text = "SAVE DETAILS" Then


            con.Open()

            If con.State = ConnectionState.Closed Then
                con.Open()
            End If

            'Declaring parameters and assigning for Normalising  table
            Dim sqlPara(11) As SqlParameter
            sqlPara(0) = New SqlParameter("@Txtheat_no", Trim(Txtheat_no.Text))
            sqlPara(1) = New SqlParameter("@txtSSEJE", Trim(txtSSEJE.Text))
            sqlPara(2) = New SqlParameter("@txtmould", Trim(txtmould.Text))
            sqlPara(3) = New SqlParameter("@TxtSPG1Oper", Trim(TxtSPG1Oper.Text))
            sqlPara(4) = New SqlParameter("@TxtSPG2Oper", Trim(TxtSPG2Oper.Text))
            sqlPara(5) = New SqlParameter("@txtdate", Format(CDate(txtdate.Text), "MM/dd/yyyy"))
            sqlPara(6) = New SqlParameter("@TxtSPG3Oper", Trim(TxtSPG3Oper.Text))
            sqlPara(7) = New SqlParameter("@TxtSPG4Oper", Trim(TxtSPG4Oper.Text))
            sqlPara(8) = New SqlParameter("@Txtstart_time", Trim(Txtstart_time.Text))
            sqlPara(9) = New SqlParameter("@Txtfinish_time", Trim(Txtfinish_time.Text))
            sqlPara(10) = New SqlParameter("@DDLshift", Trim(DDLshift.SelectedItem.Value))
            sqlPara(11) = New SqlParameter("@Txtheat_no1", Trim(Txtheat_no1.Text))


            Dim sqlstr As String = "Insert INTO mm_HoTWheelLineHeader(Date,Shift,SSEJE,StartTime,FinishTime,heat_heatno,rework_heatno,Moulding_WO_No,SPG1Operator,SPG2Operator,SPG3Operator,SPG4Operator)  
          values("
            sqlstr &= "@txtdate,@DDLshift,@txtSSEJE,@Txtstart_time,@Txtfinish_time,@Txtheat_no,@Txtheat_no1,@txtmould,@TxtSPG1Oper,@TxtSPG2Oper,@TxtSPG3Oper,@TxtSPG4Oper)"

            Try



                If con.State = ConnectionState.Closed Then
                    con.Open()
                End If
                SqlHelper.ExecuteNonQuery(con, CommandType.Text, sqlstr, sqlPara)
                '  BtnSHeader.Text = "add"
                Label2.Text = "HoTWheelLineHeader Details Added"
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


            sqlPara(0) = New SqlParameter("@txtSSEJE", Trim(txtSSEJE.Text))
            sqlPara(1) = New SqlParameter("@txtmould", Trim(txtmould.Text))
            sqlPara(2) = New SqlParameter("@TxtSPG1Oper", Trim(TxtSPG1Oper.Text))
            sqlPara(3) = New SqlParameter("@TxtSPG2Oper", Trim(TxtSPG2Oper.Text))
            sqlPara(4) = New SqlParameter("@TxtSPG3Oper", Trim(TxtSPG3Oper.Text))
            sqlPara(5) = New SqlParameter("@TxtSPG4Oper", Trim(TxtSPG4Oper.Text))
            sqlPara(6) = New SqlParameter("@Txtstart_time", Trim(Txtstart_time.Text))
            sqlPara(7) = New SqlParameter("@Txtfinish_time", Trim(Txtfinish_time.Text))



            Try
                strsql = "UPDATE mm_HoTWheelLineHeader SET SSEJE=@txtSSEJE,StartTime=@Txtstart_time,FinishTime=@Txtfinish_time,Moulding_WO_No=@txtmould,SPG1Operator=@TxtSPG1Oper,SPG2Operator=@TxtSPG2Oper,SPG3Operator=@TxtSPG3Oper,SPG4Operator=@TxtSPG4Oper WHERE Date ='" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "' AND  Shift = '" & DDLshift.SelectedItem.Value & "' "


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
    Protected Sub txtSSEJE_TextChanged(sender As Object, e As EventArgs) Handles txtSSEJE.TextChanged
        txtSSEJE.Text = txtSSEJE.Text.ToUpper
    End Sub
    Protected Sub DDLshift_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DDLshift.SelectedIndexChanged
        Dim sqlstr3 As String
        sqlstr3 = "select Date,Shift,SSEJE,StartTime,FinishTime,Moulding_WO_No,SPG1Operator,SPG2Operator,SPG3Operator,SPG4Operator from mm_HoTWheelLineHeader where Date='" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "'  and shift='" & DDLshift.SelectedItem.Value & "'"
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
            dghotwheelineheader.DataSource = arr
            dghotwheelineheader.DataBind()
            dghotwheelineheader.DataSource = objDr
            dghotwheelineheader.DataBind()
        Catch exp As SqlException
            strsql = exp.StackTrace
            Label2.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strsql = exp.StackTrace
            Label2.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message
        End Try

        con.Close()

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Try
            lblMessage.Text = ""
            If Val(DropDownList1.SelectedItem.Value) > 0 Then
                If Val(Txtheat_no.Text) > 0 Then
                    CheckWheel()
                Else

                    SetFocus(Txtheat_no)
                End If
            Else
                SetFocus(Txtheat_no)
            End If
        Catch ee As Exception
            lblMessage.Text = "invalid wheel no"
        End Try
    End Sub


    Private Sub CheckWheel()
        Try
            If RWF.MLDING.CheckWheel(Val(DropDownList1.SelectedItem.Value), Val(Txtheat_no.Text)) Then
                lblMessage.Text = ""
                ' GetWheelData()
                SetFocus(Txttemp)
            Else
                lblMessage.Text = "InValid Wheel/Heat Number !"
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub

    Protected Sub dghotwheelineheader_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dghotwheelineheader.SelectedIndexChanged
        dghotwheelineheader.SelectedIndex = i
        txtSSEJE.Text = Trim(dghotwheelineheader.Items(i).Cells(3).Text)
        Txtstart_time.Text = Trim(dghotwheelineheader.Items(i).Cells(4).Text).Substring(Trim(dghotwheelineheader.Items(i).Cells(4).Text).Length - 5, 5)
        Txtfinish_time.Text = Trim(dghotwheelineheader.Items(i).Cells(5).Text).Substring(Trim(dghotwheelineheader.Items(i).Cells(5).Text).Length - 5, 5)
        txtmould.Text = dghotwheelineheader.Items(i).Cells(6).Text
        TxtSPG1Oper.Text = dghotwheelineheader.Items(i).Cells(7).Text
        TxtSPG2Oper.Text = dghotwheelineheader.Items(i).Cells(8).Text
        TxtSPG3Oper.Text = dghotwheelineheader.Items(i).Cells(9).Text
        TxtSPG4Oper.Text = dghotwheelineheader.Items(i).Cells(10).Text

    End Sub

    Private Sub dghotwheelineheader_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles dghotwheelineheader.ItemCommand
        i = e.Item.ItemIndex()
    End Sub



    Private Sub SetFocus(ByVal ctrl As Control)
        Dim focusScript As String = "<script language=" & "javascript" & " > " &
       "document.getElementById('" + ctrl.ClientID.ToString.Trim &
       "').focus();</script>"
        ClientScript.RegisterStartupScript(GetType(HWLSPG), "FocusScript", focusScript)
    End Sub

    'Protected Sub txtdate_TextChanged(sender As Object, e As EventArgs) Handles txtdate.TextChanged
    '    show_griddata()
    'End Sub
End Class