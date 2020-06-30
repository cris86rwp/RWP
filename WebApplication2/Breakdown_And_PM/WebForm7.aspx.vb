Imports System.Net
Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class WebForm7
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
        lblMGroup.Text = Session("group")
        txtDate.Text = Format(Date.Now, "dd/MM/yyyy")
        txtFrom.Text = Format(Date.Now, "dd/MM/yyyy")
        ' shop = ddlShopCode.SelectedItem.Value
        If Not Page.IsPostBack Then
            Try
                getWONO()
                PopulateTechnician()
                'PopulateMachineCode(ddlShopCode.SelectedItem.Value)
                GetGridData1()
            Catch ex As Exception
                lblMessage.Text = ex.Message
            End Try
        End If
    End Sub
    'Private Sub PopulateMachineCode(ByVal shop As String)
    '    ' cboMachine.Items.Clear()
    '    Dim dt As DataTable
    '    Try
    '        dt = PMSMachineCode(ddlShopCode.SelectedItem.Text.Trim)
    '        cboMachine.DataSource = dt.DefaultView
    '        cboMachine.DataValueField = dt.Columns("machine_code").ColumnName
    '        cboMachine.DataTextField = dt.Columns("Description").ColumnName
    '        cboMachine.DataBind()
    '        cboMachine.Items.Insert(0, "Select")

    '    Catch exp As Exception
    '        lblMessage.Text = exp.Message
    '    Finally
    '        dt.Dispose()
    '    End Try
    'End Sub
    Public Sub getWONO()
        Dim count As String
        Dim oCmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        oCmd.Parameters.Add("@WONo", SqlDbType.Int, 4).Direction = ParameterDirection.Output
        Try
            If oCmd.Connection.State = ConnectionState.Closed Then oCmd.Connection.Open()
            oCmd.CommandText = "select @WONo=count(WorkOrderNo) from ms_PMTechAllotment "
            oCmd.ExecuteScalar()
            count = IIf(IsDBNull(oCmd.Parameters("@WONo").Value), 1, oCmd.Parameters("@WONo").Value + 1)
        Catch exp As Exception
            count = 0
        Finally
            If oCmd.Connection.State = ConnectionState.Open Then oCmd.Connection.Close()
            oCmd.Dispose()
            oCmd = Nothing
        End Try
        txtWorkOrderNo.Text = count
    End Sub
    Private Sub GetGridData1()
        Dim objCmd As SqlCommand
        Dim objDr As SqlDataReader
        '  Dim con As New SqlConnection("Data Source=rwpbeladev.southindia.cloudapp.azure.com,1433;Initial Catalog=wapdev; User ID=cristrg;Password=trg123")
        Dim con As New SqlConnection(ConfigurationManager.AppSettings("con"))

        If con.State = ConnectionState.Closed Then
            con.Open()
        Else
            con.Close()
            con.Open()
        End If
        Dim strSql As String
        Try
            Dim strArg As String
            strArg = "select * from ms_preventiveMaintenanceDetails where Next_Due_date='" & Format(CDate(txtDate.Text), "yyyy/MM/dd") & "'and Flag=1"
            objCmd = New SqlCommand(strArg, con)

            objDr = objCmd.ExecuteReader()
            Dim arr() As String
            datagrid2.DataSource = arr
            datagrid2.DataBind()
            datagrid2.DataSource = objDr
            datagrid2.DataBind()
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
    Protected Sub datagrid2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles datagrid2.SelectedIndexChanged
        datagrid2.SelectedIndex = i

        ddlShopCode.Text = Trim(datagrid2.Items(i).Cells(1).Text)
        cboMachine.Text = Trim(datagrid2.Items(i).Cells(2).Text)
        'AddWork.Text = Trim(DataGrid1.Items(i).Cells(12).Text)
        'txtOperator.Text = Trim(DataGrid1.Items(i).Cells(13).Text)
        'txtdefect.text = Trim(DataGrid1.Items(i).Cells(7).Text)
        'Tech.Text = Trim(DataGrid1.Items(i).Cells(8).Text)
        'GetGridData1()
    End Sub

    Private Sub DataGrid1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles DataGrid1.ItemCommand
        i = e.Item.ItemIndex()
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

    'Protected Sub ddlShopCode_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlShopCode.SelectedIndexChanged
    '    PopulateMachineCode(ddlShopCode.SelectedItem.Value)
    'End Sub

    Private Sub PopulateTechnician()
        Dim dt As DataTable
        dt = getTech(lblMGroup.Text.Trim)
        Dropdownlist1.DataSource = dt
        Dropdownlist1.DataTextField = dt.Columns(0).ColumnName
        Dropdownlist1.DataValueField = dt.Columns(0).ColumnName
        Dropdownlist1.DataBind()
        Dropdownlist1.Items.Insert(0, "Select")
        Dropdownlist1.SelectedIndex = 0
        dt = Nothing
    End Sub

    Public Shared Function getTech(ByVal Shop As String) As DataTable
        Dim da As SqlClient.SqlDataAdapter = rwfGen.Connection.Adapter
        Dim ds As New DataSet()
        Try
            da.SelectCommand.CommandText = "SELECT Emp_Name FROM UserContact_Details where Designation='TECH– I' or Designation='TECH– II' and Shop_code ='" & Trim(Shop.Trim) & "'"
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
    Public Sub update()
        Dim done As Boolean
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim machine As String = cboMachine.Text
        Dim Date1 As Date = Format(CDate(txtDate.Text), "yyyy/MM/dd")
        cmd.CommandText = "update ms_BreakDownMemo set Flag=0 where machine_code=@machine and next_due_date=@Date1"
        cmd.Parameters.AddWithValue("@machine", machine)
        cmd.Parameters.AddWithValue("@Date1", Date1)
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
    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Dim done As Boolean

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim Date1 As Date = Format(CDate(txtDate.Text), "dd/MM/yyyy")
        Dim Shop As String = ddlShopCode.Text
        Dim WorkOrder As String = txtWorkOrderNo.Text
        Dim Machine As String = cboMachine.Text
        Dim DateAtt As Date = txtFrom.Text
        Dim Technician As String = Dropdownlist1.SelectedItem.Value
        Dim Remarks As String = txtRemarks.Text
        cmd.CommandText = "	  insert into ms_PMTechAllotment(WorkOrderNo,Date1,Shop,Machine,DateAttend,Remarks)" &
                  "values(@WorkOrder,@Date1,@Shop,@Machine,@DateAtt,@Remarks)"
        cmd.Parameters.AddWithValue("@WorkOrder", WorkOrder)
        cmd.Parameters.AddWithValue("@Date1", Date1)
        cmd.Parameters.AddWithValue("@Shop", Shop)
        cmd.Parameters.AddWithValue("@Machine", Machine)
        cmd.Parameters.AddWithValue("@DateAtt", DateAtt)
        cmd.Parameters.AddWithValue("@Remarks", Remarks)
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
            update()
        Else
            lblMessage.Text = "data not saved"
        End If

    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        Dim done As Boolean

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim tech As String = Dropdownlist1.SelectedItem.Value
        Dim WorkOrder As String = txtWorkOrderNo.Text
        cmd.CommandText = "	  insert into ms_PMTech(WorkOrderNo,Technician)" &
                  "values(@WorkOrder,@tech)"
        cmd.Parameters.AddWithValue("@WorkOrder", WorkOrder)
        cmd.Parameters.AddWithValue("@tech", tech)
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
        GetGridData()
    End Sub
    Private Sub GetGridData()
        Dim strSql As String

        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        Dim con As New SqlConnection(ConfigurationManager.AppSettings("con"))
        Dim objCmd1 As SqlCommand
        Dim objDr1 As SqlDataReader
        Dim strarg = "select Technician from ms_PMTech where Workorderno='" & txtWorkOrderNo.Text & "'"

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
            lblMessage.Text = "Line : " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message

        Catch exp As Exception
            strSql = exp.StackTrace
            lblMessage.Text = "Line : " & Mid(strSql, InStr(strSql, "line") + 5) & " Message : " + exp.Message
        End Try
        con.Close()
        '    End Sub


    End Sub
End Class