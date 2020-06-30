Imports System.Data
Imports System.Data.SqlClient

Public Class SandPreparationNew

    Inherits System.Web.UI.Page


    Protected WithEvents Dd1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents sanddate As System.Web.UI.WebControls.TextBox
    Protected WithEvents rblshift As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents sse_jename As System.Web.UI.WebControls.TextBox
    Protected WithEvents operator1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tboperator2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents chk_recipe As System.Web.UI.WebControls.CheckBox
    Protected WithEvents bumker1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents bumker2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents bumker3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents silo As System.Web.UI.WebControls.TextBox
    Protected WithEvents silo1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents strttime As System.Web.UI.WebControls.TextBox
    Protected WithEvents stptime As System.Web.UI.WebControls.TextBox
    Protected WithEvents tbhexa As System.Web.UI.WebControls.TextBox
    Protected WithEvents btchcoated As System.Web.UI.WebControls.TextBox
    Protected WithEvents resin As System.Web.UI.WebControls.TextBox
    Protected WithEvents make As System.Web.UI.WebControls.TextBox
    Protected WithEvents sandmnth As System.Web.UI.WebControls.TextBox
    Protected WithEvents remarks As System.Web.UI.WebControls.TextBox
    Protected WithEvents lbldate As System.Web.UI.WebControls.Label
    Protected WithEvents lblshift As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_sseje As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_operator1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_operator2 As System.Web.UI.WebControls.Label
    Protected WithEvents lblrecipe As System.Web.UI.WebControls.Label
    Protected WithEvents lblbumker1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblbumker2 As System.Web.UI.WebControls.Label
    Protected WithEvents lblbumker3 As System.Web.UI.WebControls.Label
    Protected WithEvents lblsilo As System.Web.UI.WebControls.Label
    Protected WithEvents lbldrier As System.Web.UI.WebControls.Label
    Protected WithEvents lblhexa As System.Web.UI.WebControls.Label
    Protected WithEvents lblmsg As System.Web.UI.WebControls.Label
    Protected WithEvents lblstrttime As System.Web.UI.WebControls.Label
    Protected WithEvents lblstptime As System.Web.UI.WebControls.Label
    Protected WithEvents lblhxlprep As System.Web.UI.WebControls.Label
    Protected WithEvents rblhxlprep As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents lblbtchcoated As System.Web.UI.WebControls.Label
    Protected WithEvents lblresin As System.Web.UI.WebControls.Label
    Protected WithEvents lblmake As System.Web.UI.WebControls.Label
    Protected WithEvents lblbatch As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_batch As System.Web.UI.WebControls.Label
    Protected WithEvents lblsandmnth As System.Web.UI.WebControls.Label
    Protected WithEvents lblremarks As System.Web.UI.WebControls.Label
    Protected WithEvents btn_batch As System.Web.UI.WebControls.Button
    Protected WithEvents btnsave As System.Web.UI.WebControls.Button
    Protected WithEvents btnreset As System.Web.UI.WebControls.Button
    Protected WithEvents vw_batch As System.Web.UI.WebControls.TextBox
    Protected WithEvents Vw_batch_no As System.Web.UI.WebControls.DataGrid
    Protected WithEvents vw_sand_details As System.Web.UI.WebControls.DataGrid

    'Dim con As New SqlConnection
    Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
    Dim cmd1 As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
    Dim dt As Date
    Dim Shift As String

    Shared themeValue As String

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

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'formclear()
        lblmsg.Visible = False
        lbl_batch.Visible = False
        If IsPostBack = False Then
            getdateshift()
        End If
        'getdateshift()
    End Sub

    Private Sub getdateshift()
        If Now.Hour = 0 OrElse Now.Hour = 1 OrElse Now.Hour = 2 OrElse Now.Hour = 3 OrElse Now.Hour = 4 OrElse Now.Hour = 5 Then
            sanddate.Text = Now.Date.AddDays(-1)
        Else
            sanddate.Text = Now.Date
        End If

        dt = Now
        Select Case dt.Hour
            Case 6 To 13
                Shift = "A"
            Case 14 To 21
                Shift = "B"
            Case 9 To 17
                Shift = "G"
            Case Else
                Shift = "C"
        End Select
        Dim i As Integer = 0
        rblshift.ClearSelection()
        For i = 0 To rblshift.Items.Count - 1
            If rblshift.Items(i).Text = Shift Then
                rblshift.Items(i).Selected = True
                Exit For
            End If
        Next
        dt = Nothing
        Shift = Nothing
    End Sub


    Private Sub formclear()
        'sanddate.Text = ""
        sse_jename.Text = ""
        operator1.Text = ""
        tboperator2.Text = ""
        bumker1.Text = ""
        bumker2.Text = ""
        bumker3.Text = ""
        silo1.Text = ""
        strttime.Text = ""
        stptime.Text = ""
        tbhexa.Text = ""
        btchcoated.Text = ""
        resin.Text = ""
        make.Text = ""
        sandmnth.Text = ""
        remarks.Text = ""
        vw_batch.Text = ""
    End Sub



    Protected Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        Dim done As Boolean
        Try
            insert_data()
            insert_batch()
            lblmsg.Text = "Batch no. and data inserted successfully"
        Catch exp As Exception
            Throw New Exception(exp.Message)
        End Try
        show_sand()
        show_batch()
        done = True
        'If done Then

        'End If
    End Sub

    Private Sub show_sand()
        Try
            cmd.Connection.Open()
            cmd.CommandText = "select bumker1 Bumker_1 , bumker2 Bumker_2  , bumker3 Bumker_3 , silo Silo_No , start_time Drier_Strt_Time ,
                                end_time End_Time, hexa_resol Hexa_Sol_Prep , hexa_used Hexa_Used, batch_coated Coated_Batch, resin_used Resin_Used, sand_quantity Make from mm_sandPreparation where date='" & Format(CDate(sanddate.Text), "MM/dd/yyyy") & "' 
                                and shift='" & rblshift.SelectedValue & "' "
            Using sda As New SqlDataAdapter()
                sda.SelectCommand = cmd
                Using dt As New DataSet()
                    sda.Fill(dt)
                    vw_sand_details.DataSource = dt
                    vw_sand_details.DataBind()
                End Using
            End Using
        Catch ex As Exception
            Throw New Exception(ex.Message)
        Finally
            cmd.Connection.Close()
        End Try
    End Sub

    Private Sub show_batch()
        Vw_batch_no.DataSource = Nothing
        Vw_batch_no.DataBind()
        Try
            cmd.Connection.Open()
            cmd.CommandText = "Select (LEFT(Date,11)) Date,shift Shift,batch_no Batch_No_Selected from mm_sand_batches where date='" & Format(CDate(sanddate.Text), "MM/dd/yyyy") & "' 
                                and shift='" & rblshift.SelectedValue & "'"
            Using sda As New SqlDataAdapter()
                sda.SelectCommand = cmd
                Using dt As New DataSet()
                    sda.Fill(dt)
                    Vw_batch_no.DataSource = dt
                    Vw_batch_no.DataBind()
                End Using
            End Using
        Catch ex As Exception
            Throw New Exception(ex.Message)
        Finally
            cmd.Connection.Close()
        End Try
        formclear()
    End Sub

    Private Sub insert_batch()
        Try
            cmd1.Connection.Open()
            cmd1.CommandText ="INSERT INTO mm_sand_batches(date,shift,batch_no)VALUES ('" & Format(CDate(sanddate.Text), "MM/dd/yyyy") & "','" & rblshift.SelectedValue.ToString() & "','" & vw_batch.Text & "')"
            cmd1.ExecuteNonQuery()
        Catch ex1 As Exception
            Throw New Exception(ex1.Message)
        Finally
            cmd1.Connection.Close()
        End Try
    End Sub

    Private Sub insert_data()
        Try
            cmd.Connection.Open()
            cmd.CommandText = "INSERT INTO mm_sandPreparation(date,shift,sse_je,operator1,operator2,bumker1,bumker2,bumker3,silo,start_time,end_time,hexa_resol,hexa_used,batch_coated,resin_used,make,sand_quantity,remarks) VALUES ('" & Format(CDate(sanddate.Text), "MM/dd/yyyy") & "',
         '" & rblshift.SelectedValue.ToString() & "','" & sse_jename.Text & "','" & operator1.Text & "','" & tboperator2.Text & "','" & bumker1.Text & "','" & bumker2.Text & "','" & bumker3.Text & "','" & silo1.Text & "','" & Format(CDate(strttime.Text), "HH:mm") & "','" & Format(CDate(stptime.Text), "HH:mm") & "',
            '" & rblhxlprep.SelectedValue.ToString() & "','" & tbhexa.Text & "','" & btchcoated.Text & "','" & resin.Text & "' , '" & make.Text & "' ,'" & sandmnth.Text & "','" & remarks.Text & "')"
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Throw New Exception(ex.Message)
        Finally
            cmd.Connection.Close()
        End Try

    End Sub

    'cmd.CommandText = "INSERT INTO mm_sandPreparation(date,shift,sse_je,operator1,operator2,bumker1,bumker2,bumker3,silo,start_time,end_time,hexa_resol,hexa_used,batch_coated,resin_used,make,sand_quantity,remarks) VALUES ('" & DateTime.Parse(sanddate.Text) & "',
    '     '" & rblshift.SelectedValue.ToString() & "','" & sse_jename.Text & "','" & operator1.Text & "','" & tboperator2.Text & "','" & bumker1.Text & "','" & bumker2.Text & "','" & bumker3.Text & "','" & silo1.Text & "','" & DateTime.Parse(strttime.Text) & "','" & DateTime.Parse(stptime.Text) & "',
    '        '" & rblhxlprep.SelectedValue.ToString() & "','" & tbhexa.Text & "','" & btchcoated.Text & "','" & resin.Text & "' , '" & make.Text & "' ,'" & sandmnth.Text & "','" & remarks.Text & "')"

    Protected Sub chk_recipe_CheckedChanged(sender As Object, e As EventArgs) Handles chk_recipe.CheckedChanged
        If chk_recipe.Checked = True Then
            Dim url As String = "sand_recipe_table.aspx"
            Dim s As String = "window.open('" & url + "', 'popup_window', 'width=700,height=800,left=500,top=100,resizable=yes');"
            ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)
        End If
    End Sub


    Protected Sub rblhxlprep_SelectedIndexChanged(sender As Object, e As EventArgs)
        If rblhxlprep.SelectedValue = 1 Then
            lblhexa.Visible = True
            tbhexa.Visible = True
        Else
            lblhexa.Visible = False
            tbhexa.Visible = False
        End If
    End Sub



    Protected Sub btnreset_Click(sender As Object, e As EventArgs) Handles btnreset.Click
        formclear()
    End Sub



    Protected Sub btn_batch_Click(sender As Object, e As EventArgs) Handles btn_batch.Click
        Dim bn1, vbn As String
        lbl_batch.Visible = False
        If tb_batch.Text > 50 Then
            lbl_batch.Visible = True
            lbl_batch.Text = "InValid Batch No !"
            tb_batch.Text = ""
            Exit Sub
        Else
            lbl_batch.Visible = False
            bn1 = tb_batch.Text
            vbn = vw_batch.Text
            vw_batch.Text = vbn + bn1 + ","
            tb_batch.Text = ""
        End If

    End Sub
End Class