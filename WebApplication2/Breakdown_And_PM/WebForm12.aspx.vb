Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class WebForm12
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Public Shared Function GetEmployeeName(ByVal empName As String) As List(Of String)
        Dim empResult As List(Of String) = New List(Of String)()

        Using con As SqlConnection = New SqlConnection("Data Source=rwpbeladev.southindia.cloudapp.azure.com,1433;Initial Catalog=wapdev; User ID=cristrg;Password=trg123")

            Using cmd As SqlCommand = New SqlCommand()
                cmd.CommandText = "select Emp_Name from UserContact_Details'"
                cmd.Connection = con
                con.Open()
                cmd.Parameters.AddWithValue("@SearchEmpName", empName)
                Dim dr As SqlDataReader = cmd.ExecuteReader()

                While dr.Read()
                    empResult.Add(dr("Emp_Name").ToString())
                End While

                con.Close()
                Return empResult
            End Using
        End Using
    End Function
End Class