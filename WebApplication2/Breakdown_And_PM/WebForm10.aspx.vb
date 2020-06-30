Imports System.Net
Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class WebForm10
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Dim lblpm As String
        'Dim shop As String

        Session("group") = "EW3"
        lblUserID.Text = "077243"
        lblMGroup.Text = Session("group")
        lblUserID.Text = Session("UserID")
        lblMGroup.Text = Session("group")
        If Not Page.IsPostBack Then
            Try
                lblPM.Text = ddlType.SelectedItem.Value
                PopulateMachineCode()
                GetGridData()
            Catch ex As Exception
                lblMessage.Text = ex.Message
            End Try
        End If
    End Sub
    Private Sub PopulateMachineCode()
        ddlMachine.Items.Clear()
        Dim dt As DataTable
        Try
            dt = PMSMachineCode()
            ddlMachine.DataSource = dt.DefaultView
            ddlMachine.DataValueField = dt.Columns("machine_code").ColumnName
            ddlMachine.DataTextField = dt.Columns("Description").ColumnName
            ddlMachine.DataBind()
            ddlMachine.Items.Insert(0, "Select")

        Catch exp As Exception
            lblMessage.Text = exp.Message
        Finally
            dt.Dispose()
        End Try

    End Sub
    Public Function PMSMachineCode() As DataTable
        Dim dtUnSchMachineCode As New DataTable()
        Dim da As System.Data.SqlClient.SqlDataAdapter = rwfGen.Connection.Adapter
        Dim ds As New DataSet()

        da.SelectCommand.CommandText = " select machine_code,(description +'-'+ machine_code) as Description from ms_MachineryMaster where machine_code Like '" & ddlShopCode.SelectedItem.Value & "%'"
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

    'Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
    '    Dim done As Boolean

    '    Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj

    '    Dim Shop As String = ddlShopCode.SelectedItem.Value
    '    Dim Machine1 As String = ddlMachine.SelectedItem.Value
    '    Dim type As String = ddlType.SelectedItem.Value

    '    cmd.CommandText = "insert into PM_CheckList ( Shop , Machine,PM_Main)" &
    '                          "values ( @Shop , @Machine,@type)"
    '    cmd.Parameters.AddWithValue("@Shop", Shop)
    '    cmd.Parameters.AddWithValue("@Machine", Machine1)
    '    cmd.Parameters.AddWithValue("@type", type)
    '    ' cmd.Parameters.AddWithValue("@Feild1", Feild1)

    '    Try
    '        cmd.Connection.Open()

    '        If cmd.ExecuteNonQuery() = 1 Then done = True

    '    Catch exp As Exception
    '        lblMessage.Text = exp.Message
    '    Finally

    '        If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
    '        cmd.Dispose()
    '        cmd = Nothing

    '    End Try
    '    ' Return done
    '    If done = True Then
    '        lblMessage.Text = "Data Saved"

    '    Else
    '        lblMessage.Text = "data not saved"
    '    End If
    '    GetGridData()


    'End Sub+

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
            strArg = "select * from pm_checklist where Machine= '" & ddlMachine.SelectedItem.Value & "'and PM_Main='" & ddlType.SelectedItem.Value & "'"
            objCmd = New SqlCommand(strArg, con)

            objDr = objCmd.ExecuteReader()
            Dim arr() As String
            DataGrid1.DataSource = arr
            DataGrid1.DataBind()
            DataGrid1.DataSource = objDr
            DataGrid1.DataBind()
        Catch exp As SqlException
            strSql = exp.StackTrace
            lblMessage.Text = "Line :  " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strSql = exp.StackTrace
            lblMessage.Text = "Line  " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message
        End Try

        con.Close()

    End Sub



    Protected Sub ddlShopCode_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlShopCode.SelectedIndexChanged
        PopulateMachineCode()
        GetGridData()
    End Sub

    Protected Sub ddlMachine_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlMachine.SelectedIndexChanged
        GetGridData()
    End Sub

    Protected Sub ddlType_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlType.SelectedIndexChanged
        lblPM.Text = ddlType.SelectedItem.Value
        GetGridData()
    End Sub
End Class