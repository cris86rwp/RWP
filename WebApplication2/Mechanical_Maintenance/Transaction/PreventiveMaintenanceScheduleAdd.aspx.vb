Public Class PreventiveMaintenanceScheduleAdd
    Inherits System.Web.UI.Page

    Protected WithEvents btnSave As System.Web.UI.WebControls.Button
    Protected WithEvents lblMode As System.Web.UI.WebControls.Label
    Protected WithEvents txtFrom As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtTo As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnClear As System.Web.UI.WebControls.Button
    Protected WithEvents txtRemarks As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFrom_time As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtTo_time As System.Web.UI.WebControls.TextBox
    Protected WithEvents shopCode As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents cboMachine As System.Web.UI.WebControls.DropDownList
    Protected WithEvents cboAssembly As System.Web.UI.WebControls.DropDownList
    Protected WithEvents radType As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents lblDept As System.Web.UI.WebControls.Label
    Protected WithEvents lblUserID As System.Web.UI.WebControls.Label
    Protected WithEvents lblGroup As System.Web.UI.WebControls.Label
    Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents lblMGroup As System.Web.UI.WebControls.Label
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents lblMessage1 As System.Web.UI.WebControls.Label

    Protected WithEvents Dd1 As System.Web.UI.WebControls.DropDownList

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Shared themeValue As String

    Public Sub New()

        AddHandler PreInit, New EventHandler(AddressOf Page_PreInit)
    End Sub

    Private Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs)

        Page.Theme = themeValue
    End Sub


    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Dim grp As String
        Dim shop As String
        lblUserID.Visible = False
        lblGroup.Visible = False
        lblMode.Text = Request.QueryString("mode")
        lblUserID.Text = Session("UserID")
        'lblMode.Text = "edit"
        lblMode.Text = "add"
        'Session("group") = "EW3"
        'lblUserID.Text = "077243"
        If Session("group") = "RTSHOP" Then
            Session("group") = "MRT"
        End If
        grp = Session("group")
        shop = shopCode.SelectedItem.Text.Trim

        lblDept.Text = grp.Substring(0, 1)
        lblDept.Visible = False
        lblMGroup.Text = grp.Substring(1)
        lblUserID.Text = Session("UserID")
        lblGroup.Text = Session("group")
        If Not Page.IsPostBack Then
            Try
                If lblMode.Text = "add" Then
                    lblMode.Text = "add"
                    txtFrom.Visible = True
                    ' cboWorkOrderNo.Visible = False
                    txtFrom.Text = Date.Today

                    Dim IntervalType As String

                    If radType.SelectedItem.Value = "Weekly" Then

                        IntervalType = "ww"
                        txtTo.Text = DateAdd(IntervalType, 1, txtFrom.Text)

                    ElseIf radType.SelectedItem.Value = "Monthly" Then
                        IntervalType = "m"
                        txtTo.Text = DateAdd(IntervalType, 1, txtFrom.Text)

                    ElseIf radType.SelectedItem.Value = "Quarterly" Then
                        IntervalType = "q"
                        txtTo.Text = DateAdd(IntervalType, 1, txtFrom.Text)

                    ElseIf radType.SelectedItem.Value = "Halfyearly" Then
                        IntervalType = "yyyy"
                        txtTo.Text = DateAdd(IntervalType, 0.5, txtFrom.Text)

                    ElseIf radType.SelectedItem.Value = "Yearly" Then
                        IntervalType = "yyyy"
                        txtTo.Text = DateAdd(IntervalType, 1, txtFrom.Text)

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
                    '  txtTo.Text = Date.Today
                    txtFrom_time.Text = "00:00"
                    txtTo_time.Text = "00:00"

                ElseIf lblMode.Text = "add" Then
                    lblMode.Text = "edit"
                    txtFrom.Visible = True
                    '  cboWorkOrderNo.Visible = True

                    txtFrom_time.Visible = True
                    ' txtpl_qty.Text = 0
                End If
                PopulateMachineCode(lblMode.Text, shop, grp)
            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try
        End If

    End Sub

    Protected Sub dd1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        themeValue = Dd1.SelectedItem.Value
        Response.Redirect(Request.Url.ToString())
    End Sub

    Private Sub PopulateMachineCode(ByVal mode As String, ByVal shop As String, ByVal Group As String)
        cboMachine.Items.Clear()
        Dim dt As DataTable
        Try
            dt = Maintenance.tables.PMSMachineCode(mode, shopCode.SelectedItem.Text.Trim, CDate(txtFrom.Text), lblGroup.Text.Trim)
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


    Private Sub FillDDLs(ByVal dt As DataTable, ByVal ddl As DropDownList)
        ddl.DataSource = dt.DefaultView
        ddl.DataTextField = dt.Columns(1).ColumnName
        ddl.DataValueField = dt.Columns(0).ColumnName
        ddl.DataBind()
    End Sub



    Private Sub PopulateSubAssembly()
        Dim dt As DataTable
        Dim grp As String
        grp = lblDept.Text + lblMGroup.Text
        Try
            dt = Maintenance.tables.GetPMSSubAssemblyList(lblMode.Text, cboMachine.SelectedItem.Value, grp, shopCode.SelectedItem.Text.Trim)
            cboAssembly.DataSource = dt
            cboAssembly.DataTextField = dt.Columns("description").ColumnName
            cboAssembly.DataValueField = dt.Columns("code").ColumnName
            cboAssembly.DataBind()

            cboAssembly.Items.Insert(0, "Select")
        Catch exp As Exception
            lblMessage.Text = exp.Message
        Finally
            dt.Dispose()
        End Try
    End Sub

    Private Sub ClearDetails()
        txtFrom.Text = ""
        txtFrom_time.Text = ""
        txtTo.Text = ""
        txtTo_time.Text = ""
    End Sub


    Private Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        lblMessage.Text = ""
        lblMessage1.Text = ""

        Dim fr_dt, to_dt As DateTime
        Dim IntervalType As String
        '  Dim Number As Integer
        fr_dt = txtFrom.Text & " " & txtFrom_time.Text

        If radType.SelectedItem.Value = "Weekly" Then

            IntervalType = "ww"
            to_dt = DateAdd(IntervalType, 1, fr_dt)

        ElseIf radType.SelectedItem.Value = "Monthly" Then
            IntervalType = "m"
            to_dt = DateAdd(IntervalType, 1, fr_dt)

        ElseIf radType.SelectedItem.Value = "Quarterly" Then
            IntervalType = "q"
            to_dt = DateAdd(IntervalType, 1, fr_dt)

        ElseIf radType.SelectedItem.Value = "Halfyearly" Then
            IntervalType = "yyyy"
            to_dt = DateAdd(IntervalType, 0.5, fr_dt)

        ElseIf radType.SelectedItem.Value = "Yearly" Then
            IntervalType = "yyyy"
            to_dt = DateAdd(IntervalType, 1, fr_dt)

        ElseIf radType.SelectedItem.Value = "50Hrs" Then
            IntervalType = "h"
            to_dt = DateAdd(IntervalType, 50, fr_dt)

        ElseIf radType.SelectedItem.Value = "250Hrs" Then
            IntervalType = "h"
            to_dt = DateAdd(IntervalType, 250, fr_dt)

        ElseIf radType.SelectedItem.Value = "500Hrs" Then
            IntervalType = "h"
            to_dt = DateAdd(IntervalType, 500, fr_dt)

        ElseIf radType.SelectedItem.Value = "1000Hrs" Then
            IntervalType = "h"
            to_dt = DateAdd(IntervalType, 1000, fr_dt)

        ElseIf radType.SelectedItem.Value = "10000Hrs" Then
            IntervalType = "h"
            to_dt = DateAdd(IntervalType, 10000, fr_dt)

        End If
        ' to_dt = txtTo.Text & " " & txtTo_time.Text

        If cboMachine.SelectedItem.Text.ToLower = "select" Then
            lblMessage.Text = "Please select Machine ID to save data !"
            lblMessage1.Text = "Please select Machine ID to save data !"

        Else
            Dim Done As Boolean
            Dim CMD As New SqlClient.SqlCommand()
            CMD.Connection = rwfGen.Connection.ConObj
            Try
                CMD.Parameters.Add("@maintenance_group", SqlDbType.VarChar, 10).Value = lblMGroup.Text
                CMD.Parameters.Add("@MaintenanceType", SqlDbType.VarChar, 10).Value = radType.SelectedItem.Value
                CMD.Parameters.Add("@MachineCode", SqlDbType.VarChar, 50).Value = cboMachine.SelectedItem.Value
                CMD.Parameters.Add("@SubAssembly", SqlDbType.VarChar, 50).Value = IIf((cboAssembly.SelectedItem.Value.ToLower = "select"), "", cboAssembly.SelectedItem.Value)
                CMD.Parameters.Add("@FromDate", SqlDbType.DateTime, 8).Value = fr_dt
                CMD.Parameters.Add("@ToDate", SqlDbType.DateTime, 8).Value = to_dt
                CMD.Parameters.Add("@Remarks", SqlDbType.VarChar, 2000).Value = txtRemarks.Text
                CMD.Transaction = CMD.Connection.BeginTransaction
                CMD.CommandText = " insert into ms_preventiveMaintenanceDetails ( maintenance_group  , maintenance_type, pm_done_date , next_due_date ,machine_code, " &
                    " sub_assembly , remarks )" &
                    " values (  @maintenance_group , @MaintenanceType ,  @MachineCode , @FromDate , @ToDate , @MachineCode,@SubAssembly ,  " &
                    "   @Remarks  ) "

                lblMessage.Text = CMD.CommandText
                If CMD.ExecuteNonQuery > 0 Then
                    Done = True
                End If

            Catch exp As Exception
                '    done = False
                lblMessage.Text = "Adding Values failed !" & exp.Message
            Finally
                If Done Then
                    CMD.Transaction.Commit()
                    lblMessage.Text = "Records Updated"
                Else
                    CMD.Transaction.Rollback()
                    lblMessage.Text = "Updation failed"
                End If
                If CMD.Connection.State = ConnectionState.Open Then CMD.Connection.Close()
                CMD.Dispose()
            End Try

        End If

    End Sub

    Private Sub Clear()
        Dim dt As New DataTable()
        Dim dr As DataRow
        Dim cnt As Int16
        dt.TableName = "spares"
        dt.Columns.Add("Pl Number")
        dt.Columns.Add("Description")
        dt.Columns.Add("Unit")
        dt.Columns.Add("Quantity")
        'grdSpares.DataSource = dt
        'grdSpares.DataBind()

        ' txtAttendent.Text = ""
        txtRemarks.Text = ""
        '  txtWork_done.Text = ""
        'txtPLNumber.Text = ""
        'txtpl_qty.Text = ""
        'txtSpareCost.Text = ""
        cboAssembly.Items.Clear()
        cboMachine.Items.Clear()
        ' cboSpares.Items.Clear()
    End Sub

    Protected Sub shopCode_SelectedIndexChanged(sender As Object, e As EventArgs) Handles shopCode.SelectedIndexChanged
        Dim grp = Session("group")
        Dim shop = shopCode.SelectedItem.Text.Trim
        PopulateMachineCode(lblMode.Text, shop, grp)
    End Sub
End Class