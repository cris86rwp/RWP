

Imports System.Data.SqlClient
Public Class Used_Item_Detail_Form
    Inherits System.Web.UI.Page

    Protected WithEvents Submit As Global.System.Web.UI.WebControls.Button
    Protected WithEvents DD1 As Global.System.Web.UI.WebControls.DropDownList
    Protected WithEvents Pl_No As Global.System.Web.UI.WebControls.TextBox
    Protected WithEvents UDate As Global.System.Web.UI.WebControls.TextBox
    Protected WithEvents B_Qty As Global.System.Web.UI.WebControls.TextBox
    Protected WithEvents Location As Global.System.Web.UI.WebControls.TextBox
    Protected WithEvents D_Qty As Global.System.Web.UI.WebControls.TextBox
    Protected WithEvents D_Date As Global.System.Web.UI.WebControls.TextBox
    Protected WithEvents PO_Qty As Global.System.Web.UI.WebControls.TextBox
    Protected WithEvents Firm_Name As Global.System.Web.UI.WebControls.TextBox
    Protected WithEvents D_L_N0 As Global.System.Web.UI.WebControls.TextBox
    Protected WithEvents D_Remarks As Global.System.Web.UI.WebControls.TextBox


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub






    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Submit.Click
        If Pl_No.Text = String.Empty Then
            MsgBox("Enter Pl_No")
            Exit Sub
        End If

        If D_Date.Text = String.Empty Then
            MsgBox("Enter Disposal Date")
            Exit Sub
        End If


        Dim con As SqlConnection = New SqlConnection()
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Dell\source\repos\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True"
        Dim cmd As New SqlCommand("INSERT INTO Used_Item_Details(Item_Desc,Pl_No,Date,Balance_Qty,Location,Disposal_Qty,Disposal_Date,PO_Qty,Firm_Name,Disposal_L_No,Disposal_Remarks) VALUES(@Item_Desc,@Pl_No,@Date,@Balance_Qty,@Location,@Disposal_Qty,@Disposal_Date,@PO_Qty,@Firm_Name,@Disposal_L_No,@Disposal_Remarks)")
        cmd.Connection = con
        cmd.Parameters.AddWithValue("@Item_Desc", DD1.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@Pl_No", Val(Pl_No.Text))
        cmd.Parameters.AddWithValue("@Date", UDate.Text)
        cmd.Parameters.AddWithValue("@Balance_Qty", Val(B_Qty.Text))
        cmd.Parameters.AddWithValue("@Location", Location.Text)
        cmd.Parameters.AddWithValue("@Disposal_Qty", Val(D_Qty.Text))
        cmd.Parameters.AddWithValue("@Disposal_Date", D_Date.Text)
        cmd.Parameters.AddWithValue("@PO_Qty", Val(PO_Qty.Text))
        cmd.Parameters.AddWithValue("@Firm_Name", Firm_Name.Text)
        cmd.Parameters.AddWithValue("@Disposal_L_No", Val(D_L_No.Text))
        cmd.Parameters.AddWithValue("@Disposal_Remarks", D_Remarks.Text)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

        MsgBox("Submitted Successfully")
        Response.Redirect(Request.Url.AbsoluteUri)
    End Sub


End Class