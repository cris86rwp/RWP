Imports System.Data.SqlClient
Imports System.Data
Imports System.Windows


Public Class HolidayNew
    Inherits System.Web.UI.Page
    Protected WithEvents txtFromDate As System.Web.UI.WebControls.TextBox

    Protected WithEvents txtDays As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtToDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents chkMEME As System.Web.UI.WebControls.CheckBox
    Protected WithEvents chkMOPO As System.Web.UI.WebControls.CheckBox
    Protected WithEvents chkWFPS As System.Web.UI.WebControls.CheckBox
    Protected WithEvents chkAMA As System.Web.UI.WebControls.CheckBox
    Protected WithEvents btnSave As System.Web.UI.WebControls.Button
    Protected WithEvents dgHolidays As System.Web.UI.WebControls.DataGrid
    Protected WithEvents btnDelete As System.Web.UI.WebControls.Button
    Protected WithEvents ddlReasons As System.Web.UI.WebControls.DropDownList
    ' Protected WithEvents chkSundays As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents DataGrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents DataGrid2 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents DataGrid3 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents txtReason As System.Web.UI.WebControls.TextBox
    Protected WithEvents Dd1 As System.Web.UI.WebControls.DropDownList
    '  Protected WithEvents ddloption As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnSunday As System.Web.UI.WebControls.Button
    Protected WithEvents txtLetter As System.Web.UI.WebControls.TextBox
    Protected WithEvents lbl1 As System.Web.UI.WebControls.Label
    Protected WithEvents chkShop As System.Web.UI.WebControls.CheckBoxList
#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Shared themeValue As String

    Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
    Private con As New SqlConnection(ConfigurationManager.AppSettings("con"))
    Dim i As Integer
    Dim strsql As String


    Public Sub New()

        AddHandler PreInit, New EventHandler(AddressOf Page_PreInit)
    End Sub

    Private Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs)

        Page.Theme = themeValue
    End Sub


    Protected Sub dd1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        themeValue = Dd1.SelectedItem.Value
        Response.Redirect(Request.Url.ToString())

    End Sub

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here

        If Page.IsPostBack = False Then
            Session("UserID") = "073314"
            'Session("UserID") = "078844"
            PopulateReasons()
            Try
                If IsNothing(Session("UserID")) Then
                    Response.Redirect(Page.ErrorPage)
                    Exit Sub
                End If
            Catch exp As Exception
                Response.Redirect(Page.ErrorPage)
                Exit Sub
            End Try
            '  PopulateGrid()
            Setfocus(txtLetter)

        End If
    End Sub
    Private Sub chkSelect_selectedIndexchanged(sender As Object, e As EventArgs) Handles chkSelect.CheckedChanged
        If chkSelect.Checked Then
            For Each li As ListItem In chkShop.Items
                li.Selected = True
            Next
        Else
            For Each li As ListItem In chkShop.Items
                li.Selected = False
            Next
        End If
    End Sub


    Private Sub PopulateReasons()
        Dim dt As DataTable
        Try
            dt = PCO.tables.GetHolidayReason
            ddlReasons.DataSource = dt
            ddlReasons.DataTextField = dt.Columns("HolidayReason").ColumnName
            ddlReasons.DataValueField = dt.Columns("HolidayReason").ColumnName
            ddlReasons.DataBind()
            ddlReasons.Items.Insert(0, "Select")
            btnSave.Enabled = True
            btnDelete.Enabled = True
        Catch exp As Exception
            ddlReasons.Items.Clear()
            lblMessage.Text = exp.Message
            btnSave.Enabled = False
            btnDelete.Enabled = False
        Finally
#Disable Warning BC42104 ' Variable is used before it has been assigned a value
            dt.Dispose()
