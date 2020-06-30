Public Class MetlabReports
    Inherits System.Web.UI.Page
    Protected WithEvents txtLabNumber As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnFEMNCHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnFESICHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnSIMNCHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnGP2CHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnLIMECHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnSANDPHY As System.Web.UI.WebControls.Button
    Protected WithEvents btnSANDCHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnFRCLAYPHY As System.Web.UI.WebControls.Button
    Protected WithEvents btnFRCLAYCHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnMagBRkPHY As System.Web.UI.WebControls.Button
    Protected WithEvents btnMagBRkCHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnMCBPHY As System.Web.UI.WebControls.Button
    Protected WithEvents btnMCBCHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnHABPHY As System.Web.UI.WebControls.Button
    Protected WithEvents btnHABCHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnISBPHY As System.Web.UI.WebControls.Button
    Protected WithEvents btnISBCHEM As System.Web.UI.WebControls.Button
    Protected WithEvents btnReport As System.Web.UI.WebControls.Button
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents btnDetails As System.Web.UI.WebControls.Button
    Protected WithEvents Dd1 As System.Web.UI.WebControls.DropDownList


    Shared themeValue As String
    Public Function DateTime(x As Date) As String
        DateTime = "Date(" & Year(x) & "," & Month(x) & "," & Day(x) & " 0,0,0)"
    End Function

    Public Sub New()

        AddHandler PreInit, New EventHandler(AddressOf Page_PreInit)
    End Sub

    Private Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs)

        Page.Theme = themeValue
    End Sub


    Protected Sub Dd1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        themeValue = Dd1.SelectedItem.Value
        Response.Redirect(Request.Url.ToString())

    End Sub


    '#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        If IsPostBack = False Then

        End If
    End Sub

    Protected Sub btnFEMNCHEM_Click(sender As Object, e As EventArgs) Handles btnFEMNCHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9200&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnFESICHEM_Click(sender As Object, e As EventArgs) Handles btnFESICHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9207&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnSIMNCHEM_Click(sender As Object, e As EventArgs) Handles btnSIMNCHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9302&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnGP2CHEM_Click(sender As Object, e As EventArgs) Handles btnGP2CHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9228&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnLIMECHEM_Click(sender As Object, e As EventArgs) Handles btnLIMECHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9135&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnSANDPHY_Click(sender As Object, e As EventArgs) Handles btnSANDPHY.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9296&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnSANDCHEM_Click(sender As Object, e As EventArgs) Handles btnSANDCHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9481&user0=crissqlserver&password0=cris-bela@1234567890" &
        "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnFRCLAYPHY_Click(sender As Object, e As EventArgs) Handles btnFRCLAYPHY.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9221&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnFRCLAYCHEM_Click(sender As Object, e As EventArgs) Handles btnFRCLAYCHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9241&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnMagBRkPHY_Click(sender As Object, e As EventArgs) Handles btnMagBRkPHY.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9245&user0=crissqlserver&password0=cris-bela@1234567890" &
         "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnMagBRKCHEM_Click(sender As Object, e As EventArgs) Handles btnMagBRKCHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9282&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnMCBPHY_Click(sender As Object, e As EventArgs) Handles btnMCBPHY.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9262&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnMCBCHEM_Click(sender As Object, e As EventArgs) Handles btnMCBCHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9269&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnHABPHY_Click(sender As Object, e As EventArgs) Handles btnHABPHY.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9235&user0=crissqlserver&password0=cris-bela@1234567890" &
         "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnHABCHEM_Click(sender As Object, e As EventArgs) Handles btnHABCHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9241&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnISBPHY_Click(sender As Object, e As EventArgs) Handles btnISBPHY.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9248&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub

    Protected Sub btnISBCHEM_Click(sender As Object, e As EventArgs) Handles btnISBCHEM.Click
        Dim strPathName As String
        strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=9255&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&prompt0=" & (txtLabNumber.Text.Trim) & ""
        Response.Redirect(strPathName)
    End Sub
End Class
