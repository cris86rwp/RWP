
Imports System.Net
Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class WebForm2
    Inherits System.Web.UI.Page
    'Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    'Protected WithEvents txtDate As System.Web.UI.WebControls.TextBox
    'Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    'Protected WithEvents rblShift As System.Web.UI.WebControls.RadioButtonList
    'Protected WithEvents lblDepartment_code As System.Web.UI.WebControls.Label
    'Protected WithEvents rblShop As System.Web.UI.WebControls.RadioButtonList
    'Protected WithEvents lblGroupCode As System.Web.UI.WebControls.Label
    'Protected WithEvents txtOperator As System.Web.UI.WebControls.TextBox
    'Protected WithEvents txtMemoslip As System.Web.UI.WebControls.TextBox
    'Protected WithEvents lblMemo As System.Web.UI.WebControls.Label
    'Protected WithEvents ddlMachineCodes As System.Web.UI.WebControls.DropDownList
    'Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    'Protected WithEvents rblBDType As System.Web.UI.WebControls.DropDownList
    'Protected WithEvents lstBDCodes As System.Web.UI.WebControls.ListBox
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
    'Protected WithEvents lstBDCodes As System.Web.UI.WebControls.DropDownList
    Protected WithEvents dd1 As System.Web.UI.WebControls.DropDownList
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Session("UserID") = "111111"
        Session("Group") = "WHLMLT"
        txtOperator.Text = Session("UserID")
        lblGroupCode.Text = Session("Group")
        lblDepartment_code.Text = "M"
        If Not Page.IsPostBack Then
            Try
                SetDefaultDateTime()
                GetShopCodes()
                PopulateMachines()
                GetBDCodes()
                GetBDCodeDesc()
                '  getBreakdown_number()
                GetGridData()
            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try
        End If
    End Sub
    Private Sub GetBDCodeDesc()
        Dim dt As DataTable
        dt = GetShopCodes1(rblBDType.SelectedItem.Value)
        '
        dd1.DataSource = dt
        dd1.DataTextField = dt.Columns(0).ColumnName
        ' dd1.DataValueField = dt.Columns(1).ColumnName
        dd1.DataBind()
        dd1.Items.Insert(0, "Select")
        dd1.SelectedIndex = 0
        dt = Nothing
    End Sub
    Public Shared Function GetShopCodes1(ByVal BDType As String) As DataTable
        Dim da As SqlClient.SqlDataAdapter = rwfGen.Connection.Adapter
        Dim ds As New DataSet()
        Try

            da.SelectCommand.CommandText = " select codeDesc from mm_vw_bdcodes where bdtype='BDB'"
            da.SelectCommand.Parameters.Add("@BDCode", SqlDbType.VarChar, 10).Value = BDType.Trim
            da.Fill(ds)
            GetShopCodes1 = ds.Tables(0)
        Catch exp As Exception
            GetShopCodes1 = Nothing
            Throw New Exception(exp.Message)
        Finally
            da.Dispose()
            ds.Dispose()
            da = Nothing
            ds = Nothing
        End Try
    End Function

    Private Sub GetShopCodes()
        Dim dt As DataTable
        dt = RWF.BreakDown.GetShopCodes(lblGroupCode.Text)
        rblShop.DataSource = dt
        rblShop.DataTextField = dt.Columns(0).ColumnName
        rblShop.DataValueField = dt.Columns(1).ColumnName
        rblShop.DataBind()
        rblShop.SelectedIndex = 0
        dt = Nothing
    End Sub
    Private Sub SetDefaultDateTime()
        Try
            Dim dtshift As New rwfGen.DateShift("ms_breakdown_memo", "breakdown_Date", "memo_number")
            txtDate.Text = Format(CDate(dtshift.DefaultDate), "dd/MM/yyyy")
            txtFrom_date.Text = Now.Date
            txtFrom_time.Text = Right(("0" + Now.Hour.ToString), 2) + ":" + Right(("0" + Now.Minute.ToString), 2)

        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try

    End Sub
    Private Sub PopulateMachines()
        Dim dt As DataTable
        dt = RWF.BreakDown.GetMachineCodes(lblGroupCode.Text.Trim, rblShop.SelectedItem.Text.Trim)
        ddlMachineCodes.DataSource = dt
        ddlMachineCodes.DataTextField = dt.Columns(0).ColumnName
        ddlMachineCodes.DataValueField = dt.Columns(1).ColumnName
        ddlMachineCodes.DataBind()
        ddlMachineCodes.Items.Insert(0, "Select")
        ddlMachineCodes.SelectedIndex = 0
        dt = Nothing
    End Sub
    Private Sub GetBDCodes(Optional ByVal EqpID As String = "BAK")
        Dim dt As DataTable
        Dim Eqp As String

        If ddlMachineCodes.SelectedItem.Text.Trim.ToLower = "select" Then
            Eqp = EqpID
        Else
            Eqp = ddlMachineCodes.SelectedItem.Value.Substring(2, 3)
        End If

        dt = RWF.BreakDown.GetBDCodes(Eqp, lblGroupCode.Text.Trim)


        rblBDType.DataSource = dt
        rblBDType.DataTextField = dt.Columns(1).ColumnName
        rblBDType.DataValueField = dt.Columns(0).ColumnName
        rblBDType.DataBind()
        rblBDType.Items.Insert(0, "Select")
        rblBDType.SelectedIndex = 0

        rblBDType.ClearSelection()
        dt = Nothing

        dt = Nothing
        Eqp = Nothing

    End Sub

    Private Sub rblShop_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles rblShop.SelectedIndexChanged
        lblMessage.Text = ""
        Try
            If rblShop.SelectedItem.Text.Trim.ToLower = "rt" Then
                GetBDCodes1()
            Else
                GetBDCodes()
            End If
            PopulateMachines()


        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
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
            strArg = "select group1,MemoSlip, format(BDFromTime,'dd/MM/yyyy hh:mm' ) as BDFromTime ,Remarks,format(BDTranDate,'dd/MM/yyyy') as BDTranDate,shift,Shop,Machine,bdtype,defect from ms_breakdownmemo  where FLAG=0 and retFlag=0 order by MemoSlip desc"
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
    Dim i As Integer
    Protected Sub datagrid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DataGrid1.SelectedIndexChanged

        DataGrid1.SelectedIndex = i
        txtDate.Text = DataGrid1.Items(i).Cells(5).Text
        lblGroupCode.Text = Trim(DataGrid1.Items(i).Cells(1).Text)
        lblMemo.Text = Trim(DataGrid1.Items(i).Cells(2).Text)
        txtFrom_date.Text = Trim(DataGrid1.Items(i).Cells(3).Text)
        txtRemarks.Text = DataGrid1.Items(i).Cells(4).Text
        rblShift.SelectedItem.Value = DataGrid1.Items(i).Cells(6).Text
        rblShop.SelectedItem.Value = DataGrid1.Items(i).Cells(7).Text
        ddlMachineCodes.SelectedItem.Value = DataGrid1.Items(i).Cells(8).Text
        rblBDType.SelectedItem.Value = DataGrid1.Items(i).Cells(9).Text
    End Sub

    Private Sub DataGrid1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles DataGrid1.ItemCommand
        i = e.Item.ItemIndex()
    End Sub
    Private Sub GetBDCodes1(Optional ByVal EqpID As String = "BAK")
        Dim dt As DataTable
        Dim Eqp As String
        If ddlMachineCodes.SelectedItem.Text.Trim.ToLower = "select" Then
            Eqp = EqpID
        Else
            Eqp = ddlMachineCodes.SelectedItem.Value.Substring(2, 3)
        End If
        dt = RWF.BreakDown.GetBDCodes1(Eqp, lblGroupCode.Text.Trim)

        rblBDType.DataSource = dt
        rblBDType.DataTextField = dt.Columns(1).ColumnName
        rblBDType.DataValueField = dt.Columns(0).ColumnName
        rblBDType.DataBind()
        rblBDType.Items.Insert(0, "Select")
        rblBDType.SelectedIndex = 0
        rblBDType.ClearSelection()
        dt = Nothing
        'GetBDCodeDesc()
        dt = Nothing
        Eqp = Nothing
    End Sub
    Private Sub rblBDType_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles rblBDType.SelectedIndexChanged

    End Sub
    Private Sub getBreakdown_number()
        Dim shop As Integer
        Dim grp As Integer
        Dim count As Integer
        If rblShop.SelectedItem.Text.Trim = "RT" Then
            shop = "11"
        Else
            shop = "10"
        End If
        If lblGroupCode.Text.Trim = "WHLMLT" Then
            grp = "10"
        ElseIf lblGroupCode.Text.Trim = "AWMCLR" Then
            grp = "11"
        ElseIf lblGroupCode.Text.Trim = "MRSMRS" Then
            grp = "12"
        Else
            grp = "13"
        End If

        Dim x As String = Format(CDate(txtDate.Text), "yy")
        Dim oCmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        oCmd.Parameters.Add("@MemoNo", SqlDbType.Int, 4).Direction = ParameterDirection.Output
        Try
            If oCmd.Connection.State = ConnectionState.Closed Then oCmd.Connection.Open()
            oCmd.CommandText = "select @MemoNo=count(MemoSlip) from ms_BreakDownMemo "
            oCmd.ExecuteScalar()
            count = IIf(IsDBNull(oCmd.Parameters("@MemoNo").Value), 1, oCmd.Parameters("@MemoNo").Value + 1)
        Catch exp As Exception
            count = 0
        Finally
            If oCmd.Connection.State = ConnectionState.Open Then oCmd.Connection.Close()
            oCmd.Dispose()
            oCmd = Nothing
        End Try
        lblMemo.Text = x & shop & grp & count

    End Sub

    Public Function xyz()
        Dim done As Boolean
        If ddlMachineCodes.SelectedIndex = 0 Then
            lblMessage.Text = "Please select machine code"
            done = "true"
        Else
            done = "false"
        End If
        Return done
    End Function

    Public Function abc()
        Dim done As Boolean
        If rblBDType.SelectedIndex = 0 Then
            lblMessage.Text = "Please select Breakdown type"
            done = "true"
        Else
            done = "false"
        End If
        Return done
    End Function
    Public Function problem()
        Dim done As Boolean
        If dd1.SelectedIndex = 0 Then
            lblMessage.Text = "Please select Problem type"
            done = "true"
        Else
            done = "false"
        End If
        Return done
    End Function

    Public Function txtFrom()
        Dim done As Boolean
        'btnSave.Enabled = True
        'If txtFrom_date.Text = "" Then
        '    lblMessage.Text = "Please Enter The date"
        '    done = True


        'End If
        If txtFrom_date.Text = "" Then
            done = True

        ElseIf CDate(Trim(txtFrom_date.Text)) > CDate(Trim(txtDate.Text)) Then
            lblMessage.Text = "Breakdown Date Can't be Greater Than Current Date "
            txtFrom_date.Text = ""
            'btnSave.Enabled = False

            done = True

        End If

        lblMessage.Text = ""
        btnSave.Enabled = True


        Return done
        '  GetGridData()
    End Function

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim dae As Boolean
        dae = txtFrom()
        If dae = True Then
            lblMessage.Text = "Enter valid date"
        Else
            If txtFrom_time.Text < "00:00" Then
                lblMessage.Text = "Enter valid time"
                Exit Sub
            Else
                Dim mach As Boolean
                Dim done1 As Boolean
                Dim pbtype As Boolean
                pbtype = problem()

                done1 = abc()
                mach = xyz()

                If mach = "false" And done1 = "false" And pbtype = "false" Then

                    lblMessage.Text = ""
                    getBreakdown_number()
                    Dim done As Boolean

                    Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
                    Try
                        Dim Department As String = lblDepartment_code.Text
                        Dim transDate As DateTime = Format(CDate(txtDate.Text), "dd/MM/yyyy")
                        Dim GroupCode As String = lblGroupCode.Text
                        Dim MemoNo As String = lblMemo.Text
                        Dim Remarks As String = txtRemarks.Text
                        Dim BDFromTime As DateTime = CDate(txtFrom_date.Text & " " & txtFrom_time.Text)
                        Dim shift As String = rblShift.SelectedItem.Value
                        Dim shop As String = rblShop.SelectedItem.Text
                        Dim Machine As String = ddlMachineCodes.SelectedItem.Value
                        Dim Operators As String = txtOperator.Text
                        Dim BDType As String = rblBDType.SelectedItem.Text
                        Dim Defect As String = dd1.SelectedItem.Text

                        cmd.CommandText = "insert into ms_BreakDownMemo ( Group1 , MemoSlip,BDFromTime, Remarks , BDTranDate, Shift , Shop , Machine , Operator  , BDType,Department1,FLAG,techFlag,retFlag,Defect) " &
                              "values ( @GroupCode , @MemoNo,@BDFromTime,@Remarks,@transDate,@shift,@shop,@Machine,@Operators,@BDType, @Department,0,0,0,@Defect)"
                        cmd.Parameters.AddWithValue("@Defect", Defect)
                        cmd.Parameters.AddWithValue("@GroupCode", GroupCode)
                        cmd.Parameters.AddWithValue("@MemoNo", MemoNo)
                        cmd.Parameters.AddWithValue("@BDFromTime", BDFromTime)
                        cmd.Parameters.AddWithValue("@Remarks", Remarks)
                        cmd.Parameters.AddWithValue("@transDate", transDate)
                        cmd.Parameters.AddWithValue("@shift", shift)
                        cmd.Parameters.AddWithValue("@shop", shop)
                        cmd.Parameters.AddWithValue("@Machine", Machine)
                        cmd.Parameters.AddWithValue("@Operators", Operators)
                        cmd.Parameters.AddWithValue("@BDType", BDType)
                        cmd.Parameters.AddWithValue("@Department", Department)

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
                        ''get_sms()
                        ''get_email()
                        ''get_email1()
                        ''get_sms1()

                    Catch exp As Exception
                        'lblMessage.Text = "PLease enter valid  date and time"
                        Exit Sub
                    End Try

                Else
                End If
            End If
        End If

    End Sub

    Public Sub get_sms()

        Dim message = "MEMO NO:" + lblMemo.Text + vbNewLine + "Machine name:" + ddlMachineCodes.Text + vbNewLine + "START DATE:" + txtFrom_date.Text + "TIME:" + txtFrom_time.Text + vbNewLine + "SHOP CODE:" + rblShop.SelectedItem.Text + vbNewLine + "DEFECT:" + dd1.SelectedItem.Text + vbNewLine + "REMARKS:" + txtRemarks.Text.Trim
        'Try
        Dim sc As String = rblShop.SelectedItem.Text
        Dim s1 As String = rblBDType.SelectedItem.Value
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        If (lblGroupCode.Text = "WHLMLT") Then
            If String.Compare(sc, "ME") = 0 Then
                If String.Compare(s1, "BDB") = 0 Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='EW1' or shop_User_code='MW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDU") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='UTILIT' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDEC") Or String.Compare(s1, "BDEP") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='EW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDM") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='MW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDC") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='CIVIL' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                End If
            ElseIf String.Compare(sc, "RT") = 0 Then
                If String.Compare(s1, "BDRT") = 0 Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='RT SHOP'  and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                End If
            End If
        ElseIf (lblGroupCode.Text = "AWMCLR") Then
            If String.Compare(sc, "CL") = 0 Then
                If String.Compare(s1, "BDB") = 0 Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='EW3' or shop_User_code='MW3' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDU") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='UTILIT' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDEC") Or String.Compare(s1, "BDEP") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='ELECTRI' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDM") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='MW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDC") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='CIVIL' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                End If
            ElseIf String.Compare(sc, "RT") = 0 Then
                If String.Compare(s1, "BDRT") = 0 Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='RT SHOP'  and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                End If
            End If
        ElseIf (lblGroupCode.Text = "MLDING") Then
            If String.Compare(sc, "MO") = 0 Then
                If String.Compare(s1, "BDB") = 0 Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='EW2' or shop_User_code='MW2' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDU") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='UTILIT' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDEC") Or String.Compare(s1, "BDEP") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='ELECTRI' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDM") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='MW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDC") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='CIVIL' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                End If
            ElseIf String.Compare(sc, "RT") = 0 Then
                If String.Compare(s1, "BDRT") = 0 Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='RT SHOP'  and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                End If
            End If
        ElseIf (lblGroupCode.Text = "MRSMRS") Then
            If String.Compare(sc, "MS") = 0 Then
                If String.Compare(s1, "BDB") = 0 Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='EW3' or shop_User_code='MW2' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDU") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='UTILIT' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDEC") Or String.Compare(s1, "BDEP") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='ELECTRI' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDM") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='MW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDC") Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='CIVIL' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                End If
            ElseIf String.Compare(sc, "RT") = 0 Then
                If String.Compare(s1, "BDRT") = 0 Then
                    cmd.CommandText = ("select distinct Mobile_No from UserContact_Details where shop_User_code='RT SHOP'  and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                End If
            End If
        End If
    End Sub

    Public Sub get_email()
        Dim message = "MEMO NO:" + lblMemo.Text + vbNewLine + "Machine name:" + ddlMachineCodes.Text + vbNewLine + "START DATE:" + txtFrom_date.Text + "TIME:" + txtFrom_time.Text + vbNewLine + "SHOP CODE:" + rblShop.SelectedItem.Text + vbNewLine + "DEFECT:" + dd1.SelectedItem.Text + vbNewLine + "REMARKS:" + txtRemarks.Text.Trim
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()
        Dim s1 As String = rblBDType.SelectedItem.Value
        Dim sc As String = rblShop.SelectedItem.Text
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        cmd.Connection.Open()
        If (lblGroupCode.Text = "WHLMLT") Then
            If String.Compare(sc, "ME") = 0 Then
                If String.Compare(s1, "BDB") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='EW1' or shop_User_code='MW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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


                ElseIf String.Compare(s1, "BDU") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='UTILIT' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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
                ElseIf String.Compare(s1, "BDM") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='MW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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


                ElseIf String.Compare(s1, "BDE") Or String.Compare(s1, "BDEP") Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='ELECTRI' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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


                ElseIf String.Compare(s1, "BDC") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='CIVIL' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                End If
            ElseIf String.Compare(sc, "RT") = 0 Then
                If String.Compare(s1, "BDRT") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='RT SHOP' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='ME'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                End If
            End If
        ElseIf (lblGroupCode.Text = "MRSMRS") Then
            If String.Compare(sc, "MS") = 0 Then
                If String.Compare(s1, "BDB") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='EW3' or shop_User_code='MW2' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDU") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='UTILIT' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDE") Or String.Compare(s1, "BDEP") Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='ELECTRI' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDM") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='MW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDC") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='CIVIL' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                End If
            ElseIf String.Compare(sc, "RT") = 0 Then
                If String.Compare(s1, "BDRT") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='RT SHOP' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MS'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                End If
            End If
        ElseIf (lblGroupCode.Text = "MLDING") Then
            If String.Compare(sc, "MO") = 0 Then
                If String.Compare(s1, "BDB") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='EW2' or shop_User_code='MW2' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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


                ElseIf String.Compare(s1, "BDU") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='UTILIT' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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


                ElseIf String.Compare(s1, "BDE") Or String.Compare(s1, "BDEP") Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='ELECTRI' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDM") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='MW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDC") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='CIVIL' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                End If
            ElseIf String.Compare(sc, "RT") = 0 Then
                If String.Compare(s1, "BDRT") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='RT SHOP' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='MO'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                End If
            End If
        ElseIf (lblGroupCode.Text = "AWMCLR") Then
            If String.Compare(sc, "CL") = 0 Then
                If String.Compare(s1, "BDB") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='EW3' or shop_User_code='MW3' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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


                ElseIf String.Compare(s1, "BDU") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='UTILIT' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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


                ElseIf String.Compare(s1, "BDE") Or String.Compare(s1, "BDEP") Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='ELECTRI' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDM") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='MW1' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                ElseIf String.Compare(s1, "BDC") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='CIVIL' and   designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                End If
            ElseIf String.Compare(sc, "RT") = 0 Then
                If String.Compare(s1, "BDRT") = 0 Then
                    cmd.CommandText = ("select distinct Email_Id from UserContact_Details where shop_User_code='RT SHOP' and  designation like '%SSE%' or designation like '%AWM%' or designation like '%WM%' and shop_code='CL'")
                    cmd.Parameters.AddWithValue("@s1", s1)
                    cmd.Parameters.AddWithValue("@sc", sc)
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

                End If
            End If
        End If
    End Sub

    Public Sub get_email1()
        Dim message = "Your complain is registered with MEMO NO:" + lblMemo.Text + vbNewLine + "Machine name:" + ddlMachineCodes.Text + vbNewLine + "START DATE:" + txtFrom_date.Text + "TIME:" + txtFrom_time.Text + vbNewLine + "SHOP CODE:" + rblShop.SelectedItem.Text + vbNewLine + "DEFECT:" + dd1.SelectedItem.Text + vbNewLine + "REMARKS:" + txtRemarks.Text.Trim
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
    Public Sub get_sms1()
        Dim message = "MEMO NO:" + lblMemo.Text + vbNewLine + "Machine name:" + ddlMachineCodes.Text + vbNewLine + "START DATE:" + txtFrom_date.Text + "TIME:" + txtFrom_time.Text + vbNewLine + "SHOP CODE:" + rblShop.SelectedItem.Text + vbNewLine + "DEFECT:" + dd1.SelectedItem.Text + vbNewLine + "REMARKS:" + txtRemarks.Text.Trim
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