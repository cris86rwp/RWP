Public Class WheelShopFloorBalanceReconcilation
    Inherits System.Web.UI.Page
    Protected WithEvents txtInputDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents ddlShift As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtOperator As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSave As System.Web.UI.WebControls.Button
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents txtBoxNQty As System.Web.UI.WebControls.TextBox
    Protected WithEvents txt840Qty As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtBGCQty As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMGCQty As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtOthersQty As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCBForDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txt915DQty As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEMUBGQty As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEMUQty As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDisQty As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtWhlQty As System.Web.UI.WebControls.TextBox
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


    Protected Sub dd1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        themeValue = Dd1.SelectedItem.Value
        Response.Redirect(Request.Url.ToString())

    End Sub
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        If Page.IsPostBack = False Then
            'Session("UserID") = "078844"
            If Session("UserID") = "" Then
                'Response.Redirect("/mms/InvalidSession.aspx")
                Response.Redirect("InvalidSession.aspx")
                Exit Sub
            End If
            txtOperator.Text = Session("UserID")
            txtOperator.ReadOnly = True
            txtInputDate.Text = Today
            txtInputDate.ReadOnly = True
            getLastData()
        End If
    End Sub
    Private Sub getLastData()
        Dim dt As Date
        Try
            dt = RWF.AWMCLR.GetLastDate
            txtCBForDate.Text = dt
            viewstate("ReqdDate") = dt
            btnSave.Enabled = True
        Catch exp As Exception
            lblMessage.Text = exp.Message
            btnSave.Enabled = False
            Exit Sub
        End Try
        dt = Nothing
        btnSave.Enabled = True
        txtCBForDate.ReadOnly = True
        ' Get Existing Closing Balances
        ' Get Existing Closing Balances
        Dim sqlrdr As DataTable
        Try
            sqlrdr = RWF.AWMCLR.GetWheelShopFloorBalance(CDate(txtCBForDate.Text))
            If sqlrdr.Rows.Count > 0 Then
                Dim i As Integer
                i = 0
                For i = 0 To sqlrdr.Rows.Count - 1
                    If sqlrdr.Rows(i)("Product_code") = "BoxN" Then
                        txtBoxNQty.Text = IIf(IsDBNull(sqlrdr.Rows(i)("Closing_Balance")), "0", sqlrdr.Rows(i)("Closing_Balance"))
                    End If
                    'If sqlrdr.Rows(i)("Product_code") = "840" Then
                    '    txt840Qty.Text = IIf(IsDBNull(sqlrdr.Rows(i)("Closing_Balance")), "0", sqlrdr.Rows(i)("Closing_Balance"))
                    'End If
                    'If sqlrdr.Rows(i)("Product_code") = "Others" Then
                    '    txtOthersQty.Text = IIf(IsDBNull(sqlrdr.Rows(i)("Closing_Balance")), "0", sqlrdr.Rows(i)("Closing_Balance"))
                    'End If
                    If sqlrdr.Rows(i)("Product_code") = "ICF" Then
                        txtBGCQty.Text = IIf(IsDBNull(sqlrdr.Rows(i)("Closing_Balance")), "0", sqlrdr.Rows(i)("Closing_Balance"))
                    End If
                    If sqlrdr.Rows(i)("Product_code") = "Dis" Then
                        txtDisQty.Text = IIf(IsDBNull(sqlrdr.Rows(i)("Closing_Balance")), "0", sqlrdr.Rows(i)("Closing_Balance"))
                    End If
                    If sqlrdr.Rows(i)("Product_code") = "Whl" Then
                        txtWhlQty.Text = IIf(IsDBNull(sqlrdr.Rows(i)("Closing_Balance")), "0", sqlrdr.Rows(i)("Closing_Balance"))
                    End If
                    'If sqlrdr.Rows(i)("Product_code") = "MGC" Then
                    '    txtMGCQty.Text = IIf(IsDBNull(sqlrdr.Rows(i)("Closing_Balance")), "0", sqlrdr.Rows(i)("Closing_Balance"))
                    'End If
                    'If sqlrdr.Rows(i)("Product_code") = "915as" Then
                    '    txt915DQty.Text = IIf(IsDBNull(sqlrdr.Rows(i)("Closing_Balance")), "0", sqlrdr.Rows(i)("Closing_Balance"))
                    'End If
                    'If sqlrdr.Rows(i)("Product_code") = "EMUBG" Then
                    '    txtEMUBGQty.Text = IIf(IsDBNull(sqlrdr.Rows(i)("Closing_Balance")), "0", sqlrdr.Rows(i)("Closing_Balance"))
                    'End If
                    'If sqlrdr.Rows(i)("Product_code") = "EMU" Then
                    '    txtEMUQty.Text = IIf(IsDBNull(sqlrdr.Rows(i)("Closing_Balance")), "0", sqlrdr.Rows(i)("Closing_Balance"))
                    'End If
                Next
                i = Nothing
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
            ClearData()
        Finally
            sqlrdr = Nothing
        End Try
    End Sub
    Private Sub ClearData()
        ' txtMGCQty.Text = ""
        txtBGCQty.Text = ""
        txtBoxNQty.Text = ""
        txtWhlQty.Text = ""
        txtDisQty.Text = ""
        'txtOthersQty.Text = ""
        'txt840Qty.Text = ""
        'txt915DQty.Text = ""
        'txtEMUBGQty.Text = ""
        'txtEMUQty.Text = ""
    End Sub
    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim dInputDate, dCBforDate, dSavedDate As Date
        Try
            dCBforDate = CDate(txtCBForDate.Text)
            dInputDate = CDate(txtInputDate.Text)
            dSavedDate = Now
            If dInputDate > Today.Date Then
                lblMessage.Text = "You cannot give future Date !"
                Exit Sub
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Exit Sub
        End Try
        Dim blnQtyGiven As Boolean
        blnQtyGiven = False
        If txtBoxNQty.Text <> "" Then
            If Val(txtBoxNQty.Text) < 0 Then
                lblMessage.Text = "Qty Less than 0 not meaningful "
                Exit Sub
            Else
                blnQtyGiven = True
            End If
        ElseIf txtBGCQty.Text <> "" Then
            If Val(txtBGCQty.Text) < 0 Then
                lblMessage.Text = "Qty Less than 0 not meaningful "
                Exit Sub
            Else
                blnQtyGiven = True
            End If
        ElseIf txtDisQty.Text <> "" Then
            If Val(txtDisQty.Text) < 0 Then
                lblMessage.Text = "Qty Less than 0 not meaningful "
                Exit Sub
            Else
                blnQtyGiven = True
            End If
        ElseIf txtWhlQty.Text <> "" Then
            If Val(txtWhlQty.Text) < 0 Then
                lblMessage.Text = "Qty Less than 0 not meaningful "
                Exit Sub
            Else
                blnQtyGiven = True
            End If

            ''  ElseIf txt840Qty.Text <> "" Then
            ''     If Val(txt840Qty.Text) < 0 Then
            '' lblMessage.Text = "Qty Less than 0 not meaningful "
            ''Exit Sub
            ''Else
            'blnQtyGiven = True
            'End If
            'ElseIf txtMGCQty.Text <> "" Then
            '    If Val(txtMGCQty.Text) < 0 Then
            '        lblMessage.Text = "Qty Less than 0 not meaningful "
            '        Exit Sub
            '    Else
            '        blnQtyGiven = True
            '    End If

            'ElseIf txt915DQty.Text <> "" Then
            '    If Val(txt915DQty.Text) < 0 Then
            '        lblMessage.Text = "Qty Less than 0 not meaningful "
            '        Exit Sub
            '    Else
            '        blnQtyGiven = True
            '    End If
            'ElseIf txtEMUBGQty.Text <> "" Then
            '    If Val(txtEMUBGQty.Text) < 0 Then
            '        lblMessage.Text = "Qty Less than 0 not meaningful "
            '        Exit Sub
            '    Else
            '        blnQtyGiven = True
            '    End If
            'ElseIf txtEMUQty.Text <> "" Then
            '    If Val(txtEMUQty.Text) < 0 Then
            '        lblMessage.Text = "Qty Less than 0 not meaningful "
            '        Exit Sub
            '    Else
            '        blnQtyGiven = True
            '    End If
            'ElseIf txtOthersQty.Text <> "" Then
            '    If Val(txtOthersQty.Text) < 0 Then
            '        lblMessage.Text = "Qty Less than 0 not meaningful "
            '        Exit Sub
            '    Else
            '        blnQtyGiven = True
            '    End If
        End If
        If txtOperator.Text = "" Then
            lblMessage.Text = "Operator Code not input/captured"
            Exit Sub
        End If
        If blnQtyGiven = False Then
            lblMessage.Text = "Input Qty to atleast one head"
            Exit Sub
        End If

        If dCBforDate <> CType(viewstate("ReqdDate"), Date) Then
            lblMessage.Text = "Invalid Date for CB For Date"
            Exit Sub
        End If
        Dim blnSaved As Boolean
        Dim dt As New DataTable()
        Dim dr As DataRow
        dt.TableName = "wheels"
        dt.Columns.Add("CBQty")
        dt.Columns.Add("ProductCode")
        Try
            If txtBoxNQty.Text <> "" Then
                dr = dt.NewRow
                dr("CBQty") = Val(txtBoxNQty.Text)
                dr("ProductCode") = "BoxN"
                dt.Rows.Add(dr)
            End If
            If txtBGCQty.Text <> "" Then
                dr = dt.NewRow
                dr("CBQty") = Val(txtBGCQty.Text)
                dr("ProductCode") = "ICF"
                dt.Rows.Add(dr)
            End If
            If txtDisQty.Text <> "" Then
                dr = dt.NewRow
                dr("CBQty") = Val(txtDisQty.Text)
                dr("ProductCode") = "Dis"
                dt.Rows.Add(dr)
            End If

            If txtWhlQty.Text <> "" Then
                dr = dt.NewRow
                dr("CBQty") = Val(txtWhlQty.Text)
                dr("ProductCode") = "Whl"
                dt.Rows.Add(dr)
            End If
            'If txt840Qty.Text <> "" Then
            '    dr = dt.NewRow
            '    dr("CBQty") = Val(txt840Qty.Text)
            '    dr("ProductCode") = "840"
            '    dt.Rows.Add(dr)
            'End If
            'If txtMGCQty.Text <> "" Then
            '    dr = dt.NewRow
            '    dr("CBQty") = Val(txtMGCQty.Text)
            '    dr("ProductCode") = "MGC"
            '    dt.Rows.Add(dr)
            'End If

            'If txt915DQty.Text <> "" Then
            '    dr = dt.NewRow
            '    dr("CBQty") = Val(txt915DQty.Text)
            '    dr("ProductCode") = "915as"
            '    dt.Rows.Add(dr)
            'End If
            'If txtEMUBGQty.Text <> "" Then
            '    dr = dt.NewRow
            '    dr("CBQty") = Val(txtEMUBGQty.Text)
            '    dr("ProductCode") = "EMUBG"
            '    dt.Rows.Add(dr)
            'End If
            'If txtEMUQty.Text <> "" Then
            '    dr = dt.NewRow
            '    dr("CBQty") = Val(txtEMUQty.Text)
            '    dr("ProductCode") = "EMU"
            '    dt.Rows.Add(dr)
            'End If
            'If txtOthersQty.Text <> "" Then
            '    dr = dt.NewRow
            '    dr("CBQty") = Val(txtOthersQty.Text)
            '    dr("ProductCode") = "Others"
            '    dt.Rows.Add(dr)
            'End If
            blnSaved = New RWF.AWMCLR().Save(CDate(txtInputDate.Text), ddlShift.SelectedItem.Text, txtOperator.Text, CDate(txtCBForDate.Text), dt)
            If blnSaved Then
                lblMessage.Text = "Saved"
                lblMessage.ForeColor = System.Drawing.Color.Black
            Else
                lblMessage.Text = "Nothing to Save or Not Updated"
                lblMessage.ForeColor = System.Drawing.Color.Red
            End If
        Catch exp As Exception
            lblMessage.Text &= exp.Message
        End Try
        Try
            getLastData()
        Catch exp As Exception
            lblMessage.Text &= exp.Message
        End Try
        dInputDate = Nothing
        dCBforDate = Nothing
        dSavedDate = Nothing
        dr = Nothing
        dt = Nothing
        blnSaved = Nothing
        blnQtyGiven = Nothing
    End Sub
End Class
