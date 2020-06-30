Imports System.Data
Imports System.Data.SqlClient
Public Class MagProcessingnavigator
    Inherits System.Web.UI.Page
    Protected WithEvents panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents panel2 As System.Web.UI.WebControls.Panel
    Protected WithEvents panel3 As System.Web.UI.WebControls.Panel
    Protected WithEvents txtuid As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpass As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtuidd As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpasss As System.Web.UI.WebControls.TextBox
    Protected WithEvents rbl As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents rblshift As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents rbldefects As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents btnsub As System.Web.UI.WebControls.Button
    Protected WithEvents lblmsg As System.Web.UI.WebControls.Label
    Protected WithEvents lblmsg1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbld As System.Web.UI.WebControls.Label
    Protected WithEvents txtdate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdrag As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcope As System.Web.UI.WebControls.TextBox
    Protected WithEvents ddline As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddwhltype As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtheat As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtwheel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtbased As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtamm As System.Web.UI.WebControls.TextBox
    Protected WithEvents lbltype As System.Web.UI.WebControls.Label
    Protected WithEvents ddtyped As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkgrdsts As System.Web.UI.WebControls.CheckBox
    Protected WithEvents chkmcnopn As System.Web.UI.WebControls.CheckBox
    Protected WithEvents txtbhnone As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtbhntwo As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtbhnthree As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtbcf As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtutbatch As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtutwheel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtutstatus As System.Web.UI.WebControls.TextBox
    Protected WithEvents txthtbatch As System.Web.UI.WebControls.TextBox
    Protected WithEvents ddutstatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddhtstatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnstock As System.Web.UI.WebControls.Button
    Protected WithEvents btnclear As System.Web.UI.WebControls.Button


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None
        Try
            If Page.IsPostBack = False Then

                SetScreen()


            End If
        Catch exp As Exception
            lblmsg.Text = exp.Message
        End Try
    End Sub
    Private Sub SetScreen()
        panel2.Visible = False
        panel3.Visible = False
    End Sub

    Protected Sub btnsub_Click(sender As Object, e As EventArgs) Handles btnsub.Click
        Dim uid As String = txtuid.Text
        Dim pass As String = txtpass.Text
        Dim uidd As String = txtuidd.Text
        Dim passs As String = txtpasss.Text
        Dim con As New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;User ID=crissqlserver;Password=cris-bela@1234567890")
        con.Open()
        Dim cmd As New SqlCommand("SELECT COUNT(*) FROM menu_your_password_new where   employee_code=@uid and password=@pass  ", con)
        Dim cmdd As New SqlCommand("SELECT COUNT(*) FROM menu_your_password_new where  employee_code=@uidd and password=@passs ", con)
        cmd.Parameters.AddWithValue("@uid", uid)
        cmd.Parameters.AddWithValue("@pass", pass)
        cmdd.Parameters.AddWithValue("@uidd", uidd)
        cmdd.Parameters.AddWithValue("@passs", passs)
        Dim i As Integer = Convert.ToInt32(cmd.ExecuteScalar())
        Dim j As Integer = Convert.ToInt32(cmdd.ExecuteScalar())
        cmd = Nothing
        cmdd = Nothing
        con.Close()

        If i >= 1 And j >= 1 Then
            panel1.Visible = False
            panel2.Visible = True
            'Dim ss As String = rbl.SelectedItem.Value
            Dim dd As String = txtuid.Text
            Dim cc As String = txtuidd.Text
            setp2(dd, cc)
        Else
            lblmsg1.Visible = True
            lblmsg1.Text = "invalid login"
        End If
    End Sub
    Private Sub setp2(ByVal dd As String, ByVal cc As String)

        txtdate.Text = DateTime.Now.Date


        txtcope.Text = cc.ToString()

        txtdrag.Text = dd.ToString()

        If rbldefects.SelectedItem.Value = "yes" Then
            lbltype.Visible = True
            ddtyped.Visible = True

        End If
        If ddtyped.SelectedItem.Value = "no defects" Then
            chkgrdsts.Checked = False
            chkmcnopn.Checked = False
        End If


    End Sub

    Protected Sub rbldefects_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rbldefects.SelectedIndexChanged
        If rbldefects.SelectedItem.Value = "yes" Then
            lbltype.Visible = True
            ddtyped.Visible = True
            lbltype.Enabled = True
            ddtyped.Enabled = True
            chkgrdsts.Enabled = True
            chkmcnopn.Enabled = True


        Else
            lbltype.Enabled = False
            ddtyped.Enabled = False
            chkgrdsts.Enabled = False
            chkmcnopn.Enabled = False
        End If
    End Sub

    Protected Sub chkgrdsts_CheckedChanged(sender As Object, e As EventArgs) Handles chkgrdsts.CheckedChanged

    End Sub

    Protected Sub ddtyped_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddtyped.SelectedIndexChanged
        If ddtyped.SelectedItem.Value = "no defects" Then
            chkgrdsts.Checked = False
            chkmcnopn.Checked = False
        ElseIf ddtyped.SelectedItem.Value = "defects for grinding" Then
            chkgrdsts.Checked = True
            chkmcnopn.Checked = False
        ElseIf ddtyped.SelectedItem.Value = "defects for machining" Then
            chkgrdsts.Checked = False
            chkmcnopn.Checked = True
        ElseIf ddtyped.SelectedItem.Value = "defects for machining and grinding" Then
            chkgrdsts.Checked = True
            chkmcnopn.Checked = True
        End If
    End Sub

    Protected Sub btnstock_Click(sender As Object, e As EventArgs) Handles btnstock.Click
        Dim Done As Boolean
        Try
            Done = f1()

        Catch exp As Exception
            lblmsg.Text = exp.Message
        End Try
        If Done Then
            lblmsg.Text = " Updation Successful !"
            panel3.Visible = True
        End If

    End Sub

    Protected Sub btnclear_Click(sender As Object, e As EventArgs) Handles btnclear.Click

    End Sub
    Public Function f1()
        Dim done As Boolean
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Try
            con.ConnectionString = "Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;User ID=crissqlserver;Password=cris-bela@1234567890"
            con.Open()
            cmd.Connection = con

            Dim type As String = ""
            If rbldefects.SelectedItem.Value = "yes" Then
                type = ddtyped.SelectedItem.Value
            Else
                type = "no defects"
            End If

            Dim status As String = ""
            If type = "no defects" And ddutstatus.SelectedItem.Value = "passed" Then
                status = "stock"
            ElseIf type = "defects for grinding" And ddutstatus.SelectedItem.Value = "passed" Then
                status = "UT Passed"
            ElseIf type = "defects for machining" And ddutstatus.SelectedItem.Value = "passed" Then
                status = "UT Passed"
            ElseIf type = "defects for machining and grinding" And ddutstatus.SelectedItem.Value = "passed" Then
                status = "UT Passed"
            ElseIf type = "no defects" And ddutstatus.SelectedItem.Value = "reject" Then
                status = "UT failed"
            ElseIf type = "defects for grinding" And ddutstatus.SelectedItem.Value = "reject" Then
                status = "UT failed"
            ElseIf type = "defects for machining" And ddutstatus.SelectedItem.Value = "reject" Then
                status = "UT failed"
            ElseIf type = "defects for machining and grinding" And ddutstatus.SelectedItem.Value = "reject" Then
                status = "UT failed"
            ElseIf type = "no defects" And ddutstatus.SelectedItem.Value = "unchecked" Then
                status = "UT unchecked"
            ElseIf type = "defects for grinding" And ddutstatus.SelectedItem.Value = "unchecked" Then
                status = "UT unckecked"
            ElseIf type = "defects for machining" And ddutstatus.SelectedItem.Value = "unchecked" Then
                status = "UT unckecked"
            ElseIf type = "defects for machining and grinding" And ddutstatus.SelectedItem.Value = "unchecked" Then
                status = "UT unckecked"
            End If



            cmd.CommandText = "insert into mm_magnaglow_shiftwiserecords_new values('" & Format(CDate(txtdate.Text), "MM/dd/yyyy") & "','" & rblshift.SelectedItem.Value & "',
                                  '" & Convert.ToInt64(txtcope.Text) & "', '" & Convert.ToInt64(txtdrag.Text) & "','" & ddline.SelectedItem.Value & "',
                                    '" & ddwhltype.SelectedItem.Value & "', '" & Convert.ToInt64(txtheat.Text) & "', '" & Convert.ToInt64(txtwheel.Text) & "',
                                    '" & rbldefects.SelectedItem.Value & "','" & type & "' , '" & Convert.ToInt64(txtbhnone.Text) & "',
                                    '" & Convert.ToDecimal(txtamm.Text) & "','" & txtbcf.Text & "','" & txtutbatch.Text & "','" & txtutwheel.Text & "',
                                    '" & status & "' ,'" & txtutstatus.Text & "','" & txthtbatch.Text & "','" & ddhtstatus.SelectedItem.Value & "' )"




            If cmd.ExecuteNonQuery() = 1 Then done = True

        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally
            con.Close()
        End Try
        Return done
    End Function

    Protected Sub txtwheel_TextChanged(sender As Object, e As EventArgs) Handles txtwheel.TextChanged
        Dim ww As String = txtwheel.Text
        Dim con As New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;User ID=crissqlserver;Password=cris-bela@1234567890")
        con.Open()
        Dim cmd As New SqlCommand("SELECT COUNT(*) FROM mm_magnaglow_shiftwiserecords_new where   wheelno=@ww  ", con)

        cmd.Parameters.AddWithValue("@ww", ww)
        Dim i As Integer = Convert.ToInt32(cmd.ExecuteScalar())

        cmd = Nothing

        con.Close()

        If i >= 1 Then
            con.Open()
            'Dim cmdd As New SqlCommand("SELECT TOP 3 bhn FROM mm_magnaglow_shiftwiserecords_new where   wheelno=@ww  ", con)
            Dim cmdd As New SqlCommand("SELECT TOP 3 bhn FROM mm_magnaglow_shiftwiserecords_new ", con)
            cmdd.Parameters.AddWithValue("@ww", ww)

            Dim reader As SqlDataReader
            reader = cmdd.ExecuteReader()
            Dim label As TextBox() = New TextBox() {txtbhnone, txtbhntwo, txtbhnthree}
            For Each l As TextBox In label
                If reader.Read() Then l.Text = reader.GetInt64(0)
            Next

            reader.Close()
        Else
            txtbhnone.Text = "0"
            txtbhntwo.Text = "0"
            txtbhnthree.Text = "0"
        End If
    End Sub

    'Protected Sub grid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grid1.SelectedIndexChanged

    'End Sub
    'Private Sub getMagnadata()
    '    Dim sdate As String = Format(CDate(txtdate.Text), "MM/dd/yyyy")
    '    Dim con As SqlConnection = New SqlConnection("Data Source=192.168.0.125;Initial Catalog=wap;Persist Security Info=True;User ID=sa;Password=sa")
    '    con.Open()
    '    Dim cmd As SqlCommand = New SqlCommand("select * from mm_magnaglow_shiftwiserecords_new where date=@sdate order by heatnumber, time  ", con)
    '    cmd.Parameters.AddWithValue("@sdate", sdate)
    '    Dim dr As SqlDataReader = cmd.ExecuteReader()
    '    grid1.DataSource = dr
    '    grid1.DataBind()
    '    con.Close()
    'End Sub

    'Protected Sub txtdate_TextChanged(sender As Object, e As EventArgs) Handles txtdate.TextChanged
    '    getMagnadata()
    'End Sub
End Class