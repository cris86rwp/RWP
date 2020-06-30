Imports System.Net
Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class WebForm3
    Inherits System.Web.UI.Page
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents lblDefect As System.Web.UI.WebControls.Label
    Protected WithEvents lblshopCode As System.Web.UI.WebControls.Label
    Protected WithEvents lblDate As System.Web.UI.WebControls.Label
    Protected WithEvents ddlTech As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DataGrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents DataGrid2 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents btnRet As System.Web.UI.WebControls.Button
    Protected WithEvents txtOperator As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtsse As System.Web.UI.WebControls.TextBox



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("UserID") = "111111"
        Session("Group") = "MW1"
        txtsse.Text = Session("UserID")
        lblshopCode.Text = Session("Group")
        lblDate.Text = Format(CDate(Date.Now), "dd/MM/yyyy")
        If Not Page.IsPostBack Then
            Try
                'GetGridData1()
                GetGridData()
                PopulateTechnician()
            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try
        End If
    End Sub

    Private Sub PopulateTechnician()
        Dim dt As DataTable
        dt = getTech(lblshopCode.Text.Trim)
        ddlTech.DataSource = dt
        ddlTech.DataTextField = dt.Columns(0).ColumnName
        ddlTech.DataValueField = dt.Columns(0).ColumnName
        ddlTech.DataBind()
        ddlTech.Items.Insert(0, "Select")
        ddlTech.SelectedIndex = 0
        dt = Nothing
    End Sub

    Public Shared Function getTech(ByVal Shop As String) As DataTable
        Dim da As SqlClient.SqlDataAdapter = rwfGen.Connection.Adapter
        Dim ds As New DataSet()
        Try
            da.SelectCommand.CommandText = "SELECT Emp_Name FROM UserContact_Details where Designation='TECH– I' or Designation='TECH– II' and Shop_code =' @Shop'"
            da.SelectCommand.Parameters.Add("@Shop", SqlDbType.VarChar, 10).Value = Shop.Trim
            da.Fill(ds)
            getTech = ds.Tables(0)
        Catch exp As Exception
            getTech = Nothing
            Throw New Exception(exp.Message)
        Finally
            da.Dispose()
            ds.Dispose()
            da = Nothing
            ds = Nothing
        End Try
    End Function
    Public Sub update(ByVal MemoNo As String)
        Dim done As Boolean
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim TechEmpname As String = ddlTech.SelectedItem.Value
        Dim SseRemarks As String = txtRemarks.Text
        cmd.CommandText = "update ms_BreakDownMemo set techFlag='1', TechEmpname=@TechEmpname,SseRemarks=@SseRemarks where MemoSlip=@MemoNo"
        cmd.Parameters.AddWithValue("@MemoNo", MemoNo)
        cmd.Parameters.AddWithValue("@TechEmpname", TechEmpname)
        cmd.Parameters.AddWithValue("@SseRemarks", SseRemarks)
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
    End Sub
    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If lblMemo.Text = "" Then
            lblMessage.Text = "Please enter MemoNo"
        Else
            If ddlTech.SelectedIndex = 0 Then
                lblMessage.Text = "please enter the Technician name"
            Else
                update(lblMemo.Text.Trim)
                Dim done As Boolean

                Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
                Dim Date1 As Date = Format(CDate(lblDate.Text), "dd/MM/yyyy")
                Dim Shop As String = lblshopCode.Text
                Dim MemoNo As String = lblMemo.Text
                Dim Remarks As String = txtRemarks.Text
                Dim Technician As String = ddlTech.SelectedItem.Value

                Dim x As Integer = 1
                cmd.CommandText = "insert into ms_BDTechAllocation(Shop,MemoNo,AllocateDate,Remarks,TechEmpname,FLAG)" &
            "values(@Shop,@MemoNo,@Date1,@Remarks,@Technician,0)"

                cmd.Parameters.AddWithValue("@Date1", Date1)
                cmd.Parameters.AddWithValue("@MemoNo", MemoNo)
                cmd.Parameters.AddWithValue("@Remarks", Remarks)

                cmd.Parameters.AddWithValue("@Technician", Technician)

                cmd.Parameters.AddWithValue("@Shop", Shop)
                ' cmd.Parameters.AddWithValue("@ x", x)

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
                ' Return done
                If done = True Then
                    lblMessage.Text = "Data Saved"
                Else
                    lblMessage.Text = "data not saved"
                End If



            End If
            'get_email()
            'get_sms()
        End If

        'get_sms2()
        'get_email2()

        GetGridData()
        GetGridData1()
    End Sub
    Private Sub GetGridData()
        Dim strSql As String

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim con As New SqlConnection(ConfigurationManager.AppSettings("con"))
        Dim objCmd1 As SqlCommand
        Dim objDr1 As SqlDataReader
        Dim strarg = "select group1,MemoSlip, format(BDFromTime,'dd/MM/yyyy hh:mm' ) as BDFromTime ,Operator,Remarks,Shop,Machine,bdtype,defect from ms_breakdownmemo where FLAG=0 and techFlag=0 order by MemoSlip desc "

        If con.State = ConnectionState.Closed Then
            con.Open()
        Else
            con.Close()
            con.Open()
        End If
        Try
            objCmd1 = New SqlCommand(strarg, con)
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
        '    End Sub


    End Sub
    Dim i As Integer
    Protected Sub datagrid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DataGrid1.SelectedIndexChanged
        DataGrid1.SelectedIndex = i
        lblMemo.Text = Trim(DataGrid1.Items(i).Cells(2).Text)
        Label1.Text = Trim(DataGrid1.Items(i).Cells(5).Text)
        lblDefect.Text = Trim(DataGrid1.Items(i).Cells(7).Text)
        txtOperator.Text = Trim(DataGrid1.Items(i).Cells(9).Text)
        GetGridData1()
    End Sub

    Private Sub DataGrid1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles DataGrid1.ItemCommand
        i = e.Item.ItemIndex()
    End Sub

    Protected Sub btnRet_Click(sender As Object, e As EventArgs) Handles btnRet.Click
        If lblMemo.Text = "" Then
            lblMessage.Text = "please enter MemoNo"
        Else
            Dim done As Boolean
            Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
            Dim MemoNo As String = lblMemo.Text
            cmd.CommandText = "update ms_BreakDownMemo set techFlag=2,retFlag=1 where MemoSlip=@MemoNo"
            cmd.Parameters.AddWithValue("@MemoNo", MemoNo)
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



        End If
        'get_sms1()
        'get_email1()
        GetGridData()

    End Sub

    Private Sub GetGridData1()
        Dim strSql As String
        Dim strArg As String
        strArg = "Select * From ms_preventiveMaintenanceDetails Where machine_code ='" & Label1.Text & "'"
        'and DataPoint='" & RadioButtonList1.SelectedItem.Value & "'"

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
        '    End Sub



    End Sub
    Protected Sub datagrid2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DataGrid2.SelectedIndexChanged
        DataGrid2.SelectedIndex = i
        lblMemo.Text = Trim(DataGrid2.Items(i).Cells(2).Text)
        Label1.Text = Trim(DataGrid2.Items(i).Cells(5).Text)
    End Sub

    Private Sub DataGrid2_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles DataGrid1.ItemCommand
        i = e.Item.ItemIndex()
    End Sub
    Public Sub get_email()
        Dim message = "machine(no) " + Label1.Text + " assigned to you for attending repair of defect " + lblDefect.Text + ""
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = (" select Email_Id from UserContact_details where Emp_Name='" & ddlTech.SelectedItem.Text & "'")

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
        Dim message = "machine(no) " + Label1.Text + " assigned to you for attending repair of defect " + lblDefect.Text + ""
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where designation='tech-I' and emp_name='" & ddlTech.SelectedItem.Text & "'")
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
        Dim message = "Breakdown Of Machine:" + Label1.Text + "with MemoNo. " + lblMemo.Text + " is returned for your review "
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()

        cmd.CommandText = (" select Email_Id from UserContact_details where Emp_Name='" & ddlTech.SelectedItem.Text & "'")
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
        Dim message = "Breakdown Of Machine:" + Label1.Text + "with MemoNo. " + lblMemo.Text + " is returned for your review "
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
    Public Sub get_email2()
        Dim message = "Breakdown MemoNo. " + lblMemo.Text + " is assigned to : " + ddlTech.SelectedItem.Text + ""
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()

        cmd.CommandText = (" select Email_Id from UserContact_details where Emp_Name='" & ddlTech.SelectedItem.Text & "'")
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
    Public Sub get_sms2()
        Dim message = "Breakdown MemoNo. " + lblMemo.Text + " is assigned to : " + ddlTech.SelectedItem.Text + ""
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = ("select distinct mobile_no from UserContact_Details a,menu_your_password b where a.emp_no='" & txtsse.Text & "'")
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