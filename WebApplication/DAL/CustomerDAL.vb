Imports System.Data.SqlClient

Public Class CustomerDAL
    Private con As SqlConnection
    Private cmd As SqlCommand
    Private sprm As SqlParameter = New SqlParameter()
    Private adp As SqlDataAdapter
    Private dt As DataTable

    Public Sub New()
        con = New SqlConnection()
        cmd = New SqlCommand()
        Dim cnstr As String = ConfigurationManager.ConnectionStrings("cnstr").ConnectionString
        con.ConnectionString = cnstr
        cmd.Connection = con
    End Sub

    Public Function GetCustomer(ByVal customerID As Int64) As DataTable
        Try
            cmd.Parameters.AddWithValue("@CustomerID", customerID)
            cmd.CommandText = "GetCustomer"
            cmd.CommandType = CommandType.StoredProcedure
            con.Open()
            dt = New DataTable()
            adp = New SqlDataAdapter(cmd)
            adp.Fill(dt)
        Catch ex As Exception
            Throw ex
        Finally
            cmd.Parameters.Clear()
            cmd.Dispose()
            con.Close()
            con.Dispose()
            adp.Dispose()
        End Try

        Return dt
    End Function

    Public Function GetCustomerByName(ByVal name As String) As DataTable
        Try
            cmd.Parameters.AddWithValue("@Name", name)
            cmd.CommandText = "GetCustomerByName"
            cmd.CommandType = CommandType.StoredProcedure
            con.Open()
            dt = New DataTable()
            adp = New SqlDataAdapter(cmd)
            adp.Fill(dt)
        Catch ex As Exception
            Throw ex
        Finally
            cmd.Parameters.Clear()
            cmd.Dispose()
            con.Close()
            con.Dispose()
            adp.Dispose()
        End Try

        Return dt
    End Function

    Public Function InsertUpdateCustomer(ByVal obj As CustomerBAL) As Integer
        cmd.Parameters.AddWithValue("@CustomerID", obj.CustomerID)
        cmd.Parameters.AddWithValue("@FirstName", obj.FirstName)
        cmd.Parameters.AddWithValue("@LastName", obj.LastName)
        cmd.Parameters.AddWithValue("@BirthDate", obj.BirthDate)
        cmd.Parameters.AddWithValue("@Email", obj.Email)
        cmd.Parameters.AddWithValue("@Address", obj.Address)
        cmd.Parameters.AddWithValue("@sprm", 1)
        sprm.Direction = ParameterDirection.ReturnValue
        cmd.Parameters.Add(sprm)
        Dim i As Integer, j As Integer = 0

        Try
            cmd.CommandText = "InsertUpdateCustomer"
            cmd.CommandType = CommandType.StoredProcedure
            con.Open()
            i = cmd.ExecuteNonQuery()

            If i > 0 Then
                j = Integer.Parse(sprm.Value.ToString())
            End If

        Catch ex As Exception
            Throw ex
        Finally
            cmd.Parameters.Clear()
            con.Close()
            con.Dispose()
            cmd.Dispose()
        End Try

        Return j
    End Function

    Public Function DeleteCustomer(ByVal customerID As Int64) As Integer
        cmd.Parameters.AddWithValue("@CustomerID", customerID)
        Dim i As Integer = 0

        Try
            cmd.CommandText = "DeleteCustomer"
            cmd.CommandType = CommandType.StoredProcedure
            con.Open()
            i = cmd.ExecuteNonQuery()
        Catch ex As Exception
            Throw ex
        Finally
            cmd.Parameters.Clear()
            con.Close()
            con.Dispose()
            cmd.Dispose()
        End Try

        Return i
    End Function
End Class
