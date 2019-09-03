Public Class CustomerBAL
    Public Property CustomerID As Int64
    Public Property FirstName As String
    Public Property LastName As String
    Public Property BirthDate As DateTime
    Public Property Email As String
    Public Property Address As String

    Public Function GetCustomer(ByVal customerID As Int64) As DataTable
        Dim obj As CustomerDAL = New CustomerDAL()
        Return obj.GetCustomer(customerID)
    End Function

    Public Function InsertUpdateCustomer(ByVal obj As CustomerBAL) As Integer
        Dim objDAL As CustomerDAL = New CustomerDAL()
        Return objDAL.InsertUpdateCustomer(obj)
    End Function

    Public Function DeleteCustomer(ByVal customerID As Int64) As Integer
        Dim objDAL As CustomerDAL = New CustomerDAL()
        Return objDAL.DeleteCustomer(customerID)
    End Function
End Class
