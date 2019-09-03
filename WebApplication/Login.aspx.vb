Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmdSubmit_Click(sender As Object, e As EventArgs)

        Dim strcon As String = ConfigurationManager.ConnectionStrings("cnstr").ConnectionString

        ''"Data Source=DESKTOP-TFTTNSM;Initial Catalog=Crud;Integrated Security=True;"
        ''DESKTOP-TFTTNSM;Initial Catalog=Crud;
        Dim con As New SqlConnection(strcon)

        Dim com As New SqlCommand("CheckUser", con)

        com.CommandType = CommandType.StoredProcedure

        Dim p1 As New SqlParameter("UserName", txtUserName.Text)

        Dim p2 As New SqlParameter("Password", txtPassword.Text)

        com.Parameters.Add(p1)

        com.Parameters.Add(p2)

        con.Open()

        Dim rd As SqlDataReader = com.ExecuteReader()

        If rd.HasRows Then

            rd.Read()
            Response.Redirect("DashBoard.aspx")

        Else

            Dim message As String = "Sorry, something went wrong. Please try again!"
            Dim sb As New System.Text.StringBuilder()
            sb.Append("<script type = 'text/javascript'>")
            sb.Append("window.onload=function(){")
            sb.Append("alert('")
            sb.Append(message)
            sb.Append("')};")
            sb.Append("</script>")
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", sb.ToString())
            txtUserName.Text = ""
            txtPassword.Text = ""
        End If
    End Sub
End Class