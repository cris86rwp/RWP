Imports System.Data
Imports System.Data.SqlClient
Public Class spraystationentry
    Inherits System.Web.UI.Page
    Protected WithEvents lblmessage As System.Web.UI.WebControls.Label
    Protected WithEvents txtsdate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtsseje As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtop As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtwo As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtop1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtop2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtstime As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtftime As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtbatch1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtbaume1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtbatch2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtbaume2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtbatch3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtbaume3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents ddshift As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtheat As System.Web.UI.WebControls.TextBox
    Protected WithEvents ddmponumber As System.Web.UI.WebControls.DropDownList
    Protected WithEvents rblmouldorigin As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents rblspray As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents lheat As System.Web.UI.WebControls.Label
    Protected WithEvents lmpo As System.Web.UI.WebControls.Label
    Protected WithEvents lcreason As System.Web.UI.WebControls.Label
    Protected WithEvents txtcopenumber As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcopetemp As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcctc As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcspr As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcbaume As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtchub As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcplate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcrim As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtctank As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcatom As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtctrigger As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcstoppipemake As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcstopperheadmake As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtccardboardtubemake As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtcremark As System.Web.UI.WebControls.TextBox
    Protected WithEvents rblstation As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents ddholdingoven As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddstatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddreason As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddcopecleanermachine As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddctc As System.Web.UI.WebControls.DropDownList
    Protected WithEvents dddomedisc As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnsave As System.Web.UI.WebControls.Button
    Protected WithEvents btnclear As System.Web.UI.WebControls.Button
    Protected WithEvents btnexit As System.Web.UI.WebControls.Button
    Protected WithEvents txtdragnumber As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdragtemp As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdt As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdspr As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdbaume As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdhub As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdplaterim As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdtank As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdatom As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdtrigger As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtdremark As System.Web.UI.WebControls.TextBox
    Protected WithEvents rbldstation As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents dddholdingoven As System.Web.UI.WebControls.DropDownList
    Protected WithEvents dddstatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents dddreason As System.Web.UI.WebControls.DropDownList
    Protected WithEvents dddragcleanermachine As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnsave1 As System.Web.UI.WebControls.Button
    Protected WithEvents btnclear1 As System.Web.UI.WebControls.Button
    Protected WithEvents btnexit1 As System.Web.UI.WebControls.Button
    Protected WithEvents panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents panel2 As System.Web.UI.WebControls.Panel
    Protected WithEvents panelcope As System.Web.UI.WebControls.Panel
    Protected WithEvents paneldrag As System.Web.UI.WebControls.Panel
    Protected WithEvents panelgrid As System.Web.UI.WebControls.Panel
    Protected WithEvents data1 As System.Web.UI.WebControls.GridView
    Protected WithEvents data2 As System.Web.UI.WebControls.GridView



    Shared themeValue As String

    Public Sub New()

        AddHandler PreInit, New EventHandler(AddressOf Page_PreInit)
    End Sub


    Private Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs)

        ' Page.Theme = themeValue
        Page.Theme = Session("Theme")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None
        'put usercode to initialize the page
        Try
            If Page.IsPostBack = False Then

                SetScreen()

            End If
        Catch exp As Exception
            lblmessage.Text = exp.Message
        End Try
    End Sub
    Private Sub SetScreen()
        getcopeheat()
        panelcope.Visible = False
        paneldrag.Visible = False
        Try

            If rblspray.SelectedItem.Value = "cope" Then

                panelcope.Visible = True
                paneldrag.Visible = False
                setcope()
                viewcopedata()
                If rblstation.SelectedItem.Value = "station1" And rblspray.SelectedItem.Value = "cope" Then
                    txtcspr.Text = txtop1.Text
                ElseIf rblstation.SelectedItem.Value = "station2" And rblspray.SelectedItem.Value = "cope" Then
                    txtcspr.Text = txtop2.Text
                End If
            Else
                panelcope.Visible = False
                paneldrag.Visible = True
                setdrag()
                viewdragdata()
                If rbldstation.SelectedItem.Value = "station1" And rblspray.SelectedItem.Value = "drag" Then
                    txtdspr.Text = txtop1.Text
                ElseIf rbldstation.SelectedItem.Value = "station2" And rblspray.SelectedItem.Value = "drag" Then

                    txtdspr.Text = txtop2.Text
                End If
            End If
            If rblmouldorigin.SelectedItem.Value = "heat" Then
                lheat.Visible = True
                getcopeheat()
                txtheat.Visible = True
                lmpo.Visible = False
                ddmponumber.Visible = False
                ddmponumber.SelectedItem.Value = "null"
            Else
                lheat.Visible = False
                txtheat.Text = "0"
                txtheat.Visible = False
                lmpo.Visible = True
                ddmponumber.Visible = True
            End If
        Catch exp As Exception
            lblmessage.Text = exp.Message
        End Try
    End Sub
    Private Sub setcope()
        getcopeheat()
        GetHeatWoNo()
        txtsdate.Text = RWF.tables.GetWorkingDate("MLDING")
        getdatacope()
        txtstime.Text = "00:00"
        txtftime.Text = "00:00"
        txtcopenumber.Text = ""
        txtcopetemp.Text = "0.0"
        txtcspr.Text = ""
        'txtchub.Text = "0.0"
        'txtcplate.Text = "0.0"
        'txtcrim.Text = "0.0"
        'txtctank.Text = "0.0"
        'txtcatom.Text = "0.0"
        'txtctrigger.Text = "0.0"
        txtbaume1.Text = "0.0"
        txtbaume2.Text = "0.0"
        txtbaume3.Text = "0.0"
        'txtcbaume.Text = "0.0"
        txtcremark.Text = ""
        txtcstoppipemake.Text = ""
        txtcstopperheadmake.Text = ""
        txtccardboardtubemake.Text = ""
    End Sub
    Private Sub setdrag()
        getdragheat()
        GetHeatWoNo()
        txtsdate.Text = RWF.tables.GetWorkingDate("MLDING")
        getdatadrag()
        txtstime.Text = "00:00"
        txtftime.Text = "00:00"
        txtdragtemp.Text = "0.0"
        txtdbaume.Text = "0.0"
        txtdragnumber.Text = ""
        txtdspr.Text = ""
        'txtdhub.Text = "0.0"
        'txtdplaterim.Text = "0.0"
        txtdremark.Text = ""
        txtir.Text = ""
        'txtdtank.Text = "0.0"
        'txtdatom.Text = "0.0"
        'txtdtrigger.Text = "0.0"
        txtbaume1.Text = "0.0"
        txtbaume2.Text = "0.0"
        txtbaume3.Text = "0.0"
    End Sub
    Private Sub GetHeatWoNo()
        Dim dt As New DataTable()
        dt = RWF.tables.GetMeltingWO(Val(txtheat.Text))
        If dt.Rows.Count > 0 Then
            txtwo.Text = IIf(IsDBNull(dt.Rows(0)("WO")), "", dt.Rows(0)("WO"))

        Else
            txtwo.Text = ""

        End If
        dt = Nothing
    End Sub

    Protected Sub ddstatus_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddstatus.SelectedIndexChanged
        If ddstatus.SelectedItem.Value = "not ok" Then
            lcreason.Visible = True
            ddreason.Visible = True
        Else
            lcreason.Visible = False
            ddreason.Visible = False
        End If
    End Sub

    Protected Sub dddstatus_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dddstatus.SelectedIndexChanged
        If dddstatus.SelectedItem.Value = "not ok" Then
            ldreason.Visible = True
            dddreason.Visible = True
        Else
            ldreason.Visible = False
            dddreason.Visible = False
        End If
    End Sub

    Protected Sub btnclear_Click(sender As Object, e As EventArgs) Handles btnclear.Click
        clear()
    End Sub
    Private Sub clear()
        txtsdate.Text = Now.Date
        txtsseje.Text = ""
        txtop.Text = ""
        txtop1.Text = ""
        txtop2.Text = ""
        txtbatch1.Text = ""
        txtbatch2.Text = ""
        txtbatch3.Text = ""
        txtstime.Text = "00:00"
        txtftime.Text = "00:00"
        txtcopenumber.Text = ""
        txtcopetemp.Text = "0.0"
        txtcspr.Text = ""
        txtchub.Text = "0.0"
        txtcplate.Text = "0.0"
        txtcrim.Text = "0.0"
        txtctank.Text = "0.0"
        txtcatom.Text = "0.0"
        txtctrigger.Text = "0.0"
        txtcstoppipemake.Text = ""
        txtcstopperheadmake.Text = ""
        txtccardboardtubemake.Text = ""
        txtbaume1.Text = "0.0"
        txtbaume2.Text = "0.0"
        txtbaume3.Text = "0.0"
        txtcbaume.Text = "0.0"
        txtcremark.Text = ""
    End Sub
    Private Sub clear2()
        txtsdate.Text = Now.Date
        txtsseje.Text = ""
        txtop.Text = ""
        txtop1.Text = ""
        txtop2.Text = ""
        txtbatch1.Text = ""
        txtbatch2.Text = ""
        txtbatch3.Text = ""
        txtstime.Text = "00:00"
        txtftime.Text = "00:00"
        txtdragtemp.Text = "0.0"
        txtdbaume.Text = "0.0"
        txtdragnumber.Text = ""
        txtdspr.Text = ""
        txtdhub.Text = "0.0"
        txtdplaterim.Text = "0.0"
        txtdremark.Text = ""
        txtir.Text = ""
        txtdtank.Text = "0.0"
        txtdatom.Text = "0.0"
        txtdtrigger.Text = "0.0"
        txtbaume1.Text = "0.0"
        txtbaume2.Text = "0.0"
        txtbaume3.Text = "0.0"
    End Sub

    Protected Sub btnclear1_Click(sender As Object, e As EventArgs) Handles btnclear1.Click
        clear2()
    End Sub
    Public Function f1()
        Dim done As Boolean
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand

        Dim stime As DateTime = CDate(txtsdate.Text + " " & txtstime.Text)
        Dim ftime As DateTime = CDate(txtsdate.Text + " " & txtftime.Text)

        Try
            con.ConnectionString = "Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "INSERT INTO mm_spraystation_header values('" & Format(CDate(txtsdate.Text), "MM/dd/yyyy") & "','" & ddshift.SelectedItem.Value & "','" & txtsseje.Text & "','" & txtop.Text & "','" & txtwo.Text & "',
                                '" & txtop1.Text & "','" & txtop2.Text & "', '" & Format(CDate(stime), "MM/dd/yyyy HH:mm") & "', '" & Format(CDate(ftime), "MM/dd/yyyy HH:mm") & "',
                                   '" & txtbatch1.Text & "', '" & Convert.ToDecimal(txtbaume1.Text) & "','" & txtbatch2.Text & "','" & Convert.ToDecimal(txtbaume2.Text) & "','" & txtbatch3.Text & "',
                                '" & Convert.ToDecimal(txtbaume3.Text) & "')"
            If cmd.ExecuteNonQuery() = 1 Then done = True

        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally
            con.Close()
        End Try
        Return done
    End Function
    Public Function f2()
        Dim done As Boolean
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Try
            con.ConnectionString = "Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "INSERT INTO mm_spraystation_cope (date , shift,mould_origin,heat_number,mpo_number,spray_type,cope_number,cope_temp,ctc_operator,spr_operator,station,
                                                                       holding_oven,status,reason,baume,hub,plate,rim,tank_pressure,atom_pressure,trigger_pressure,
                                                                       cope_cleaner_machine,stop_pipe_make,stopper_head_make,cardboard_tube_make,
                                                                         ctc,dome_disc,remarks)
                                                                   values('" & Format(CDate(txtsdate.Text), "MM/dd/yyyy") & "','" & ddshift.SelectedItem.Value & "'
                                                                     ,'" & rblmouldorigin.SelectedItem.Value & "','" & Convert.ToInt64(txtheat.Text) & "',
                                                                   '" & ddmponumber.SelectedItem.Value & "','" & rblspray.SelectedItem.Value & "',
                                                                     '" & Convert.ToInt64(txtcopenumber.Text) & "','" & Convert.ToDecimal(txtcopetemp.Text) & "',
                                                                        '" & txtcctc.Text & "','" & txtcspr.Text & "','" & rblstation.SelectedItem.Value & "','" & ddholdingoven.SelectedItem.Value & "',
                                                                        '" & ddstatus.SelectedItem.Value & "','" & ddreason.SelectedItem.Value & "','" & Convert.ToDecimal(txtcbaume.Text) & "',
                                                                        '" & Convert.ToDecimal(txtchub.Text) & "','" & Convert.ToDecimal(txtcplate.Text) & "','" & Convert.ToDecimal(txtcrim.Text) & "',
                                                                        '" & Convert.ToDecimal(txtctank.Text) & "','" & Convert.ToDecimal(txtcatom.Text) & "','" & Convert.ToDecimal(txtctrigger.Text) & "',
                                                                        '" & ddcopecleanermachine.SelectedItem.Value & "','" & txtcstoppipemake.Text & "','" & txtcstopperheadmake.Text & "',
                                                                        '" & txtccardboardtubemake.Text & "','" & ddctc.SelectedItem.Value & "','" & dddomedisc.SelectedItem.Value & "',
                                                                        '" & txtcremark.Text & "'
                                                                        )"
            If cmd.ExecuteNonQuery() = 1 Then done = True

        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally
            con.Close()
        End Try
        Return done
    End Function
    Public Function f3()
        Dim done As Boolean
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Try
            con.ConnectionString = "Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "INSERT INTO mm_spraystation_drag values('" & Format(CDate(txtsdate.Text), "MM/dd/yyyy") & "','" & ddshift.SelectedItem.Value & "','" & rblmouldorigin.SelectedItem.Value & "',
                                                                        '" & Convert.ToInt64(txtheat.Text) & "','" & ddmponumber.SelectedItem.Value & "','" & rblspray.SelectedItem.Value & "',
                                                                        '" & Convert.ToInt64(txtdragnumber.Text) & "','" & Convert.ToDecimal(txtdragtemp.Text) & "',
                                                                        '" & txtdt.Text & "','" & txtdspr.Text & "','" & txtir.Text & "','" & rbldstation.SelectedItem.Value & "','" & dddholdingoven.SelectedItem.Value & "',
                                                                        '" & dddstatus.SelectedItem.Value & "','" & dddreason.SelectedItem.Value & "','" & Convert.ToDecimal(txtdbaume.Text) & "',
                                                                        '" & Convert.ToDecimal(txtdhub.Text) & "','" & Convert.ToDecimal(txtdplaterim.Text) & "',
                                                                        '" & Convert.ToDecimal(txtdtank.Text) & "','" & Convert.ToDecimal(txtdatom.Text) & "','" & Convert.ToDecimal(txtdtrigger.Text) & "',
                                                                        '" & dddragcleanermachine.SelectedItem.Value & "','" & txtdremark.Text & "')"
            If cmd.ExecuteNonQuery() = 1 Then done = True

        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally
            con.Close()
        End Try
        Return done
    End Function
    Public Function f4()
        Dim done As Boolean
        'Dim con As New SqlConnection
        'Dim cmd As New SqlCommand
        Dim sdate As Date = CDate(txtsdate.Text)
        Dim shift As String = ddshift.SelectedItem.Value
        Dim sseje As String = txtsseje.Text
        Dim op As String = txtop.Text
        Dim wo As String = txtwo.Text
        Dim op1 As String = txtop1.Text
        Dim op2 As String = txtop2.Text
        Dim stime As DateTime = Convert.ToDateTime(txtstime.Text)
        Dim ftime As DateTime = Convert.ToDateTime(txtftime.Text)
        Dim bone As String = txtbatch1.Text
        Dim btwo As String = txtbatch2.Text
        Dim bthree As String = txtbatch3.Text
        Dim baone As String = Convert.ToDecimal(txtbaume1.Text)
        Dim batwo As String = Convert.ToDecimal(txtbaume2.Text)
        Dim bathree As String = Convert.ToDecimal(txtbaume3.Text)

        Try
            Dim con As New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890")
            con.Open()
            Dim cmd As New SqlCommand("Update mm_spraystation_header set date=@sdate , shift=@shift , sse_or_je=@sseje ,operator=@op ,
                                         melting_workorder=@wo , spr_operator_one =@op1 , spr_operator_two = @op2 ,
                                         starttime=@stime, finishtime=@ftime, batch_one=@bone , baume_one=@baone,
                                          batch_two=@btwo , baume_two=@batwo,batch_three=@bthree , baume_three=@bathree
                                           where  date=@sdate and shift=@shift ", con)

            cmd.Parameters.AddWithValue("@sdate", sdate)
            cmd.Parameters.AddWithValue("@shift", shift)
            cmd.Parameters.AddWithValue("@sseje", sseje)
            cmd.Parameters.AddWithValue("@op", op)
            cmd.Parameters.AddWithValue("@wo", wo)
            cmd.Parameters.AddWithValue("@op1", op1)
            cmd.Parameters.AddWithValue("@op2", op2)
            cmd.Parameters.AddWithValue("@stime", stime)
            cmd.Parameters.AddWithValue("@ftime", ftime)
            cmd.Parameters.AddWithValue("@bone", bone)
            cmd.Parameters.AddWithValue("@baone", baone)
            cmd.Parameters.AddWithValue("@btwo", btwo)
            cmd.Parameters.AddWithValue("@batwo", batwo)
            cmd.Parameters.AddWithValue("@bthree", bthree)
            cmd.Parameters.AddWithValue("@bathree", bathree)

            If cmd.ExecuteNonQuery() = 1 Then done = True
            con.Close()
        Catch exp As Exception
            Throw New Exception(exp.Message)
        Finally

        End Try
        Return done
    End Function
    Public Function check()
        Dim sdate As Date = CDate(txtsdate.Text)
        Dim shift As String = ddshift.SelectedItem.Value
        Dim con As New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890")
        con.Open()
        Dim cmd As New SqlCommand("SELECT COUNT(*) FROM mm_spraystation_header where date=@sdate and shift=@shift ", con)
        cmd.Parameters.AddWithValue("@sdate", sdate)
        cmd.Parameters.AddWithValue("@shift", shift)

        Dim i As Integer = Convert.ToInt32(cmd.ExecuteScalar())
        cmd = Nothing
        con.Close()
        'lblmessage.Text = i
        Return i
    End Function

    Protected Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        Dim done, donne As Boolean

        If txtcopenumber.Text <> String.Empty Then
            Dim n As Integer = check()
            If n > 0 Then
                done = f4()
            Else
                done = f1()
            End If

            donne = f2()

            If done And donne Then
                viewcopedata()
                lblmessage.Text = " Updation Successful !"
            End If
        Else
            lblmessage.Text = "PLEASE ENTER COPE NUMBER!"
        End If

    End Sub

    Protected Sub btnsave1_Click(sender As Object, e As EventArgs) Handles btnsave1.Click
        Dim done, donne As Boolean
        If txtdragnumber.Text <> String.Empty Then
            Dim n As Integer = check()
            If n > 0 Then
                done = f4()
            Else
                done = f1()
            End If

            donne = f3()
            If done And donne Then
                viewdragdata()
                lblmessage.Text = " Updation Successful !"
            End If
        Else
            lblmessage.Text = "PLEASE ENTER DRAG NUMBER!"
        End If
    End Sub

    Protected Sub rblspray_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblspray.SelectedIndexChanged
        If rblspray.SelectedItem.Value = "cope" Then
            panelcope.Visible = True
            paneldrag.Visible = False
            setcope()
            viewcopedata()
            If rblstation.SelectedItem.Value = "station1" And rblspray.SelectedItem.Value = "cope" Then
                txtcspr.Text = txtop1.Text
            ElseIf rblstation.SelectedItem.Value = "station2" And rblspray.SelectedItem.Value = "cope" Then

                txtcspr.Text = txtop2.Text
            End If

        Else
            panelcope.Visible = False
            paneldrag.Visible = True
            setdrag()
            viewdragdata()
            If rbldstation.SelectedItem.Value = "station1" And rblspray.SelectedItem.Value = "drag" Then
                txtdspr.Text = txtop1.Text
            ElseIf rbldstation.SelectedItem.Value = "station2" And rblspray.SelectedItem.Value = "drag" Then

                txtdspr.Text = txtop2.Text
            End If
        End If
    End Sub

    Protected Sub rblmouldorigin_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblmouldorigin.SelectedIndexChanged
        If rblmouldorigin.SelectedItem.Value = "heat" Then
            lheat.Visible = True
            txtheat.Visible = True

            lmpo.Visible = False
            ddmponumber.Visible = False
            ddmponumber.SelectedItem.Value = "null"
        Else
            lheat.Visible = False
            txtheat.Text = "0"
            txtheat.Visible = False
            lmpo.Visible = True
            ddmponumber.Visible = True
        End If
    End Sub
    Private Sub getdatacope()
        Dim temp As Boolean = False
        Dim con As SqlConnection = New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890")
        con.Open()
        Dim cmd As SqlCommand = New SqlCommand("select baume ,hub,plate,rim,tank_pressure,atom_pressure,trigger_pressure  from mm_spraystation_cope where heat_number =(
                                                                                select top 1 heat_number from mm_spraystation_cope order by heat_number desc)", con)
        Dim dr As SqlDataReader = cmd.ExecuteReader()

        While dr.Read()
            txtcbaume.Text = dr.GetDecimal(0)
            txtchub.Text = dr.GetDecimal(1)
            txtcplate.Text = dr.GetDecimal(2)
            txtcrim.Text = dr.GetDecimal(3)
            txtctank.Text = dr.GetDecimal(4)
            txtcatom.Text = dr.GetDecimal(5)
            txtctrigger.Text = dr.GetDecimal(6)
            temp = True
        End While

        If temp = False Then
            lblmessage.Text = "please add a record"
        End If
        con.Close()
    End Sub
    Private Sub getdatadrag()
        Dim temp As Boolean = False
        Dim con As SqlConnection = New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890")
        con.Open()
        Dim cmd As SqlCommand = New SqlCommand("select baume,hub,plate_and_rim,tank_pressure,atom_pressure,trigger_pressure  from mm_spraystation_drag where heat_number =(
                                                                                select top 1 heat_number from mm_spraystation_drag order by heat_number desc)", con)
        Dim dr As SqlDataReader = cmd.ExecuteReader()

        While dr.Read()
            txtdbaume.Text = dr.GetDecimal(0)
            txtdhub.Text = dr.GetDecimal(1)
            txtdplaterim.Text = dr.GetDecimal(2)
            txtdtank.Text = dr.GetDecimal(3)
            txtdatom.Text = dr.GetDecimal(4)
            txtdtrigger.Text = dr.GetDecimal(5)
            temp = True
        End While

        If temp = False Then
            lblmessage.Text = "please add a record"
        End If
        con.Close()
    End Sub
    Public Sub getcopeheat()
        Dim temp As Boolean = False
        Dim con As SqlConnection = New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890")
        con.Open()
        Dim cmd As SqlCommand = New SqlCommand("select top 1 heat_number from mm_spraystation_cope order by heat_number desc ", con)

        txtheat.Text = cmd.ExecuteScalar()

        temp = True


        If temp = False Then
            lblmessage.Text = "please add a record"
        End If
        con.Close()
    End Sub
    Public Sub getdragheat()
        Dim temp As Boolean = False
        Dim con As SqlConnection = New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890")
        con.Open()
        Dim cmd As SqlCommand = New SqlCommand("select top 1 heat_number from mm_spraystation_drag order by heat_number desc ", con)

        txtheat.Text = cmd.ExecuteScalar()

        temp = True


        If temp = False Then
            lblmessage.Text = "please add a record"
        End If
        con.Close()
    End Sub
    Public Sub viewcopedata()
        Dim sdate As Date = CDate(txtsdate.Text)
        Dim shift As String = ddshift.SelectedItem.Value
        Dim con As SqlConnection = New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890")
        con.Open()
        Dim cmd As SqlCommand = New SqlCommand("SELECT CONVERT(VARCHAR,LEFT(date,11)),[shift],[mould_origin],[heat_number],[mpo_number] ,[spray_type] ,[cope_number]
                                                ,[cope_temp],[ctc_operator],[spr_operator],[station],[holding_oven],[status],[reason],[baume],[hub],[plate] ,[rim]
                                                 ,[tank_pressure],[atom_pressure],[trigger_pressure] ,[cope_cleaner_machine] ,[stop_pipe_make],[stopper_head_make]
                                                 ,[cardboard_tube_make] ,[ctc] ,[dome_disc] ,[remarks] FROM [wap].[dbo].[mm_spraystation_cope] where date=@sdate and shift=@shift ", con)
        cmd.Parameters.AddWithValue("@sdate", sdate)
        cmd.Parameters.AddWithValue("@shift", shift)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        data1.DataSource = dr
        data1.DataBind()
        con.Close()
    End Sub
    Public Sub viewdragdata()
        Dim sdate As Date = CDate(txtsdate.Text)
        Dim shift As String = ddshift.SelectedItem.Value
        Dim con As SqlConnection = New SqlConnection("Data Source=cris-sql.public.a226b58b96ec.database.windows.net,3342;Initial Catalog=wap;Persist Security Info=True;User ID=crissqlserver;Password=cris-bela@1234567890")
        con.Open()
        Dim cmd As SqlCommand = New SqlCommand("SELECT CONVERT(VARCHAR,LEFT(date,11)),[shift],[mould_origin],[heat_number] ,[mpo_number] ,[spray_type]
                                                ,[drag_number],[drag_temp] ,[dt_operator] ,[spr_operator],[ingate_reamer] ,[station],[holding_oven]
                                                 ,[status] ,[reason],[baume],[hub],[plate_and_rim] ,[tank_pressure]
                                                  ,[atom_pressure],[trigger_pressure] ,[drag_cleaner_machine],[remarks]
                                                 FROM [wap].[dbo].[mm_spraystation_drag] where date=@sdate and shift=@shift ", con)
        cmd.Parameters.AddWithValue("@sdate", sdate)
        cmd.Parameters.AddWithValue("@shift", shift)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        data2.DataSource = dr
        data2.DataBind()
        con.Close()
    End Sub

    Protected Sub txtsdate_TextChanged(sender As Object, e As EventArgs) Handles txtsdate.TextChanged
        If rblspray.SelectedItem.Value = "cope" Then
            panelcope.Visible = True
            paneldrag.Visible = False
            'setcope()
            viewcopedata()

        Else
            panelcope.Visible = False
            paneldrag.Visible = True
            'setdrag()
            viewdragdata()
        End If
    End Sub

    Protected Sub ddshift_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddshift.SelectedIndexChanged
        If rblspray.SelectedItem.Value = "cope" Then
            panelcope.Visible = True
            paneldrag.Visible = False
            'setcope()
            viewcopedata()
            If rblstation.SelectedItem.Value = "station1" And rblspray.SelectedItem.Value = "cope" Then
                txtcspr.Text = txtop1.Text
            ElseIf rblstation.SelectedItem.Value = "station2" And rblspray.SelectedItem.Value = "cope" Then

                txtcspr.Text = txtop2.Text
            End If
        Else
            panelcope.Visible = False
            paneldrag.Visible = True
            'setdrag()
            viewdragdata()
            If rbldstation.SelectedItem.Value = "station1" And rblspray.SelectedItem.Value = "drag" Then
                txtdspr.Text = txtop1.Text
            ElseIf rbldstation.SelectedItem.Value = "station2" And rblspray.SelectedItem.Value = "drag" Then

                txtdspr.Text = txtop2.Text
            End If
        End If
    End Sub

    Protected Sub rblstation_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblstation.SelectedIndexChanged
        If rblstation.SelectedItem.Value = "station1" Then
            txtcspr.Text = txtop1.Text
        ElseIf rblstation.SelectedItem.Value = "station2" Then

            txtcspr.Text = txtop2.Text
        End If
    End Sub

    Protected Sub rbldstation_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rbldstation.SelectedIndexChanged
        If rbldstation.SelectedItem.Value = "station1" Then
            txtdspr.Text = txtop1.Text
        ElseIf rbldstation.SelectedItem.Value = "station2" Then

            txtdspr.Text = txtop2.Text
        End If
    End Sub

    Protected Sub txtop1_TextChanged(sender As Object, e As EventArgs) Handles txtop1.TextChanged
        If rblstation.SelectedItem.Value = "station1" And rblspray.SelectedItem.Value = "cope" Then
            txtcspr.Text = txtop1.Text
        ElseIf rblstation.SelectedItem.Value = "station2" And rblspray.SelectedItem.Value = "cope" Then

            txtcspr.Text = txtop2.Text
        End If
        If rbldstation.SelectedItem.Value = "station1" And rblspray.SelectedItem.Value = "drag" Then
            txtdspr.Text = txtop1.Text
        ElseIf rbldstation.SelectedItem.Value = "station2" And rblspray.SelectedItem.Value = "drag" Then

            txtdspr.Text = txtop2.Text
        End If
    End Sub

    Protected Sub txtop2_TextChanged(sender As Object, e As EventArgs) Handles txtop2.TextChanged
        If rblstation.SelectedItem.Value = "station1" And rblspray.SelectedItem.Value = "cope" Then
            txtcspr.Text = txtop1.Text
        ElseIf rblstation.SelectedItem.Value = "station2" And rblspray.SelectedItem.Value = "cope" Then

            txtcspr.Text = txtop2.Text
        End If
        If rbldstation.SelectedItem.Value = "station1" And rblspray.SelectedItem.Value = "drag" Then
            txtdspr.Text = txtop1.Text
        ElseIf rbldstation.SelectedItem.Value = "station2" And rblspray.SelectedItem.Value = "drag" Then

            txtdspr.Text = txtop2.Text
        End If
    End Sub
End Class