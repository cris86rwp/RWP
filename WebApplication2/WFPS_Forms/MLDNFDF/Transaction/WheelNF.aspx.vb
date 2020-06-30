Public Class WheelNF
    Inherits System.Web.UI.Page
    Protected WithEvents txtShiftInC As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents txtWheel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtHeat As System.Web.UI.WebControls.TextBox
    Protected WithEvents rblShift As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents txtInDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtInTime As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtOutDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSave As System.Web.UI.WebControls.Button
    Protected WithEvents txtSrNo As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtOffLoad As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtOutTime As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtQDuration As System.Web.UI.WebControls.TextBox
    Protected WithEvents txTemp As System.Web.UI.WebControls.TextBox
    Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents txtRemarks As System.Web.UI.WebControls.TextBox
    Protected WithEvents DataGrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents txtOperator As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtQuencher As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtHCDuration As System.Web.UI.WebControls.TextBox
    Protected WithEvents Panel2 As System.Web.UI.WebControls.Panel
    Protected WithEvents DataGrid2 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents lblSl_No As System.Web.UI.WebControls.Label
    Protected WithEvents rblCold As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents txtDate As System.Web.UI.WebControls.TextBox
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

        lblSl_No.Visible = True
        If IsPostBack = False Then
            txtDate.Text = Now.Date

            txtInDate.Text = Now.Date
            txtInTime.Text = Right(("0" + Now.Hour.ToString), 2) + ":" + Right(("0" + Now.Minute.ToString), 2)
            txtOutDate.Text = Now.Date
            txtOutTime.Text = "00:00"
            Try
                GetNFData()
            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try
            SetFocus(txtHeat)
        End If
    End Sub

    Private Sub GetNFData()
        DataGrid1.DataSource = Nothing
        DataGrid1.DataBind()
        Try
            DataGrid1.DataSource = RWF.MLDING.GetNFData(CDate(txtDate.Text), rblShift.SelectedItem.Text)
            DataGrid1.DataBind()
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub

    Private Sub GetNFHeatData()
        Dim dt As DataTable
        DataGrid1.DataSource = Nothing
        DataGrid1.DataBind()
        DataGrid2.DataSource = Nothing
        DataGrid2.DataBind()
        Try
            dt = RWF.MLDING.GetNFHeatData(rblCold.SelectedIndex, (txtHeat.Text), CDate(txtDate.Text), rblShift.SelectedItem.Text)
            DataGrid1.DataSource = dt
            DataGrid1.DataBind()
            If dt.Rows.Count > 0 Then
                txtDate.Text = dt.Rows(0)("LoadDt")
                Dim i As Int16
                rblShift.ClearSelection()
                For i = 0 To rblShift.Items.Count - 1
                    If rblShift.Items(i).Text = dt.Rows(0)("Sh") Then
                        rblShift.Items(i).Selected = True
                        Exit For
                    End If
                Next
                i = Nothing
            End If
            DataGrid2.DataSource = RWF.MLDING.GetNFRemainingHeatWhls(Val(txtHeat.Text))
            DataGrid2.DataBind()
        Catch exp As Exception
            lblMessage.Text = exp.Message
        Finally
            dt = Nothing
        End Try
    End Sub
    Private Sub SetFocus(ByVal ctrl As Control)
        Dim focusScript As String = "<script language=" & "javascript" & " > " & _
        "document.getElementById('" + ctrl.ClientID.ToString.Trim & _
        "').focus();</script>"
        Page.RegisterStartupScript("FocusScript", focusScript)
    End Sub

    Private Sub txtHeat_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtHeat.TextChanged
        lblMessage.Text = ""
        If Val(txtHeat.Text) > 0 Then
            If Val(txtWheel.Text) > 0 Then
                CheckWheel()
            Else
                GetNFHeatData()
                SetFocus(txtWheel)
            End If
        Else
            SetFocus(txtWheel)
        End If
    End Sub

    Private Sub txtWheel_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtWheel.TextChanged
        lblMessage.Text = ""
        If Val(txtWheel.Text) > 0 Then
            If Val(txtHeat.Text) > 0 Then
                CheckWheel()
            Else
                SetFocus(txtHeat)
            End If
        Else
            SetFocus(txtHeat)
        End If
    End Sub

    Private Sub CheckWheel()
        Try
            If RWF.MLDING.CheckWheel(Val(txtWheel.Text), Val(txtHeat.Text)) Then
                lblSl_No.Text = ""
                GetWheelData()
                SetFocus(txtSrNo)
            Else
                lblMessage.Text = "InValid Wheel/Heat Number !"
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub

    Private Sub GetWheelData()
        Dim dt As DataTable
        Try
            dt = RWF.MLDING.GetWheelData(Val(txtWheel.Text), Val(txtHeat.Text), CDate(txtDate.Text), rblShift.SelectedItem.Text)
            If dt.Rows.Count > 0 Then
                txtOperator.Text = IIf(IsDBNull(dt.Rows(0)("operator_code")), "", dt.Rows(0)("operator_code"))
                txtShiftInC.Text = IIf(IsDBNull(dt.Rows(0)("supervisor")), "", dt.Rows(0)("supervisor"))
                txtSrNo.Text = IIf(IsDBNull(dt.Rows(0)("pedestral_number")), "", dt.Rows(0)("pedestral_number"))
                'txtOffLoad.Text = IIf(IsDBNull(dt.Rows(0)("offload_code")), "", dt.Rows(0)("offload_code"))
                'txtQuencher.Text = IIf(IsDBNull(dt.Rows(0)("quenched_number")), "", dt.Rows(0)("quenched_number"))
                'txTemp.Text = IIf(IsDBNull(dt.Rows(0)("temperature_on_discharge")), "", dt.Rows(0)("temperature_on_discharge"))
                'txtQDuration.Text = IIf(IsDBNull(dt.Rows(0)("quenching_duration")), "", dt.Rows(0)("quenching_duration"))
                'txtHCDuration.Text = IIf(IsDBNull(dt.Rows(0)("hubcooling_duration")), "", dt.Rows(0)("hubcooling_duration"))
                txtRemarks.Text = IIf(IsDBNull(dt.Rows(0)("remarks")), "", dt.Rows(0)("remarks"))
                lblSl_No.Text = IIf(IsDBNull(dt.Rows(0)("Sl_No")), 0, dt.Rows(0)("Sl_No"))
                Try
                    txtInDate.Text = IIf(IsDBNull(dt.Rows(0)("charge_in_time")), Now.Date, CDate(dt.Rows(0)("charge_in_time")).ToShortDateString)
                    txtInTime.Text = Right(("0" + CDate(dt.Rows(0)("charge_in_time")).Hour.ToString), 2) + ":" + Right(("0" + CDate(dt.Rows(0)("charge_in_time")).Minute.ToString), 2)
                Catch exp As Exception
                    txtInDate.Text = Now.Date
                    txtInTime.Text = "00:00"
                End Try
                Try
                    txtOutDate.Text = IIf(IsDBNull(dt.Rows(0)("charge_out_time")), Now.Date, CDate(dt.Rows(0)("charge_out_time")).ToShortDateString)
                    txtOutTime.Text = Right(("0" + CDate(dt.Rows(0)("charge_out_time")).Hour.ToString), 2) + ":" + Right(("0" + CDate(dt.Rows(0)("charge_out_time")).Minute.ToString), 2)
                Catch exp As Exception
                    txtOutDate.Text = Now.Date
                    txtOutTime.Text = "00:00"
                End Try
            Else
                lblSl_No.Text = 0
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
        dt = Nothing
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        lblMessage.Text = ""
        If Not RWF.MLDING.CheckWheel(Val(txtWheel.Text), Val(txtHeat.Text)) Then
            lblMessage.Text = "InValid Wheel/Heat Number !"
            Exit Sub
        End If
        Dim NF As New RWF.MLDING()
        Dim done As Boolean
        Dim Charge, DisCharge As Date
        Try
            Charge = CDate(txtInDate.Text + " " & txtInTime.Text)
        Catch exp As Exception
            Charge = Now.Date
        End Try
        Try
            DisCharge = CDate(txtOutDate.Text + " " & txtOutTime.Text)
        Catch exp As Exception
            DisCharge = Now.Date
        End Try
        Dim Cold As Integer
        If rblCold.SelectedItem.Text.StartsWith("R") Then
            Cold = 0
        Else
            Cold = 1
        End If
        Try
            done = NF.WheelNFLoading(CDate(txtDate.Text), rblShift.SelectedItem.Text, txtOperator.Text, txtShiftInC.Text, CInt(txtWheel.Text), CLng(txtHeat.Text), txtSrNo.Text.Trim, Charge, DisCharge, 0, txtQuencher.Text.Trim, Val(txTemp.Text), txtRemarks.Text.Trim, txtQDuration.Text, txtHCDuration.Text, Cold, Val(lblSl_No.Text))
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
        If done Then
            Try
                GetNFHeatData()
            Catch exp As Exception
                lblMessage.Text &= exp.Message
            End Try
            txtWheel.Text = ""
            SetFocus(txtWheel)
        End If
        NF = Nothing
        done = Nothing
        Charge = Nothing
        DisCharge = Nothing
    End Sub

End Class