#Enable Warning BC42104 ' Variable is used before it has been assigned a value
            dt = Nothing
        End Try
    End Sub
    Private Sub PopulateGrid()
        Dim ds As DataSet
        Dim Dt As Boolean
        Try
            If txtFromDate.Text.Trim = "" Then
                txtFromDate.Text = Format(CDate(Now.Date), "dd/MM/yyyy")
                Dt = True
            End If
            ds = PCO.tables.GetHolidayList1(CDate(txtFromDate.Text.Trim), chkMEME.Checked, chkMOPO.Checked, chkWFPS.Checked, chkAMA.Checked)
            If Dt Then
                txtFromDate.Text = ""
            End If
            DataGrid1.DataSource = ds.Tables(0)
            DataGrid1.DataBind()
            DataGrid2.DataSource = ds.Tables(1)
            DataGrid2.DataBind()
            DataGrid3.DataSource = ds.Tables(2)
            DataGrid3.DataBind()
            dgHolidays.DataSource = PCO.tables.GetHolidayList(txtToDate.Text.Trim, txtFromDate.Text.Trim, ddlReasons.SelectedItem.Value, chkMEME.Checked, chkMOPO.Checked, chkWFPS.Checked, chkAMA.Checked)
            dgHolidays.DataBind()
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub
    Private Sub Setfocus(ByVal ctrl As Control)
        'Define the JavaScript function for the specefied control.
        Dim focusScript As String = "<script language = 'javascript'>" &
        "document.getElementById('" + ctrl.ClientID &
        "').focus();</script>"
        'Add the JavaScript code to the page.
        Page.RegisterStartupScript("FocusScript", focusScript)
        ' MarkControlsAsSelected(ctrl)
    End Sub
    Private Sub txtFromDate_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtFromDate.TextChanged
        lblMessage.Text = ""
        txtDays.Text = ""
        txtToDate.Text = ""
        If CheckDate(txtFromDate.Text) = False Then
            Setfocus(txtFromDate)
            txtFromDate.Text = ""
        Else
            Setfocus(txtDays)
            PopulateGrid()
        End If
    End Sub
    Private Function CheckDate(ByVal sDate As String) As Boolean
        Dim dt1 As Date
        CheckDate = True
        Try
            dt1 = CDate(sDate)
            If dt1 < dt1.Today.Date Then
                lblMessage.Text = " Previous Date : " & txtFromDate.Text.Trim & " "
                CheckDate = False
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message & ":" & txtFromDate.Text
            CheckDate = False
        End Try
        dt1 = Nothing
    End Function
    Private Sub txtDays_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtDays.TextChanged
        lblMessage.Text = ""
        Setfocus(txtToDate)
        Dim dt1 As Date
        If IsNumeric(txtDays.Text) Then
            If Val(txtDays.Text) > 0 Then
                txtToDate.Text = ""
                If Val(txtDays.Text) = 1 Then
                    txtToDate.Text = Format(CDate(txtFromDate.Text), "dd/MM/yyyy")
                Else
                    dt1 = CDate(txtFromDate.Text)
                    dt1 = dt1.AddDays(Val(txtDays.Text) - 1)
                    txtToDate.Text = Format(dt1, "dd/MM/yyyy")
                    PopulateGrid()
                End If
            End If
        Else
            lblMessage.Text = "InValid Days : " & txtDays.Text
            txtDays.Text = ""
            Setfocus(txtDays)
        End If
        dt1 = Nothing
    End Sub
    Private Sub txtToDate_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtToDate.TextChanged
        lblMessage.Text = ""
        Setfocus(chkMEME)
        txtDays.Text = ""
        If CheckDate(txtToDate.Text) = False Then
            txtToDate.Text = ""
            Exit Sub
        End If
        Dim dt1, dt2 As Date
        dt1 = CDate(txtFromDate.Text)
        dt2 = CDate(txtToDate.Text)
        txtDays.Text = CType(dt2.Subtract(dt1), System.TimeSpan).Days + 1
        PopulateGrid()
        dt1 = Nothing
        dt2 = Nothing
    End Sub

    Private Sub txtReason_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtReason.TextChanged
        lblMessage.Text = ""
        Setfocus(btnSave)
        If ddlReasonSelected() = False Then
            AddReason()
        End If
        ' txtReason.Text = ddlReasons.SelectedItem.Text
        PopulateGrid()
    End Sub
    Private Function ddlReasonSelected() As Boolean
        Dim i As Byte, blnFound As Boolean
        ddlReasons.ClearSelection()
        If txtReason.Text = "Select" Then
            ddlReasons.SelectedIndex = 0
            ddlReasonSelected = True
            Exit Function
        End If
        For i = 0 To ddlReasons.Items.Count - 1
            If ddlReasons.Items(i).Text.ToLower.Trim = txtReason.Text.ToLower.Trim Then
                ddlReasons.Items(i).Selected = True
                blnFound = True
            End If
        Next
        ddlReasonSelected = blnFound
        i = Nothing
        blnFound = Nothing
    End Function
    Private Sub AddReason()
        If txtReason.Text = "Select" Then
            Exit Sub
        End If
        Dim Done As Boolean
        Try
            Done = New PCO.PCO().AddReason(txtReason.Text.ToUpper.Trim)
        Catch exp As Exception

        End Try
        If Done Then
            PopulateReasons()
            ddlReasonSelected()
        End If
        Done = Nothing
    End Sub
    Private Sub MarkControlsAsSelected(ByRef ctrl As Control)
        txtFromDate.BackColor = System.Drawing.Color.White
        txtDays.BackColor = System.Drawing.Color.White
        txtToDate.BackColor = System.Drawing.Color.White
        chkMEME.BackColor = System.Drawing.Color.White
        chkMOPO.BackColor = System.Drawing.Color.White
        chkWFPS.BackColor = System.Drawing.Color.White
        'chkAMA.BackColor = System.Drawing.Color.White
        ddlReasons.BackColor = System.Drawing.Color.White
        txtReason.BackColor = System.Drawing.Color.White
        Select Case ctrl.ID.ToString
            Case "txtFromDate"
                txtFromDate.BackColor = System.Drawing.Color.GreenYellow
            Case "txtDays"
                txtDays.BackColor = System.Drawing.Color.GreenYellow
            Case "txtToDate"
                txtToDate.BackColor = System.Drawing.Color.GreenYellow
            Case "chkMEME"
                chkMEME.BackColor = System.Drawing.Color.GreenYellow
            Case "chkMOPO"
                chkMOPO.BackColor = System.Drawing.Color.GreenYellow
            Case "chkWFPS"
                chkWFPS.BackColor = System.Drawing.Color.GreenYellow
            'Case "chkAMA"
            '    chkAMA.BackColor = System.Drawing.Color.GreenYellow
            Case "ddlReasons"
                ddlReasons.BackColor = System.Drawing.Color.GreenYellow
            Case "txtReason"
                txtReason.BackColor = System.Drawing.Color.GreenYellow
                'Case "chkSundays"
                '    chkSundays.BackColor = System.Drawing.Color.GreenYellow
        End Select
    End Sub
    Private Function ShopCode(ByVal chk As System.Web.UI.WebControls.CheckBox) As String
        Select Case chk.Text
            Case "Melting"
                ShopCode = "MEME"
            Case "Moulding"
                ShopCode = "MOPO"
            Case "WFP Shop"
                ShopCode = "CLCL"
                'Case "Axle Shop"
                '    ShopCode = "AMA"
            Case Else
                Response.Write("Heavenly Shop found in RWF by you !  Please inform MIS Centre without fail.")
        End Select
    End Function

    Private Sub chkMEME_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles chkMEME.CheckedChanged
        lblMessage.Text = ""
        Setfocus(chkMOPO)
        PopulateGrid()
    End Sub

    Private Sub chkMOPO_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles chkMOPO.CheckedChanged
        lblMessage.Text = ""
        Setfocus(chkWFPS)
        PopulateGrid()
    End Sub

    Private Sub chkWFPS_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles chkWFPS.CheckedChanged
        lblMessage.Text = ""
        Setfocus(chkAMA)
        PopulateGrid()
    End Sub


    Private Sub chkASS_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        lblMessage.Text = ""
        Setfocus(ddlReasons)
        PopulateGrid()
    End Sub

    'Private Sub chkSundays_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles chkSundays.CheckedChanged
    '    lblMessage.Text = ""
    '    txtReason.Text = "SUNDAY"
    '    AddReason()
    '    Setfocus(btnSave)
    'End Sub
    'Private Sub chkAMA_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles chkAMA.CheckedChanged
    '    lblMessage.Text = ""
    '    Setfocus(ddlReasons)
    '    PopulateGrid()
    'End Sub
    Private Sub btnSunday_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSunday.Click
        Dim month As Integer
        'Dim month1 As Integer
        'Dim year1 As Integer
        Dim year As Integer = Now.Year
        For i = 1 To 12
            month = i


            Dim current As New DateTime(year, month, 1)
            Dim ending As DateTime = current.AddMonths(1)



            Dim currDate As Date
            While current < ending

                If current.DayOfWeek = DayOfWeek.Sunday Then
                    currDate = Left(LTrim(current.Date), 5)
                    For Each ListItem In chkShop.Items
                        Dim name_shop As String = Trim(Convert.ToString(ListItem.Value))

                        InsertSundays(currDate, name_shop)
                    Next ListItem

                End If
                current = current.AddDays(1)
            End While
        Next
        'year1 = year + 1
        'For i = 1 To 12
        '    month1 = i


        '    Dim current1 As New DateTime(year1, month1, 1)
        '    Dim ending1 As DateTime = current1.AddMonths(1)



        '    Dim currDate1 As Date
        '    While current1 < ending1

        '        If current1.DayOfWeek = DayOfWeek.Sunday Then
        '            currDate1 = Left(LTrim(current1.Date), 5)
        '            For Each ListItem In chkShop.Items
        '                Dim name_shop As String = Trim(Convert.ToString(ListItem.Value))

        '                InsertSundays(currDate1, name_shop)
        '            Next ListItem

        '        End If
        '        current1 = current1.AddDays(1)
        '    End While
        'Next

    End Sub



    Private Sub InsertSundays(ByVal currDate As Date, ByVal name_shop As String)
        Dim done As Boolean
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()


        Try



            cmd.Parameters.AddWithValue("@name_shop", name_shop)
            cmd.Parameters.AddWithValue("@currDate", currDate)




            cmd.CommandText = "Insert INTO mm_holidaysDemo(Shop,Reason,LDate,NO_of_Days,Flag)  
                         VALUES (@name_shop , 'SUNDAY',@currDate , '1','0')"












            If cmd.ExecuteNonQuery() = 1 Then done = True

        Catch exp As SqlException
            strsql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strsql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message
        End Try

        cmd.Connection.Close()

        If done Then
            lblMessage.Text = "All Sundays of the year are saved !"
        End If

    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click


        Dim fromdate As Date = Format(CDate(txtFromDate.Text), "dd/MM/yyyy")
        If txtLetter.Text <> "" Then
            For Each Li As ListItem In chkShop.Items
                If Li.Selected Then
                    Dim name_shop As String = Trim(Convert.ToString(Li.Value))

                    Save(name_shop, fromdate)
                    While txtDays.Text > 1
                        Save(name_shop, fromdate.AddDays(1))
                    End While
                End If

            Next Li
        Else
            lblMessage.Text = "Enter Letter No. for reference !"

        End If
        gridDisplay()
    End Sub


    Protected Sub Save(ByVal name_shop As String, ByVal fromdate As Date)
        Dim done As Boolean
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()


        Try



            cmd.Parameters.AddWithValue("@name_shop", name_shop)
            cmd.Parameters.AddWithValue("@fromdate", fromdate)


            cmd.CommandText = "Insert INTO mm_holidaysDemo(Ref_Letter_No,Shop,Reason,LDate,NO_of_Days,Flag)  
                         VALUES ('" & txtLetter.Text & "',@name_shop , '" & txtReason.Text & "',@fromdate , '1','0')"



            If cmd.ExecuteNonQuery() = 1 Then
                done = True

            End If

        Catch exp As SqlException
            strsql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strsql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message
        End Try

        cmd.Connection.Close()

        If done Then
            lblMessage.Text = "Record saved !"
        End If

    End Sub
    Protected Function checkDateinDB(ByVal name_shop As String, ByVal fromdate As Date)
        Dim done As Boolean

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()


        Try

            cmd.Parameters.AddWithValue("@name_shop", name_shop)
            cmd.Parameters.AddWithValue("@fromdate", fromdate)

            cmd.CommandText = "Select count(*) from mm_holidaysDemo where LDate=@fromdate and Shop=@name_shop"

            If cmd.ExecuteScalar() = 1 Then done = True

        Catch exp As SqlException
            strsql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strsql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message
        End Try

        cmd.Connection.Close()

        Return done

    End Function
    Private Sub btnDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDelete.Click

        Dim done As Boolean
        Dim fromdate As Date = Format(CDate(txtFromDate.Text), "dd/MM/yyyy")
        If txtLetter.Text <> "" Then
            For Each Li As ListItem In chkShop.Items
                If Li.Selected Then

                    Dim name_shop As String = Trim(Convert.ToString(Li.Value))

                    done = checkDateinDB(name_shop, fromdate)
                    If done Then
                        update(name_shop, fromdate)
                    Else
                        lblMessage.Text = "Entered date is not a holiday !"
                    End If
                End If

            Next Li
        Else
            lblMessage.Text = "Enter Letter No. for reference !"
        End If
        gridDisplay()
    End Sub

    Protected Sub update(ByVal name_shop As String, ByVal fromdate As Date)
        Dim done As Boolean

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()


        Try

            cmd.Parameters.AddWithValue("@name_shop", name_shop)
            cmd.Parameters.AddWithValue("@fromdate", fromdate)

            cmd.CommandText = "Update mm_holidaysDemo set Ref_Letter_No='" & txtLetter.Text & "',Flag='1' where LDate=@fromdate and Shop=@name_shop"

            If cmd.ExecuteNonQuery = 1 Then

                done = True

            End If


        Catch exp As SqlException
            strsql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strsql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message
        End Try

        cmd.Connection.Close()


        If done Then
            lblMessage.Text = "Entered date is now a Working Day !"
        End If

    End Sub
    Protected Sub gridDisplay()

        Dim str4 As String

        str4 = "select * from mm_holidaysDemo where Convert(varchar,LDate,103)='" & Format(CDate(txtFromDate.Text), "dd/MM/yyyy") & "' and Ref_Letter_No='" & txtLetter.Text & "'"

        Call BindDataGrid(str4)
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
            dgHolidays.DataSource = arr
            dgHolidays.DataBind()
            dgHolidays.DataSource = objDr
            dgHolidays.DataBind()
        Catch exp As SqlException
            strsql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strsql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strsql, InStr(strsql, "line") + 5) & " Message : " + exp.Message
        End Try

        con.Close()

    End Sub


    Private Sub ddlReasons_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ddlReasons.SelectedIndexChanged
        lblMessage.Text = ""
        Setfocus(txtReason)
        txtReason.Text = ""
        ' chkSundays.Checked = False
        If ddlReasons.SelectedItem.Text.ToLower <> "select" And ddlReasons.SelectedItem.Text <> "OTHER" Then
            txtReason.Text = ddlReasons.SelectedItem.Text
        End If
        If ddlReasons.SelectedItem.Text = "OTHER" Then
            txtReason.Visible = True

        End If
        PopulateGrid()
    End Sub
    Private Sub btnReport_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnReport.Click

        Dim url As String = "HolidayReport.aspx"
        Dim s As String = "window.open('" & url + "', 'popup_window', 'width=500,height=200,left=500,top=100,resizable=yes');"
        ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)

    End Sub

End Class

