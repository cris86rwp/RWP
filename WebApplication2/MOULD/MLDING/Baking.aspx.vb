Imports System.Data
Imports System.Data.SqlClient
Public Class Baking
    Inherits System.Web.UI.Page

    Protected WithEvents panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents panel2 As System.Web.UI.WebControls.Panel
    Protected WithEvents panel3 As System.Web.UI.WebControls.Panel
    Protected WithEvents panel4 As System.Web.UI.WebControls.Panel
    Protected WithEvents txtdate As System.Web.UI.WebControls.TextBox
    Protected WithEvents Ddlshift As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtSSEJE As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtoperator As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtmould As System.Web.UI.WebControls.TextBox
    Protected WithEvents rbl1 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents heat As System.Web.UI.WebControls.Label
    Protected WithEvents txtheat As System.Web.UI.WebControls.TextBox
    Protected WithEvents starttime As System.Web.UI.WebControls.Label
    Protected WithEvents txtstarttime As System.Web.UI.WebControls.TextBox
    Protected WithEvents finishtime As System.Web.UI.WebControls.Label
    Protected WithEvents txtfinishtime As System.Web.UI.WebControls.TextBox
    Protected WithEvents mpo As System.Web.UI.WebControls.Label
    Protected WithEvents Ddlmpo As System.Web.UI.WebControls.DropDownList
    Protected WithEvents mpono As System.Web.UI.WebControls.Label
    Protected WithEvents txtmpono As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtsandqty As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdomegm As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdomekg As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdometmp1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdometmp2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpadtmp1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpadtmp2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpadtmp3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpadtmp4 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad11 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad12 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad13 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad14 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad15 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad16 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad17 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad18 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad19 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad21 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad22 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad23 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad24 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad25 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad26 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad27 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad28 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad29 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad31 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad32 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad33 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad34 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad35 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad36 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad37 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad38 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad39 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad41 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad42 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad43 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad44 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad45 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad46 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad47 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad48 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtpad49 As System.Web.UI.WebControls.TextBox
    Protected WithEvents copeno As System.Web.UI.WebControls.Label
    Protected WithEvents txtcopeno As System.Web.UI.WebControls.TextBox
    Protected WithEvents copetmp As System.Web.UI.WebControls.Label
    Protected WithEvents txtcopetmp As System.Web.UI.WebControls.TextBox
    Protected WithEvents padno As System.Web.UI.WebControls.Label
    Protected WithEvents Ddlpadno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents baktime As System.Web.UI.WebControls.Label
    Protected WithEvents txtbaktime As System.Web.UI.WebControls.TextBox
    Protected WithEvents domeno As System.Web.UI.WebControls.Label
    Protected WithEvents Ddldomeno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents dometime As System.Web.UI.WebControls.Label
    Protected WithEvents txtdometime As System.Web.UI.WebControls.TextBox
    Protected WithEvents status As System.Web.UI.WebControls.Label
    Protected WithEvents Ddlstatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnsave As System.Web.UI.WebControls.Button
    Protected WithEvents btnclear As System.Web.UI.WebControls.Button
    Protected WithEvents btnexit As System.Web.UI.WebControls.Button
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents Dd1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtremarks As System.Web.UI.WebControls.TextBox
    Protected WithEvents rfvOperators As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents sandqty As System.Web.UI.WebControls.Label
    Protected WithEvents domeingm As System.Web.UI.WebControls.Label
    Protected WithEvents domeinkg As System.Web.UI.WebControls.Label
    Protected WithEvents dometemp As System.Web.UI.WebControls.Label
    Protected WithEvents padtemp As System.Web.UI.WebControls.Label


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


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            Try
                SetScreen()
            Catch exp As Exception
                lblMessage.Text = exp.Message
            End Try
        End If
        txtmould.Text = GetHeatWoNo()

        txtstarttime.Text = Right(("0" + Now.Hour.ToString), 2) + ":" + Right(("0" + Now.Minute.ToString), 2)
        txtfinishtime.Text = Right(("0" + Now.Hour.ToString), 2) + ":" + Right(("0" + Now.Minute.ToString), 2)
        getDateShift()

    End Sub

    Private Sub SetScreen()
        panel3.Visible = False
        panel4.Visible = False
        txtheat.Text = RWF.tables.GetLatestHeatbaking
        GetHeatWoNo()
        Try
            If rbl1.SelectedItem.Value = 1 Then
                panel3.Visible = True
                panel4.Visible = False

            ElseIf rbl1.SelectedItem.Value = 2 Then
                panel3.Visible = False
                panel4.Visible = True
            End If
        Catch exp As Exception
            lblMessage.Text = exp.Message
        End Try
    End Sub

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btnclear_Click(sender As Object, e As EventArgs) Handles btnclear.Click
        clear()
    End Sub

    Protected Sub rbl1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rbl1.SelectedIndexChanged
        SetScreen()

    End Sub

    Protected Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click

        If txtcopeno.Text <> String.Empty Then
            Dim n As Integer = check()
            Dim n1 As Integer = check2()
            If n = 0 Or n1 = 0 Then
                Dim Done As Boolean
                Try
                    Done = save()

                Catch exp As Exception
                    lblMessage.Text = exp.Message
                End Try
                If Done Then
                    lblMessage.Text = " Updation Successful !"
                End If
            Else
                lblMessage.Text = "record already exists"
            End If
        Else
            lblMessage.Text = "please enter cope number"
        End If

    End Sub



    Public Function save()
        Dim done As Boolean
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Try
            con.ConnectionString = "Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342\RWPSERVER;Initial Catalog=wap;Persist Security Info=True;User Id=crissqlserver;Password=cris-sql@1234567890"
            con.Open()
            cmd.Connection = con

            cmd.CommandText = "Insert INTO mm_bakingstation1(date,shift,sseorje,operatorname,mouldingwonumber,
                              mouldorigin,heatnumber,mpo,starttime,finishtime,sandqty,dome_gm,
                              dome_kg,dometmp1,dometmp2,pad_tmp1,pad_tmp2,pad_tmp3,pad_tmp4,pad1tmp1,pad1tmp2,pad1tmp3,pad1tmp4,
                              pad1tmp5,pad1tmp6,pad1tmp7,pad1tmp8,pad1tmp9,pad2tmp1,pad2tmp2,pad2tmp3,pad2tmp4,pad2tmp5,
                              pad2tmp6,pad2tmp7,pad2tmp8,pad2tmp9,pad3tmp1,pad3tmp2,pad3tmp3,pad3tmp4,pad3tmp5,pad3tmp6,pad3tmp7,
                              pad3tmp8,pad3tmp9,pad4tmp1,pad4tmp2,pad4tmp3,pad4tmp4,pad4tmp5,pad4tmp6,pad4tmp7,pad4tmp8,pad4tmp9,
                              cope_no,cope_tmp,pad_no,bak_time,dome_no,dome_time,status,remarks) 
                       VALUES ('" & Convert.ToDateTime(txtdate.Text) & "', '" & Ddlshift.SelectedItem.Value & "' , '" & txtSSEJE.Text & "', '" & txtoperator.Text & "', '" & txtmould.Text & "',
                               '" & rbl1.SelectedItem.Text & "', '" & Convert.ToInt64(txtheat.Text) & "','" & Ddlmpo.SelectedItem.Text & "' , '" & txtstarttime.Text & "', '" & txtfinishtime.Text & "', '" & txtsandqty.Text & "',
                               '" & txtdomegm.Text & "', '" & txtdomekg.Text & "', '" & txtdometmp1.Text & "', '" & txtdometmp2.Text & "', '" & txtpadtmp1.Text & "',
                               '" & txtpadtmp2.Text & "', '" & txtpadtmp3.Text & "', '" & txtpadtmp4.Text & "', '" & txtpad11.Text & "', '" & txtpad12.Text & "',
                               '" & txtpad13.Text & "',  '" & txtpad14.Text & "',  '" & txtpad15.Text & "',  '" & txtpad16.Text & "',  '" & txtpad17.Text & "',  '" & txtpad18.Text & "',
                                '" & txtpad19.Text & "',  '" & txtpad21.Text & "', '" & txtpad22.Text & "', '" & txtpad23.Text & "', '" & txtpad24.Text & "', '" & txtpad25.Text & "', '" & txtpad26.Text & "',
                               '" & txtpad27.Text & "', '" & txtpad28.Text & "', '" & txtpad29.Text & "', '" & txtpad31.Text & "', '" & txtpad32.Text & "', '" & txtpad33.Text & "','" & txtpad34.Text & "',
                                '" & txtpad35.Text & "', '" & txtpad36.Text & "', '" & txtpad37.Text & "', '" & txtpad38.Text & "', '" & txtpad39.Text & "', '" & txtpad41.Text & "', '" & txtpad42.Text & "',
                               '" & txtpad43.Text & "', '" & txtpad44.Text & "', '" & txtpad45.Text & "', '" & txtpad46.Text & "', '" & txtpad47.Text & "', '" & txtpad48.Text & "', '" & txtpad49.Text & "',
                                '" & Convert.ToInt64(txtcopeno.Text) & "', '" & txtcopetmp.Text & "','" & Ddlpadno.SelectedItem.Text & "' , '" & txtbaktime.Text & "', '" & Ddldomeno.SelectedItem.Text & "', '" & txtdometime.Text & "', '" & Ddlstatus.SelectedItem.Text & "','" & txtremarks.Text & "')"

            If cmd.ExecuteNonQuery() = 1 Then done = True

        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally
            con.Close()
        End Try
        Return done
    End Function
    Public Function clear()
        txtdate.Text = ""
        txtSSEJE.Text = ""
        txtoperator.Text = ""
        txtmould.Text = ""
        txtheat.Text = ""
        txtstarttime.Text = ""
        txtfinishtime.Text = ""
        txtsandqty.Text = ""
        txtdomegm.Text = ""
        txtdomekg.Text = ""
        txtdometmp1.Text = ""
        txtdometmp2.Text = ""
        txtpadtmp1.Text = ""
        txtpadtmp2.Text = ""
        txtpadtmp3.Text = ""
        txtpadtmp4.Text = ""
        txtpad11.Text = ""
        txtpad12.Text = ""
        txtpad13.Text = ""
        txtpad14.Text = ""
        txtpad15.Text = ""
        txtpad16.Text = ""
        txtpad17.Text = ""
        txtpad18.Text = ""
        txtpad19.Text = ""
        txtpad21.Text = ""
        txtpad22.Text = ""
        txtpad23.Text = ""
        txtpad24.Text = ""
        txtpad25.Text = ""
        txtpad26.Text = ""
        txtpad27.Text = ""
        txtpad28.Text = ""
        txtpad29.Text = ""
        txtpad31.Text = ""
        txtpad32.Text = ""
        txtpad33.Text = ""
        txtpad34.Text = ""
        txtpad35.Text = ""
        txtpad36.Text = ""
        txtpad37.Text = ""
        txtpad38.Text = ""
        txtpad39.Text = ""
        txtpad41.Text = ""
        txtpad42.Text = ""
        txtpad43.Text = ""
        txtpad44.Text = ""
        txtpad45.Text = ""
        txtpad46.Text = ""
        txtpad47.Text = ""
        txtpad48.Text = ""
        txtpad49.Text = ""
        txtcopeno.Text = ""
        txtcopetmp.Text = ""
        txtbaktime.Text = ""
        txtdometime.Text = ""
        txtremarks.Text = ""
    End Function

    Private Sub txtheat_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtheat.TextChanged
        GetHeatWoNo()
    End Sub

    Public Function GetHeatWoNo()
        Dim dt As New DataTable()
        dt = RWF.tables.getHeatWo(Val(txtheat.Text))
        If dt.Rows.Count > 0 Then
            txtmould.Text = IIf(IsDBNull(dt.Rows(0)("number")), "", dt.Rows(0)("number"))

        Else
            txtmould.Text = ""

        End If
        dt = Nothing
        Return dt
    End Function

    Public Sub getDateShift()
        If Now.Hour = 0 OrElse Now.Hour = 1 OrElse Now.Hour = 2 OrElse Now.Hour = 3 OrElse Now.Hour = 4 OrElse Now.Hour = 5 Then
            txtdate.Text = CDate(Now.Date.AddDays(-1))
        Else
            txtdate.Text = CDate(Now.Date)
        End If
        Dim dt As Date
        Dim Shift As String
        dt = Now
        Select Case dt.Hour
            Case 6 To 13
                Shift = "A"
            Case 14 To 21
                Shift = "B"
            Case Else
                Shift = "C"
        End Select
        Dim i As Integer = 0
        Ddlshift.ClearSelection()
        For i = 0 To Ddlshift.Items.Count - 1
            If Ddlshift.Items(i).Text = Shift Then
                Ddlshift.Items(i).Selected = True
                Exit For
            End If
        Next
        dt = Nothing
        Shift = Nothing
        i = Nothing
    End Sub


    Public Function check()
        Dim hh As Integer = Convert.ToInt64(txtheat.Text)
        Dim cn As Integer = Convert.ToInt64(txtcopeno.Text)

        Dim con As New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342\RWPSERVER;Initial Catalog=wap;Persist Security Info=True;User Id=crissqlserver;Password=cris-sql@1234567890")
        con.Open()
        Dim cmd As New SqlCommand("SELECT COUNT(*) FROM mm_bakingstation1 where heatnumber=@hh  and cope_no=@cn ", con)
        cmd.Parameters.AddWithValue("@hh", hh)
        'cmd.Parameters.AddWithValue("@mpo", mpo)
        cmd.Parameters.AddWithValue("@cn", cn)
        Dim i As Integer = Convert.ToInt32(cmd.ExecuteScalar())
        cmd = Nothing
        con.Close()
        lblMessage.Text = i
        Return i
    End Function
    Public Function check2()
        'Dim hh As Integer = txtheatnumber.Text
        Dim cn As Integer = Convert.ToInt64(txtcopeno.Text)
        Dim mpo As String = Ddlmpo.SelectedItem.Value
        Dim con As New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342\RWPSERVER;Initial Catalog=wap;Persist Security Info=True;User Id=crissqlserver;Password=cris-sql@1234567890")
        con.Open()
        Dim cmd As New SqlCommand("SELECT COUNT(*) FROM mm_bakingstation1 where mpo=@mpo and cope_no=@cn ", con)

        cmd.Parameters.AddWithValue("@mpo", mpo)
        cmd.Parameters.AddWithValue("@cn", cn)
        Dim i As Integer = Convert.ToInt32(cmd.ExecuteScalar())
        cmd = Nothing
        con.Close()
        lblMessage.Text = i
        Return i
    End Function


End Class


