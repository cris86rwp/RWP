Imports System.Net
Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class WebForm9
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("UserID") = "111111"
        Session("User") = "Mukesh Kumar"

        lblUser.Text = Session("User")
        lblDate.Text = Format(CDate(Date.Now), "dd/MM/yyyy")
        ' lblGroup.Text = "EW1"

        If Not Page.IsPostBack Then
            Try
                'GetGridData()
                PopulateMachineCode()
            Catch exp As Exception
                lblMessage.Text = exp.Message
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


    Protected Sub ddlShopCode_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlShopCode.SelectedIndexChanged
        PopulateMachineCode()
    End Sub
End Class