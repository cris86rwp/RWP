
Imports System.Net
Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class WebForm8
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim grp As String
        Dim shop As String
        Dim IntervalType As String

        lblMode.Text = Request.QueryString("mode")
        lblUserID.Text = Session("UserID")
        lblMode.Text = "add"
        Session("group") = "EW3"
        lblUserID.Text = "077243"
        grp = Session("group")
        shop = shopCode.SelectedItem.Text.Trim
        lblUserID.Text = Session("UserID")
        lblMGroup.Text = Session("group")
        If Not Page.IsPostBack Then
            Try

                txtFrom.Text = CDate(Format(Date.Now, "dd/MM/yyyy"))
                IntervalType = "ww"
                txtTo.Text = DateAdd(IntervalType, 1, txtFrom.Text)
                PopulateMachineCode(shop)

            Catch ex As Exception
                lblMessage.Text = ex.Message
            End Try
        End If
        GetGridData()
        TextBox1.Visible = False
        TextBox2.Visible = False
        TextBox3.Visible = False
        TextBox4.Visible = False
        TextBox5.Visible = False
        TextBox6.Visible = False
        TextBox7.Visible = False
        TextBox8.Visible = False
        TextBox9.Visible = False
        TextBox10.Visible = False
        TextBox11.Visible = False
    End Sub
    Public Shared Function PMSMachineCode(ByVal ShopCode As String) As DataTable
        Dim dtUnSchMachineCode As New DataTable()
        Dim da As System.Data.SqlClient.SqlDataAdapter = rwfGen.Connection.Adapter
        Dim ds As New DataSet()

        da.SelectCommand.CommandText = " select machine_code,(description +'-'+ machine_code) as Description from ms_MachineryMaster where machine_code Like '" & Trim(ShopCode.Trim) & "%'"
        ' ORDER BY description  "

        Try
            da.Fill(ds, "PMSMachineCode")
            dtUnSchMachineCode = ds.Tables("PMSMachineCode")
        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally
            ds.Dispose()
            da.Dispose()
        End Try
        Return dtUnSchMachineCode
    End Function
    Private Sub PopulateMachineCode(ByVal shop As String)
        cboMachine.Items.Clear()
        Dim dt As DataTable
        Try
            dt = PMSMachineCode(shopCode.SelectedItem.Text.Trim)
            cboMachine.DataSource = dt.DefaultView
            cboMachine.DataValueField = dt.Columns("machine_code").ColumnName
            cboMachine.DataTextField = dt.Columns("Description").ColumnName
            cboMachine.DataBind()
            cboMachine.Items.Insert(0, "Select")

        Catch exp As Exception
            lblMessage.Text = exp.Message
        Finally
            dt.Dispose()
        End Try

    End Sub


    Protected Sub radType_SelectedIndexChanged(sender As Object, e As EventArgs) Handles radType.SelectedIndexChanged
        xy()
    End Sub
    Public Sub xy()
        Dim IntervalType As String
        TextBox1.Visible = True
        TextBox2.Visible = True
        TextBox3.Visible = True
        TextBox4.Visible = True
        TextBox5.Visible = True
        TextBox6.Visible = True
        TextBox7.Visible = True
        TextBox8.Visible = True
        TextBox9.Visible = True
        TextBox10.Visible = True
        TextBox11.Visible = True
        If radType.SelectedItem.Value = "Weekly" Then

            IntervalType = "ww"
            txtTo.Text = DateAdd(IntervalType, 1, txtFrom.Text)
            TextBox1.Text = DateAdd(IntervalType, 2, txtFrom.Text)
            TextBox2.Text = DateAdd(IntervalType, 3, txtFrom.Text)
            TextBox3.Text = DateAdd(IntervalType, 4, txtFrom.Text)
            TextBox4.Text = DateAdd(IntervalType, 5, txtFrom.Text)
            TextBox5.Text = DateAdd(IntervalType, 6, txtFrom.Text)
            TextBox6.Text = DateAdd(IntervalType, 7, txtFrom.Text)
            TextBox7.Text = DateAdd(IntervalType, 8, txtFrom.Text)
            TextBox8.Text = DateAdd(IntervalType, 9, txtFrom.Text)
            TextBox9.Text = DateAdd(IntervalType, 10, txtFrom.Text)
            TextBox10.Text = DateAdd(IntervalType, 11, txtFrom.Text)
            TextBox11.Text = DateAdd(IntervalType, 12, txtFrom.Text)
        ElseIf radType.SelectedItem.Value = "Monthly" Then
            IntervalType = "m"
            txtTo.Text = DateAdd(IntervalType, 1, txtFrom.Text)
            TextBox1.Text = DateAdd(IntervalType, 2, txtFrom.Text)
            TextBox2.Text = DateAdd(IntervalType, 3, txtFrom.Text)
            TextBox3.Text = DateAdd(IntervalType, 4, txtFrom.Text)
            TextBox4.Text = DateAdd(IntervalType, 5, txtFrom.Text)
            TextBox5.Text = DateAdd(IntervalType, 6, txtFrom.Text)
            TextBox6.Text = DateAdd(IntervalType, 7, txtFrom.Text)
            TextBox7.Text = DateAdd(IntervalType, 8, txtFrom.Text)
            TextBox8.Text = DateAdd(IntervalType, 9, txtFrom.Text)
            TextBox9.Text = DateAdd(IntervalType, 10, txtFrom.Text)
            TextBox10.Text = DateAdd(IntervalType, 11, txtFrom.Text)
            TextBox11.Text = DateAdd(IntervalType, 12, txtFrom.Text)

        ElseIf radType.SelectedItem.Value = "Quarterly" Then
            IntervalType = "q"
            txtTo.Text = DateAdd(IntervalType, 1, txtFrom.Text)
            TextBox1.Text = DateAdd(IntervalType, 2, txtFrom.Text)
            TextBox2.Text = DateAdd(IntervalType, 3, txtFrom.Text)
            TextBox3.Text = DateAdd(IntervalType, 4, txtFrom.Text)
            TextBox4.Visible = False
            TextBox5.Visible = False
            TextBox6.Visible = False
            TextBox7.Visible = False
            TextBox8.Visible = False
            TextBox9.Visible = False
            TextBox10.Visible = False
            TextBox11.Visible = False

        ElseIf radType.SelectedItem.Value = "Halfyearly" Then
            IntervalType = "q"
            txtTo.Text = DateAdd(IntervalType, 2, txtFrom.Text)
            TextBox1.Text = DateAdd(IntervalType, 4, txtFrom.Text)
            TextBox2.Visible = False
            TextBox3.Visible = False
            TextBox4.Visible = False
            TextBox5.Visible = False
            TextBox6.Visible = False
            TextBox7.Visible = False
            TextBox8.Visible = False
            TextBox9.Visible = False
            TextBox10.Visible = False
            TextBox11.Visible = False
        ElseIf radType.SelectedItem.Value = "Yearly" Then
            IntervalType = "yyyy"
            txtTo.Text = DateAdd(IntervalType, 1, txtFrom.Text)
            TextBox1.Visible = False
            TextBox2.Visible = False
            TextBox3.Visible = False
            TextBox4.Visible = False
            TextBox5.Visible = False
            TextBox6.Visible = False
            TextBox7.Visible = False
            TextBox8.Visible = False
            TextBox9.Visible = False
            TextBox10.Visible = False
            TextBox11.Visible = False

        ElseIf radType.SelectedItem.Value = "50Hrs" Then
            IntervalType = "h"
            txtTo.Text = DateAdd(IntervalType, 50, txtFrom.Text)

        ElseIf radType.SelectedItem.Value = "250Hrs" Then
            IntervalType = "h"
            txtTo.Text = DateAdd(IntervalType, 250, txtFrom.Text)

        ElseIf radType.SelectedItem.Value = "500Hrs" Then
            IntervalType = "h"
            txtTo.Text = DateAdd(IntervalType, 500, txtFrom.Text)

        ElseIf radType.SelectedItem.Value = "1000Hrs" Then
            IntervalType = "h"
            txtTo.Text = DateAdd(IntervalType, 1000, txtFrom.Text)

        ElseIf radType.SelectedItem.Value = "10000Hrs" Then
            IntervalType = "h"
            txtTo.Text = DateAdd(IntervalType, 10000, txtFrom.Text)

        End If
    End Sub

    Protected Sub txtFrom_TextChanged(sender As Object, e As EventArgs) Handles txtFrom.TextChanged
        xy()
    End Sub

    Protected Sub shopCode_SelectedIndexChanged(sender As Object, e As EventArgs) Handles shopCode.SelectedIndexChanged
        PopulateMachineCode(shopCode.SelectedItem.Value)
    End Sub
    Private Sub GetGridData()
        Dim objCmd As SqlCommand
        Dim objDr As SqlDataReader
        Dim con As New SqlConnection("Data Source=rwpbeladev.southindia.cloudapp.azure.com,1433;Initial Catalog=wapdev; User ID=cristrg;Password=trg123")

        If con.State = ConnectionState.Closed Then
            con.Open()
        Else
            con.Close()
            con.Open()
        End If
        Dim strSql As String
        Try
            Dim strArg As String
            strArg = "select * from ms_preventiveMaintenanceDetails where ShopCode='" & shopCode.SelectedItem.Value & "'"
            objCmd = New SqlCommand(strArg, con)

            objDr = objCmd.ExecuteReader()
            Dim arr() As String
            datagrid1.DataSource = arr
            datagrid1.DataBind()
            datagrid1.DataSource = objDr
            datagrid1.DataBind()
        Catch exp As SqlException
            strSql = exp.StackTrace
            lblMessage.Text = "Line :  " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strSql = exp.StackTrace
            lblMessage.Text = "Line  " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message
        End Try

        con.Close()

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Dim done As Boolean
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        ' Try
        Dim Shop As String = shopCode.SelectedItem.Value
        Dim transDate As DateTime = Format(CDate(txtFrom.Text), "dd/MM/yyyy")
        Dim Machine As String = cboMachine.SelectedItem.Value
        Dim NextDate As DateTime = Format(CDate(txtTo.Text), "dd/MM/yyyy")
        Dim Carried As String = radType.SelectedItem.Value
        Dim Remarks As String = txtRemarks.Text
        Dim group As String = lblGroup.Text
        cmd.CommandText = "insert into ms_preventiveMaintenanceDetails ( maintenance_group , maintenance_type, PM_Done_Date, Next_Due_date , machine_code, remarks , ShopCode) " &
                  "values ( @group , @Carried ,@transDate ,@NextDate , @Machine , @Remarks, @Shop)"
        cmd.Parameters.AddWithValue("@Shop", Shop)
        cmd.Parameters.AddWithValue("@transDate", transDate)
        cmd.Parameters.AddWithValue("@Machine", Machine)
        cmd.Parameters.AddWithValue("@NextDate", NextDate)
        cmd.Parameters.AddWithValue("@Carried", Carried)
        cmd.Parameters.AddWithValue("@Remarks", Remarks)
        cmd.Parameters.AddWithValue("@group", group)
        Try
            cmd.Connection.Open()

            If cmd.ExecuteNonQuery() = 1 Then done = True

        Catch exp As Exception
            lblMessage.Text = exp.Message
        Finally

            If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
            cmd.Dispose()
            cmd = Nothing

        End Try
        ' Return done
        If done = True Then
            lblMessage.Text = "Data Saved"

        Else
            lblMessage.Text = "data not saved"
        End If
        GetGridData()
    End Sub
    Public Shared Function Schedule(ByVal ShopCode As String) As DataTable
        Dim dtUnSchMachineCode As New DataTable()
        Dim da As System.Data.SqlClient.SqlDataAdapter = rwfGen.Connection.Adapter
        Dim ds As New DataSet()

        da.SelectCommand.CommandText = "select * from ms_preventiveMaintenanceDetails where machine_code='MSVTLVT3'"


        Try
            da.Fill(ds, "PMSMachineCode")
            dtUnSchMachineCode = ds.Tables("PMSMachineCode")
        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally
            ds.Dispose()
            da.Dispose()
        End Try
        Return dtUnSchMachineCode
    End Function
End Class