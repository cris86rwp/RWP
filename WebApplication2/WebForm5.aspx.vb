Imports System.Net
Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class WebForm5
    Inherits System.Web.UI.Page
    Protected WithEvents DataGrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents lblshopCode As System.Web.UI.WebControls.Label
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents txtDefect As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tech As System.Web.UI.WebControls.TextBox
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("UserID") = "111111"
        Session("Group") = "MW1"
        'txtOperator.Text = Session("UserID")
        lblshopCode.Text = Session("Group")
        GetGridData()
        Panel1.Visible = False
    End Sub
    Private Sub GetGridData()

        Dim strSql As String
        Dim strArg As String
        strArg = "select group1,MemoSlip, format(BDFromTime,'dd/MM/yyyy hh:mm' ) as BDFromTime,Operator ,Remarks,Shop,Machine,bdtype,defect,TechEmpname,TechRemark,SseRemarks,AddWork from ms_breakdownmemo WHERE FLAG='0 ' AND techFlag=2 and retFlag=0 order by MemoSlip desc"

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim con As New SqlConnection(ConfigurationManager.AppSettings("con"))
        Dim objCmd1 As SqlCommand
        Dim objDr1 As SqlDataReader

        If con.State = ConnectionState.Closed Then
            con.Open()
        Else
            con.Close()
            con.Open()
        End If
        Try
            objCmd1 = New SqlCommand(strArg, con)
            objDr1 = objCmd1.ExecuteReader()
            Dim arr1() As String
            DataGrid1.DataSource = arr1
            DataGrid1.DataBind()
            DataGrid1.DataSource = objDr1
            DataGrid1.DataBind()

            con.Close()
        Catch exp As SqlException
            strSql = exp.StackTrace
            Label1.Text = "Line : " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strSql = exp.StackTrace
            Label1.Text = "Line : " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message
        End Try
        con.Close()

    End Sub
    Dim i As Integer
    Protected Sub datagrid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DataGrid1.SelectedIndexChanged
        DataGrid1.SelectedIndex = i
        Panel1.Visible = True
        lblMemo.Text = Trim(DataGrid1.Items(i).Cells(2).Text)
        Label1.Text = Trim(DataGrid1.Items(i).Cells(5).Text)
        AddWork.Text = Trim(DataGrid1.Items(i).Cells(12).Text)
        txtOperator.Text = Trim(DataGrid1.Items(i).Cells(13).Text)
        txtdefect.text = Trim(DataGrid1.Items(i).Cells(7).Text)
        Tech.Text = Trim(DataGrid1.Items(i).Cells(8).Text)
        GetGridData1()
    End Sub

    Private Sub DataGrid1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles DataGrid1.ItemCommand
        i = e.Item.ItemIndex()
    End Sub

    Private Sub GetGridData1()

        Dim strSql As String
        Dim strArg As String
        strArg = "select * from ms_Breakdown_SpareDeatail where memono= '" & lblMemo.Text & "'"

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim con As New SqlConnection(ConfigurationManager.AppSettings("con"))
        Dim objCmd1 As SqlCommand
        Dim objDr1 As SqlDataReader

        If con.State = ConnectionState.Closed Then
            con.Open()
        Else
            con.Close()
            con.Open()
        End If
        Try
            objCmd1 = New SqlCommand(strArg, con)
            objDr1 = objCmd1.ExecuteReader()
            Dim arr1() As String
            DataGrid2.DataSource = arr1
            DataGrid2.DataBind()
            DataGrid2.DataSource = objDr1
            DataGrid2.DataBind()

            con.Close()
        Catch exp As SqlException
            strSql = exp.StackTrace
            Label1.Text = "Line : " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strSql = exp.StackTrace
            Label1.Text = "Line : " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message
        End Try
        con.Close()

    End Sub

    Protected Sub BtnTech_Click(sender As Object, e As EventArgs) Handles BtnTech.Click
        If lblMemo.Text = "" Then
            lblMessage.Text = "please enter MemoNo"
        Else

            'get_email1()
            'get_sms1()
            update(lblMemo.Text.Trim)
        End If
    End Sub
    Public Sub update(ByVal MemoNo As String)
        Dim done As Boolean
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj

        cmd.CommandText = "update ms_BreakDownMemo Set techFlag=0 where MemoSlip=@MemoNo"
        cmd.Parameters.AddWithValue("@MemoNo", MemoNo)


        Try
            cmd.Connection.Open()

            If cmd.ExecuteNonQuery() = 1 Then
                done = True

            End If

        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally

            If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
            cmd.Dispose()
            cmd = Nothing

        End Try
    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If lblMemo.Text = "" Then
            lblMessage.Text = "Please enter MemoNo"
        Else
            update1(lblMemo.Text)
            GetGridData()
            'get_email()
            'get_sms()

        End If
    End Sub


    Public Sub update1(ByVal MemoNo As String)
        Dim done As Boolean
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj

        cmd.CommandText = "update ms_BreakDownMemo Set retFlag=1 where MemoSlip=@MemoNo"
        cmd.Parameters.AddWithValue("@MemoNo", MemoNo)


        Try
            cmd.Connection.Open()

            If cmd.ExecuteNonQuery() = 1 Then
                done = True

            End If

        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally

            If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
            cmd.Dispose()
            cmd = Nothing

        End Try
    End Sub
    Public Sub get_email()
        Dim message = "Machine Name(no)" + Label1.Text + " made operational. Pl confirm the working through you Login  "
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = ("select distinct Email_Id from UserContact_Details a,menu_your_password b where a.emp_no='" & txtOperator.Text & "'")
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        While reader.Read()
            Dim mail As String = reader("Email_Id").ToString()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("rwppualert@gmail.com", "Bela@801503")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("rwppualert@gmail.com")
            e_mail.To.Add(mail)

            e_mail.Subject = "Email Sending"
            e_mail.IsBodyHtml = False
            e_mail.Body = message
            Smtp_Server.Send(e_mail)

        End While
        MsgBox("Mail Sent")
    End Sub
    Public Sub get_sms()
        Dim message = "Machine Name(no)" + Label1.Text + " made operational. Pl confirm the working through you Login  "
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = ("select distinct Mobile_No from UserContact_Details a,menu_your_password b where a.emp_no='" & txtOperator.Text & "'")
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        While reader.Read()
            Dim no As String = reader("Mobile_No").ToString()
            Dim number As String = "91" + no
            Dim strGet As String
            Dim url1 As String = "http://enterprise.smsgupshup.com/GatewayAPI/rest?method=SendMessage&send_to="
            Dim url2 As String = "&msg="
            Dim url3 As String = "&msg_type=TEXT&userid=2000184632&auth_scheme=plain&password=pWK3H5&v=1.1&format=text"
            strGet = url1 + number + url2 + message + url3
            Dim webClient As New System.Net.WebClient
            Dim result As String = webClient.DownloadString(strGet)
        End While
    End Sub

    Public Sub get_email1()
        Dim message = "Machine Name(no)" + Label1.Text + " is assigned to new technician for attending repair of defect " + txtDefect.Text + ""
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = ("select distinct Email_Id from UserContact_Details where Emp_No='" & Tech.Text & "'")
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        While reader.Read()
            Dim mail As String = reader("Email_Id").ToString()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("rwppualert@gmail.com", "Bela@801503")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("rwppualert@gmail.com")
            e_mail.To.Add(mail)

            e_mail.Subject = "Email Sending"
            e_mail.IsBodyHtml = False
            e_mail.Body = message
            Smtp_Server.Send(e_mail)

        End While
        MsgBox("Mail Sent")
    End Sub
    Public Sub get_sms1()
        Dim message = "Machine Name(no)" + Label1.Text + " is assigned to new technician for attending repair of defect " + txtDefect.Text + ""
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where Emp_No='" & Tech.Text & "'")
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        While reader.Read()
            Dim no As String = reader("Mobile_No").ToString()
            Dim number As String = "91" + no
            Dim strGet As String
            Dim url1 As String = "http://enterprise.smsgupshup.com/GatewayAPI/rest?method=SendMessage&send_to="
            Dim url2 As String = "&msg="
            Dim url3 As String = "&msg_type=TEXT&userid=2000184632&auth_scheme=plain&password=pWK3H5&v=1.1&format=text"
            strGet = url1 + number + url2 + message + url3
            Dim webClient As New System.Net.WebClient
            Dim result As String = webClient.DownloadString(strGet)
        End While
    End Sub

End Class