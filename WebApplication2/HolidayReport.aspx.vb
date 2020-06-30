Imports System.Data.SqlClient
Imports System.Data
Imports System.Windows


Public Class HolidayReport
    Inherits System.Web.UI.Page


    Protected WithEvents txtfrDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txTtDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label

    Protected WithEvents btnReport As System.Web.UI.WebControls.Button

    Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
    Private con As New SqlConnection(ConfigurationManager.AppSettings("con"))
    Dim i As Integer
    Dim strsql As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' TextHeat.Text = WebForm2.heat_no

    End Sub

    Private Sub btnReport_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnReport.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            txtfrDate.Text = CDate(txtfrDate.Text)
            txTtDate.Text = CDate(txTtDate.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(txtfrDate.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(txTtDate.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(txTtDate.Text) < CDate(txtfrDate.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=32532&user0=crissqlserver&password0=cris-bela@1234567890" &
            "&promptex0=DateTime(" & CDate(txtfrDate.Text).Year & "," & CDate(txtfrDate.Text).Month & ", " & CDate(txtfrDate.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(txTtDate.Text).Year & "," & CDate(txTtDate.Text).Month & "," & CDate(txTtDate.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)

            Dim s As String = "window.open('" & strPathName + "', 'popup_window', 'width=700,height=800,left=500,top=100,resizable=yes');"
            ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)
        End If
    End Sub




End Class