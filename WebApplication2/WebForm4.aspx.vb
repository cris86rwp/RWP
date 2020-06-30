Imports System.Net
Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class WebForm4

    Inherits System.Web.UI.Page
    Protected WithEvents ddlSparesList As System.Web.UI.WebControls.DropDownList
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents DataGrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents lblcomplain As System.Web.UI.WebControls.Label
    Protected WithEvents lblsseremark As System.Web.UI.WebControls.Label
    Protected WithEvents lbldefect As System.Web.UI.WebControls.Label
    Protected WithEvents lblGroup As System.Web.UI.WebControls.Label
    Protected WithEvents lblGroupID As System.Web.UI.WebControls.Label
    'Protected WithEvents pnlSpares As System.Web.UI.WebControls.Panel
    Protected WithEvents Addwork As System.Web.UI.WebControls.TextBox
    Dim pl_count As Integer = 0

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("UserID") = "111111"
        Session("User") = "Mukesh Kumar"

        lblUser.Text = Session("User")
        lblDate.Text = Format(CDate(Date.Now), "dd/MM/yyyy")
        lblGroup.Text = "MW1"

        If Not Page.IsPostBack Then
            Try
                GetGridData()
                get_Spares()
            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try

        End If
    End Sub

    Private Sub GetGridData()

        Dim strSql As String
        Dim strArg As String
        strArg = "select group1,MemoSlip, format(BDFromTime,'dd/MM/yyyy hh:mm' ) as BDFromTime ,Remarks,Shop,Machine,bdtype,defect,SseRemarks from ms_breakdownmemo WHERE FLAG=0  AND techFlag='1' AND TechEmpname ='" & lblUser.Text & "'"

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
        '    End Sub



    End Sub
    Dim i As Integer
    Protected Sub datagrid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DataGrid1.SelectedIndexChanged
        DataGrid1.SelectedIndex = i
        lblMemo.Text = Trim(DataGrid1.Items(i).Cells(2).Text)
        Label1.Text = Trim(DataGrid1.Items(i).Cells(5).Text)
        lblGroup.text = Trim(DataGrid1.Items(i).Cells(1).Text)

    End Sub

    Private Sub DataGrid1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles DataGrid1.ItemCommand
        i = e.Item.ItemIndex()
    End Sub
    
    Private Sub get_Spares()
        Dim dt As DataTable
        dt = Maintenance.tables.Spares(lblGroup.Text.Trim)

        ddlSparesList.DataSource = dt.DefaultView
        ddlSparesList.DataTextField = dt.Columns(1).ColumnName
        ddlSparesList.DataValueField = dt.Columns(0).ColumnName
        ddlSparesList.DataBind()
        ddlSparesList.Items.Insert(0, "select")
        dt = Nothing
    End Sub


    Private Sub ddlSparesList_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ddlSparesList.SelectedIndexChanged
        lblMessage.Text = ""
        txtPlQty.Text = ""
        If ddlSparesList.SelectedIndex = 0 Then
            txtPLNumber.Text = ""
            Exit Sub
        End If
        Dim dt As DataTable
        Try
            txtPLNumber.Text = ddlSparesList.SelectedItem.Value

            dt = Maintenance.tables.Spares(lblGroup.Text.Trim, , , txtPLNumber.Text.Trim)

            If Not IsDBNull(dt.Rows(0)("qtyreqd")) Then
                txtPlQty.Text = dt.Rows(0)("qtyreqd")
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        Finally
            dt.Dispose()
            dt = Nothing
        End Try
    End Sub

    Private Sub PopulateDatatable()
        Dim dt As New DataTable()
        Dim dtPl As New DataTable()
        Dim dr As DataRow
        Dim cnt As Int16
        Dim desc, unit As String
        Try
            dt.TableName = "spares"
            dt.Columns.Add("PlNumber")
            dt.Columns.Add("PLDescription")
            dt.Columns.Add("Unit")
            dt.Columns.Add("Qty")
            If grdSpares.Items.Count > 0 Then
                For cnt = 0 To grdSpares.Items.Count - 1
                    If grdSpares.Items(cnt).Cells(0).Text.Trim <> Trim(txtPLNumber.Text) Then
                        dr = dt.NewRow
                        dr("PlNumber") = grdSpares.Items(cnt).Cells(0).Text
                        dr("PLDescription") = grdSpares.Items(cnt).Cells(1).Text
                        dr("Unit") = grdSpares.Items(cnt).Cells(2).Text
                        dr("Qty") = grdSpares.Items(cnt).Cells(3).Text
                        dt.Rows.Add(dr)
                    Else
                        lblMessage.Text = "PL Number : " & txtPLNumber.Text & " already exists !"
                    End If
                Next
            End If
            dtPl = Maintenance.tables.PLDetails(Trim(txtPLNumber.Text))
            If Trim(IIf(IsDBNull(dtPl.Rows(0)("pl_number")), 0, dtPl.Rows(0)("pl_number"))) = 0 Then
                lblMessage.Text = "Pl Number : " & txtPLNumber.Text & " do not exists..."
                txtPLNumber.Text = ""
                Exit Sub
            Else
                desc = Trim(IIf(IsDBNull(dtPl.Rows(0)("PlShortName")), "", dtPl.Rows(0)("PlShortName")))
                unit = Trim(IIf(IsDBNull(dtPl.Rows(0)("PlUnitName")), "", dtPl.Rows(0)("PlUnitName")))
            End If

            dr = dt.NewRow
            dr("PlNumber") = txtPLNumber.Text
            dr("PLDescription") = Trim(desc)
            dr("Unit") = Trim(unit)
            dr("Qty") = CType(txtPlQty.Text, Integer)
            dt.Rows.Add(dr)
            grdSpares.DataSource = dt
            grdSpares.DataBind()
            txtPLNumber.Text = ""
            txtPlQty.Text = ""
            ddlSparesList.SelectedIndex = 0
        Catch exp As Exception
            lblMessage.Text &= exp.Message
        Finally
            dt.Dispose()
            dtPl.Dispose()
            dt = Nothing
            dtPl = Nothing
        End Try
    End Sub

    Private Sub btnClose_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClose.Click
        If lblMemo.Text = "" Then
            lblMessage.Text = "Please enter MemoNo"
        Else
            Try
                If txtPlQty.Text <= 0 Then

                Else
                    insert()
                    PopulateDatatable()
                End If

            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try
        End If
    End Sub

    Protected Sub BtnClose1_Click(sender As Object, e As EventArgs) Handles BtnClose1.Click
        If lblMemo.Text = "" Then
            lblMessage.Text = "Please enter MemoNo"
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
        Dim Add_Work As String = Addwork.Text
        Dim TechRemarks As String = Remarks.Text

        cmd.CommandText = "update ms_BreakDownMemo Set AddWork=@Add_Work,TechRemark=@TechRemarks,techFlag=2 where MemoSlip=@MemoNo"
        cmd.Parameters.AddWithValue("@MemoNo", MemoNo)
        cmd.Parameters.AddWithValue("@Add_Work", Add_Work)
        cmd.Parameters.AddWithValue("@TechRemarks", TechRemarks)

        Try
            cmd.Connection.Open()

            If cmd.ExecuteNonQuery() = 1 Then
                done = True

            End If

        Catch exp As Exception
            lblMessage.Text = exp.Message
        Finally

            If cmd.Connection.State = ConnectionState.Open Then cmd.Connection.Close()
            cmd.Dispose()
            cmd = Nothing

        End Try
    End Sub
    Public Sub insert()
        Dim done As Boolean
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim MemoNo As String = lblMemo.Text
        Dim Staff As String = lblGroup.Text
        Dim PL_NO As String = txtPLNumber.Text
        Dim PL_Desc As String = ddlSparesList.SelectedItem.Text
        Dim Qty As Integer = CType(txtPlQty.Text, Integer)
        cmd.CommandText = "insert into ms_Breakdown_SpareDeatail (MemoNo,Staff,PL_No,Qty,PL_desc1) values(@MemoNo,@Staff,@PL_No,@Qty,@PL_Desc)"
        ',PL_desc,@PL_Desc
        cmd.Parameters.AddWithValue("@MemoNo", MemoNo)
        cmd.Parameters.AddWithValue("@Staff", Staff)
        cmd.Parameters.AddWithValue("@PL_No", PL_NO)
        cmd.Parameters.AddWithValue("@PL_Desc", PL_Desc)
        cmd.Parameters.AddWithValue("@Qty", Qty)
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
        Dim message = "machine(no): " + Label1.Text + " is operational now.Please review it"
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = (" select distinct Email_Id from usercontact_details where Designation like '%sse%' and Email_Id!='' and Shop_User_Code='MW1'")
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
        Dim message = "machine(no): " + Label1.Text + " is operational now.Please review it"
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        cmd.CommandText = (" select distinct Mobile_No from usercontact_details where Designation like '%sse%' and Mobile_No!='' and Shop_User_Code='MW1'")
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