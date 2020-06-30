Imports System.Data.SqlClient
Imports System.Data

Public Class pouringtube_pre
    Inherits System.Web.UI.Page
    Protected WithEvents Dd1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents shift_dd1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents date_txt As System.Web.UI.WebControls.TextBox
    Protected WithEvents sse_txt As System.Web.UI.WebControls.TextBox
    Protected WithEvents op1_txt As System.Web.UI.WebControls.TextBox
    Protected WithEvents op2_txt As System.Web.UI.WebControls.TextBox
    Protected WithEvents op3_txt As System.Web.UI.WebControls.TextBox
    Protected WithEvents super_txt As System.Web.UI.WebControls.TextBox
    Protected WithEvents pressing_txt As System.Web.UI.WebControls.TextBox
    Protected WithEvents measuring_txt As System.Web.UI.WebControls.TextBox
    Protected WithEvents height_txt As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tube_centeringtn1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tube_centeringtn2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tube_centeringtn3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tube_centeringtn4 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tube_centeringtn5 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tube_centeringtn6 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tube_centeringtn7 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tube_centeringtn8 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tube_centeringtn9 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Tube_centeringtn10 As System.Web.UI.WebControls.TextBox
    Protected WithEvents parting_tn1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents parting_tn2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents parting_tn3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents parting_tn4 As System.Web.UI.WebControls.TextBox
    Protected WithEvents parting_tn5 As System.Web.UI.WebControls.TextBox
    Protected WithEvents parting_tn6 As System.Web.UI.WebControls.TextBox
    Protected WithEvents parting_tn7 As System.Web.UI.WebControls.TextBox
    Protected WithEvents parting_tn8 As System.Web.UI.WebControls.TextBox
    Protected WithEvents parting_tn9 As System.Web.UI.WebControls.TextBox
    Protected WithEvents parting_tn10 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tubeno_tn1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tubeno_tn2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tubeno_tn3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tubeno_tn4 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tubeno_tn5 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tubeno_tn6 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tubeno_tn7 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tubeno_tn8 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tubeno_tn9 As System.Web.UI.WebControls.TextBox
    Protected WithEvents tubeno_tn10 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vaccume_txt1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vaccume_txt2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vaccume_txt3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vaccume_txt4 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vaccume_txt5 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vaccume_txt6 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vaccume_txt7 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vaccume_txt8 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vaccume_txt9 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vaccume_txt10 As System.Web.UI.WebControls.TextBox
    Protected WithEvents time_txt1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents time_txt2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents time_txt3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents time_txt4 As System.Web.UI.WebControls.TextBox
    Protected WithEvents time_txt5 As System.Web.UI.WebControls.TextBox
    Protected WithEvents time_txt6 As System.Web.UI.WebControls.TextBox
    Protected WithEvents time_txt7 As System.Web.UI.WebControls.TextBox
    Protected WithEvents time_txt8 As System.Web.UI.WebControls.TextBox
    Protected WithEvents time_txt9 As System.Web.UI.WebControls.TextBox
    Protected WithEvents time_txt10 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txt_glaze As System.Web.UI.WebControls.TextBox
    Protected WithEvents Txt_Baume As System.Web.UI.WebControls.TextBox
    Protected WithEvents txt_remark As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents lbl_msg As System.Web.UI.WebControls.Label



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


        getDateShift()




    End Sub



    Public Sub getDateShift()
        If Now.Hour = 0 OrElse Now.Hour = 1 OrElse Now.Hour = 2 OrElse Now.Hour = 3 OrElse Now.Hour = 4 OrElse Now.Hour = 5 Then
            date_txt.Text = CDate(Now.Date.AddDays(-1))
        Else
            date_txt.Text = CDate(Now.Date)
        End If
        Dim dt As Date
        Dim Shift As String
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
        shift_dd1.ClearSelection()
        For i = 0 To shift_dd1.Items.Count - 1
            If shift_dd1.Items(i).Text = Shift Then
                shift_dd1.Items(i).Selected = True
                Exit For
            End If
        Next
        dt = Nothing
        Shift = Nothing
        i = Nothing
    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim Done As Boolean
        Try
            Done = fun()
        Catch exp As Exception
            lbl_msg.Text = exp.Message
        End Try
        If Done Then
            lbl_msg.Text = " Data Insertion Successful !"
        End If
    End Sub


    Public Function fun()
        Dim done As Boolean
        ' Dim con As New SqlConnection
        '  Dim cmd As New SqlCommand
        Dim cmd As SqlClient.SqlCommand = rwfGen.Connection.CmdObj
        'cmd = rwfGen.Connection.CmdObj
        cmd.CommandText = "Insert INTO mm_pouring_tube_preparation(date,shift,sse,op1,op2,op3,super_3000in_kg,no_of_hc_pressing,no_of_p_tube,tubehieght_in_inch,tubecentering_tn1,tubecentering_tn2,tubecentering_tn3,tubecentering_tn4,tubecentering_tn5,tubecentering_tn6,tubecentering_tn7,tubecentering_tn8,tubecentering_tn9,tubecentering_tn10,parting_tn1,parting_tn2,parting_tn3,parting_tn4,parting_tn5,parting_tn6,parting_tn7,parting_tn8,parting_tn9,parting_tn10,glindingtubeno_tn1,glindingtubeno_tn2,glindingtubeno_tn3,glindingtubeno_tn4,glindingtubeno_tn5,glindingtubeno_tn6,glindingtubeno_tn7,glindingtubeno_tn8,glindingtubeno_tn9,glindingtubeno_tn10,glindingvaccume_tn1,glindingvaccume_tn2,glindingvaccume_tn3,glindingvaccume_tn4,glindingvaccume_tn5,glindingvaccume_tn6,glindingvaccume_tn7,glindingvaccume_tn8,glindingvaccume_tn9,glindingvaccume_tn10,glindingtime_tn1,glindingtime_tn2,glindingtime_tn3,glindingtime_tn4,glindingtime_tn5,glindingtime_tn6,glindingtime_tn7,glindingtime_tn8,glindingtime_tn9,glindingtime_tn10,glazed_kg,baume,remarks) 
  VALUES ('" & date_txt.Text & "',@ans,'" & sse_txt.Text & "','" & op1_txt.Text & "','" & op2_txt.Text & "','" & op3_txt.Text & "','" & super_txt.Text & "','" & pressing_txt.Text & "','" & measuring_txt.Text & "','" & height_txt.Text & "','" & Tube_centeringtn1.Text & "','" & Tube_centeringtn2.Text & "','" & Tube_centeringtn3.Text & "','" & Tube_centeringtn4.Text & "','" & Tube_centeringtn5.Text & "','" & Tube_centeringtn6.Text & "','" & Tube_centeringtn7.Text & "','" & Tube_centeringtn8.Text & "','" & Tube_centeringtn9.Text & "','" & Tube_centeringtn10.Text & "','" & parting_tn1.Text & "','" & parting_tn2.Text & "','" & parting_tn3.Text & "','" & parting_tn4.Text & "','" & parting_tn5.Text & "','" & parting_tn6.Text & "','" & parting_tn7.Text & "','" & parting_tn8.Text & "','" & parting_tn9.Text & "','" & parting_tn10.Text & "','" & tubeno_tn1.Text & "','" & tubeno_tn2.Text & "','" & tubeno_tn3.Text & "','" & tubeno_tn4.Text & "','" & tubeno_tn5.Text & "','" & tubeno_tn6.Text & "','" & tubeno_tn7.Text & "','" & tubeno_tn8.Text & "','" & tubeno_tn9.Text & "','" & tubeno_tn10.Text & "','" & vaccume_txt1.Text & "','" & vaccume_txt2.Text & "','" & vaccume_txt3.Text & "','" & vaccume_txt4.Text & "','" & vaccume_txt5.Text & "','" & vaccume_txt6.Text & "','" & vaccume_txt7.Text & "','" & vaccume_txt8.Text & "','" & vaccume_txt9.Text & "','" & vaccume_txt10.Text & "','" & time_txt1.Text & "','" & time_txt2.Text & "','" & time_txt3.Text & "','" & time_txt4.Text & "','" & time_txt5.Text & "','" & time_txt6.Text & "','" & time_txt7.Text & "','" & time_txt8.Text & "','" & time_txt9.Text & "','" & time_txt10.Text & "','" & txt_glaze.Text & "','" & Txt_Baume.Text & "','" & txt_remark.Text & "')"
        cmd.Parameters.AddWithValue("ans", shift_dd1.SelectedItem.Text)
        Try


            ' con.ConnectionString = "Data Source=RWFSERVER\RWF;Initial Catalog=wap;Persist Security Info=True;User Id=crissqlserver;Password=cris-sql@1234567890"

            cmd.Connection.Open()



            If cmd.ExecuteNonQuery() = 1 Then
                done = True
            End If
        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally
            cmd.Connection.Close()
        End Try
        Return done

    End Function

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        sse_txt.Text = ""
        op1_txt.Text = ""
        op2_txt.Text = ""
        op3_txt.Text = ""
        super_txt.Text = ""
        pressing_txt.Text = ""
        height_txt.Text = ""
        measuring_txt.Text = ""
        Tube_centeringtn1.Text = ""
        Tube_centeringtn2.Text = ""
        Tube_centeringtn3.Text = ""
        Tube_centeringtn4.Text = ""
        Tube_centeringtn5.Text = ""
        Tube_centeringtn6.Text = ""
        Tube_centeringtn7.Text = ""
        Tube_centeringtn8.Text = ""
        Tube_centeringtn9.Text = ""
        Tube_centeringtn10.Text = ""
        parting_tn1.Text = ""
        parting_tn2.Text = ""
        parting_tn3.Text = ""
        parting_tn4.Text = ""
        parting_tn5.Text = ""
        parting_tn6.Text = ""
        parting_tn7.Text = ""
        parting_tn8.Text = ""
        parting_tn9.Text = ""
        parting_tn10.Text = ""
        tubeno_tn1.Text = ""
        tubeno_tn2.Text = ""
        tubeno_tn3.Text = ""
        tubeno_tn4.Text = ""
        tubeno_tn5.Text = ""
        tubeno_tn6.Text = ""
        tubeno_tn7.Text = ""
        tubeno_tn8.Text = ""
        tubeno_tn9.Text = ""
        tubeno_tn10.Text = ""
        vaccume_txt1.Text = ""
        vaccume_txt2.Text = ""
        vaccume_txt3.Text = ""
        vaccume_txt4.Text = ""
        vaccume_txt5.Text = ""
        vaccume_txt6.Text = ""
        vaccume_txt7.Text = ""
        vaccume_txt8.Text = ""
        vaccume_txt9.Text = ""
        vaccume_txt10.Text = ""
        time_txt1.Text = ""
        time_txt2.Text = ""
        time_txt3.Text = ""
        time_txt4.Text = ""
        time_txt5.Text = ""
        time_txt6.Text = ""
        time_txt7.Text = ""
        time_txt8.Text = ""
        time_txt9.Text = ""
        time_txt10.Text = ""
        txt_glaze.Text = ""
        Txt_Baume.Text = ""
        txt_remark.Text = ""
        lbl_msg.Text = ""
        shift_dd1.Text = ""

    End Sub



End Class