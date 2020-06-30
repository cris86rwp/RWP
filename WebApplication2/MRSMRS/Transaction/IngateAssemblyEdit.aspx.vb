Public Class IngateAssemblyEdit
    Inherits System.Web.UI.Page
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents txtIngateDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents rfvld1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents rblShift As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents txtMouldNumber As System.Web.UI.WebControls.TextBox
    Protected WithEvents rfvMldNo As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents txtPastIngate As System.Web.UI.WebControls.TextBox
    Protected WithEvents rblPresentIng As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents txtDtFitted As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtRemoved As System.Web.UI.WebControls.TextBox
    Protected WithEvents rfvld4 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents txtWheels_cast As System.Web.UI.WebControls.TextBox
    Protected WithEvents rngvld1 As System.Web.UI.WebControls.RangeValidator
    Protected WithEvents btnSave As System.Web.UI.WebControls.Button
    Protected WithEvents btnClear As System.Web.UI.WebControls.Button
    Protected WithEvents grdIngateAssembly As System.Web.UI.WebControls.DataGrid
    Protected WithEvents ddlReason As System.Web.UI.WebControls.DropDownList
    Protected WithEvents rblSupplier As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
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
    Private MouldMaster As Object

    Public Sub New()

        AddHandler PreInit, New EventHandler(AddressOf Page_PreInit)
    End Sub

    Private Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs)

        Page.Theme = themeValue
    End Sub


    Protected Sub dd1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        themeValue = Dd1.SelectedItem.Value
        Response.Redirect(Request.Url.ToString())

    End Sub
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None

        'Put user code to initialize the page here
        If Page.IsPostBack = False Then
            'Session("UserID") = "072557"
            'Try
            '    Dim oChkEmp As New rwfGen.Employee()
            '    If oChkEmp.Check(Session("UserID"), "MRSMRS") = False Then
            '        'Response.Redirect("../../InvalidSession.aspx")
            '        Response.Redirect("InvalidSession.aspx")
            '    End If
            '    oChkEmp = Nothing
            'Catch exp As Exception
            '    ' Response.Redirect("../../InvalidSession.aspx")
            '    Response.Redirect("InvalidSession.aspx")
            'End Try
            Try
                txtIngateDate.Text = Date.Today
                txtDtRemoved.Text = Date.Today
                FillReason()
                PopulateGrid()
            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try
        End If
    End Sub
    Private Sub setobj()
        If Not IsNothing(Session("IgEdit")) Then Session.Remove("Mld")
        Session.Remove("IgEdit")
        Dim oMld As New MouldMaster.Moulds(txtMouldNumber.Text.Trim, CDate(txtIngateDate.Text), "IngateAssemblyEdit")
        Session("IgEdit") = oMld
        oMld = Nothing
    End Sub

    Private Sub txtIngateDate_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtIngateDate.TextChanged
        lblMessage.Text = ""
        Try
            grdIngateAssembly.CurrentPageIndex = 0
            checkDate()
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub
    Private Sub checkDate()
        Dim dt As New Date()
        Try
            dt = txtIngateDate.Text.Trim
            If dt > Now.Date Then
                txtIngateDate.Text = ""
                lblMessage.Text = "Date cannot be greater than Current Date"
            Else
                txtIngateDate.Text = dt
                txtDtRemoved.Text = dt
                PopulateGrid()
            End If
        Catch exp As Exception
            txtIngateDate.Text = ""
            lblMessage.Text = exp.Message
        End Try
        dt = Nothing
    End Sub
    Private Sub PopulateGrid()
        Dim Dt As DataTable
        grdIngateAssembly.HorizontalAlign = HorizontalAlign.Left
        grdIngateAssembly.Visible = True
        Try
            Dt = MouldMaster.tables.getIngateDetails(CDate(txtIngateDate.Text), rblShift.SelectedItem.Text)
            If Dt.Rows.Count > 3 Then
                grdIngateAssembly.AllowPaging = True
                grdIngateAssembly.PageSize = 3
                grdIngateAssembly.PagerStyle.Mode = PagerMode.NumericPages
            End If
            grdIngateAssembly.DataSource = Dt.DefaultView
            grdIngateAssembly.DataBind()
            If grdIngateAssembly.Items.Count = 0 Then
                lblMessage.Text = "No data binded to the grid."
                grdIngateAssembly.Visible = False
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
        Dt = Nothing
    End Sub
    Private Sub FillReason()
        Dim dt As DataTable
        Try
            dt = MouldMaster.tables.getIngateReasons
            ddlReason.DataSource = dt
            ddlReason.DataTextField = "Code"
            ddlReason.DataValueField = "description"
            ddlReason.DataBind()
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
        dt = Nothing
    End Sub
    Private Sub Clear()
        txtMouldNumber.Text = ""
        txtPastIngate.Text = ""
        txtDtFitted.Text = ""
        txtWheels_cast.Text = 0
        rblShift.SelectedIndex = 0
        rblPresentIng.SelectedIndex = 0
        rblSupplier.SelectedIndex = 0
        txtDtRemoved.Text = ""
        ddlReason.SelectedIndex = 0
    End Sub
    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click
        rblSupplier.SelectedIndex = 0
        txtPastIngate.Text = ""
        rblPresentIng.SelectedIndex = 0
        txtDtFitted.Text = ""
        txtDtRemoved.Text = Now.Date
        txtWheels_cast.Text = ""
        txtMouldNumber.Text = ""
        ddlReason.SelectedIndex = 0
    End Sub

    Private Sub grdIngateAssembly_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles grdIngateAssembly.PageIndexChanged
        grdIngateAssembly.CurrentPageIndex = e.NewPageIndex
        grdIngateAssembly.EditItemIndex = -1
        Try
            PopulateGrid()
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        lblMessage.Text = ""
        Try
            CType(Session("IgEdit"), MouldMaster.Moulds).Shift = rblShift.SelectedItem.Text
            If CType(Session("IgEdit"), MouldMaster.Moulds).AllowIngateAssemblyEdit Then
                CType(Session("IgEdit"), MouldMaster.Moulds).PastIngate = txtPastIngate.Text
                CType(Session("IgEdit"), MouldMaster.Moulds).DtFitted = CDate(txtDtFitted.Text)
                CType(Session("IgEdit"), MouldMaster.Moulds).WheelsCast = CInt(txtWheels_cast.Text)
                CType(Session("IgEdit"), MouldMaster.Moulds).PresentIngate = rblPresentIng.SelectedItem.Text
                CType(Session("IgEdit"), MouldMaster.Moulds).Supplier = rblSupplier.SelectedItem.Text
                CType(Session("IgEdit"), MouldMaster.Moulds).DtRemoved = CDate(txtDtRemoved.Text)
                CType(Session("IgEdit"), MouldMaster.Moulds).Reason = Trim(Replace(ddlReason.SelectedItem.Value, "'", "''"))
                CType(Session("IgEdit"), MouldMaster.Moulds).AssembleIngateEdit()
                lblMessage.Text = CType(Session("IgEdit"), MouldMaster.Moulds).Message
                Clear()
            Else
                lblMessage.Text = CType(Session("IgEdit"), MouldMaster.Moulds).Message
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
        Try
            PopulateGrid()
            grdIngateAssembly.SelectedIndex = -1
        Catch exp As Exception
            lblMessage.Text &= exp.Message
        End Try
    End Sub

    Private Sub grdIngateAssembly_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles grdIngateAssembly.ItemCommand
        lblMessage.Text = ""
        Try
            If e.CommandName = "Select" Then
                txtMouldNumber.Text = e.Item.Cells(3).Text
                txtIngateDate.Text = CDate(e.Item.Cells(1).Text)
                setobj()
                If CType(Session("IgEdit"), MouldMaster.Moulds).AllowIngateAssemblyEdit Then
                    CType(Session("IgEdit"), MouldMaster.Moulds).MouldDate = e.Item.Cells(1).Text
                    CType(Session("IgEdit"), MouldMaster.Moulds).MouldNumber = txtMouldNumber.Text
                    rblShift.ClearSelection()
                    Dim i As Integer
                    rblShift.ClearSelection()
                    i = 0
                    For i = 0 To rblShift.Items.Count - 1
                        If rblShift.Items(i).Text = Trim(e.Item.Cells(2).Text) Then
                            rblShift.Items(i).Selected = True
                            Exit For
                        End If
                    Next
                    rblPresentIng.ClearSelection()
                    i = 0
                    For i = 0 To rblPresentIng.Items.Count - 1
                        If rblPresentIng.Items(i).Value = Trim(e.Item.Cells(5).Text) Then
                            rblPresentIng.Items(i).Selected = True
                            Exit For
                        End If
                    Next
                    rblSupplier.ClearSelection()
                    i = 0
                    For i = 0 To rblSupplier.Items.Count - 1
                        If rblSupplier.Items(i).Value = Trim(e.Item.Cells(6).Text) Then
                            rblSupplier.Items(i).Selected = True
                            Exit For
                        End If
                    Next
                    txtPastIngate.Text = Trim(e.Item.Cells(7).Text)
                    txtWheels_cast.Text = e.Item.Cells(8).Text
                    txtDtFitted.Text = e.Item.Cells(9).Text
                    txtDtRemoved.Text = e.Item.Cells(10).Text
                    i = 0
                    ddlReason.ClearSelection()
                    For i = 0 To ddlReason.Items.Count - 1
                        If Trim(ddlReason.Items(i).Value) = Trim(e.Item.Cells(11).Text) Then
                            ddlReason.Items(i).Selected = True
                            Exit For
                        End If
                    Next
                    i = Nothing
                Else
                    lblMessage.Text = " New Mould Number '" & txtMouldNumber.Text.Trim & "' is InValid !"
                End If
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub

    Private Sub rblShift_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles rblShift.SelectedIndexChanged
        lblMessage.Text = ""
        Try
            grdIngateAssembly.CurrentPageIndex = 0
            checkDate()
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub
End Class
