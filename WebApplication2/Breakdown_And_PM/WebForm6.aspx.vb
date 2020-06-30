Imports System.Net
Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class WebForm6
    Inherits System.Web.UI.Page
    'Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    'Protected WithEvents txtDate As System.Web.UI.WebControls.TextBox
    'Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    'Protected WithEvents rblShift As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents lblDepartment_code As System.Web.UI.WebControls.Label
    'Protected WithEvents rblShop As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents lblGroupCode As System.Web.UI.WebControls.Label
    Protected WithEvents txtOperator As System.Web.UI.WebControls.TextBox
    'Protected WithEvents txtMemoslip As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblMemo As System.Web.UI.WebControls.Label
    Protected WithEvents label1 As System.Web.UI.WebControls.Label
    'Protected WithEvents ddlMachineCodes As System.Web.UI.WebControls.DropDownList
    'Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    'Protected WithEvents rblBDType As System.Web.UI.WebControls.DropDownList
    'Protected WithEvents lstBDCodes As System.Web.UI.WebControls.DropDownList
    'Protected WithEvents radYN As System.Web.UI.WebControls.RadioButtonList
    'Protected WithEvents txtFrom_date As System.Web.UI.WebControls.TextBox
    'Protected WithEvents txtFrom_time As System.Web.UI.WebControls.TextBox
    'Protected WithEvents btnSave As System.Web.UI.WebControls.Button
    'Protected WithEvents btnClear As System.Web.UI.WebControls.Button
    'Protected WithEvents btnExit As System.Web.UI.WebControls.Button
    'Protected WithEvents DataGrid1 As System.Web.UI.WebControls.DataGrid
    'Protected WithEvents txtRemarks As System.Web.UI.WebControls.TextBox
    'Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    '' Protected WithEvents lblMode As System.Web.UI.WebControls.Label
    'Protected WithEvents Dd1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnClose As System.Web.UI.WebControls.Button

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("UserID") = "111111"
        Session("Group") = "WHLMLT"
        'txtOperator.Text = Session("UserID")
        lblGroupCode.Text = Session("Group")
        lblDepartment_code.Text = "M"
        If Not Page.IsPostBack Then
            Try
                lblDate.Text = Format(CDate(Date.Now), "dd/MM/yyyy hh:mm")
                GetGridData()
            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try
        End If
    End Sub
    Private Sub GetGridData()

        Dim strSql As String
        Dim strArg As String
        strArg = "select group1,MemoSlip, format(BDFromTime,'dd/MM/yyyy hh:mm' ) as BDFromTime,Operator ,Remarks,Shop,Machine,bdtype,defect from ms_breakdownmemo WHERE FLAG=0 and retFlag=1 and techFlag=2 order by MemoSlip "

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
            label1.Text = "Line : " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strSql = exp.StackTrace
            label1.Text = "Line : " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message
        End Try
        con.Close()
    End Sub
    Dim i As Integer
    Protected Sub datagrid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DataGrid1.SelectedIndexChanged
        DataGrid1.SelectedIndex = i

        lblMemo.Text = Trim(DataGrid1.Items(i).Cells(2).Text)
        label1.Text = Trim(DataGrid1.Items(i).Cells(5).Text)
        txtOperator.Text = Trim(DataGrid1.Items(i).Cells(9).Text)
        ' AddWork.Text = Trim(DataGrid1.Items(i).Cells(12).Text)
        '  GetGridData1()
    End Sub

    Private Sub DataGrid1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles DataGrid1.ItemCommand
        i = e.Item.ItemIndex()
    End Sub

    Protected Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click
        If lblMessage.Text = "" Then
            lblMessage.Text = "Please select MemoNo"
        Else
            update(lblMemo.Text.Trim)
            GetGridData()
            'get_email()
            'get_sms()
        End If
    End Sub
    Public Sub update(ByVal MemoNo As String)
        Dim done As Boolean
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim breakdown_closedate As Date = lblDate.Text
        cmd.CommandText = "update ms_BreakDownMemo Set FLAG=1,breakdown_closedate=@breakdown_closedate where MemoSlip=@MemoNo"
        cmd.Parameters.AddWithValue("@MemoNo", MemoNo)
        cmd.Parameters.AddWithValue("@breakdown_closedate", breakdown_closedate)

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
    Public Sub update1(ByVal MemoNo As String)
        Dim done As Boolean
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim Remarks As String = txtRemarks.Text
        cmd.CommandText = "update ms_BreakDownMemo Set techFlag=0,retFlag=0,Remarks=@Remarks where MemoSlip=@MemoNo"
        cmd.Parameters.AddWithValue("@MemoNo", MemoNo)
        cmd.Parameters.AddWithValue("@Remarks", Remarks)
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

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles Submit.Click
        If lblMessage.Text = "" Then
            lblMessage.Text = "Please select MemoNo"
        Else
            update1(lblMemo.Text.Trim)
            GetGridData()
            'get_sms1()
            'get_email1()
        End If
    End Sub
    Public Sub get_email1()
        Dim message = "Breakdown Of Machine:" + label1.Text + "with MemoNo. " + lblMemo.Text + " is returned for your review "
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = ("select distinct Email_Id from usercontact_details1 where Designation like '%sse%'")
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
            MsgBox("Mail Sent")
        End While
    End Sub
    Public Sub get_sms1()
        Dim message = "Breakdown Of Machine:" + label1.Text + "with MemoNo. " + lblMemo.Text + " is returned for your review "
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = ("select distinct Mobile_No from usercontact_details1 where Designation like '%sse%'")
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
    Public Sub get_email()
        Dim message = "Breakdown memo no" + lblMemo.Text + " is closed now. "
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
            MsgBox("Mail Sent")
        End While
    End Sub
    Public Sub get_sms()
        Dim message = "Breakdown memo no" + lblMemo.Text + " is closed now. "
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = ("select distinct mobile_no from UserContact_Details a,menu_your_password b where a.emp_no='" & txtOperator.Text & "'")
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