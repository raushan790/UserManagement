Public Class DashBoard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindGrid()
        End If

    End Sub

    Public Sub BindGrid()
            Dim dt As DataTable = New DataTable()
            Dim obj As CustomerBAL = New CustomerBAL()
            dt = obj.GetCustomer(0)
            obj = Nothing

            If dt.Rows.Count > 0 Then
                divGrid.Visible = True
                divNoRecords.Visible = False
                grdCustomer.DataSource = dt
                grdCustomer.DataBind()
            Else
                divGrid.Visible = False
                divNoRecords.Visible = True
            End If
        End Sub

    Public Sub ClearControls()
        hdnCustomerID.Value = "0"
        txtFirstName.Text = String.Empty
        txtLastName.Text = String.Empty
        txtBirthDate.Text = String.Empty
        txtEmail.Text = String.Empty
        txtAddress.Text = String.Empty
    End Sub

    Protected Sub grdCustomer_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs)
            If e.CommandName = "EDT" Then
                Dim rowIndex As Integer = Convert.ToInt32(e.CommandArgument)
                grdCustomer.SelectedIndex = rowIndex
                hdnCustomerID.Value = (CType(grdCustomer.Rows(rowIndex).FindControl("hdnCustomerID"), HiddenField)).Value
                txtFirstName.Text = (CType(grdCustomer.Rows(rowIndex).FindControl("lnkFirstName"), LinkButton)).Text
                txtLastName.Text = (CType(grdCustomer.Rows(rowIndex).FindControl("hypLastName"), HyperLink)).Text
                txtBirthDate.Text = (CType(grdCustomer.Rows(rowIndex).FindControl("lblBirthDate"), Label)).Text
                txtEmail.Text = (CType(grdCustomer.Rows(rowIndex).FindControl("lblEmail"), Label)).Text
                txtAddress.Text = (CType(grdCustomer.Rows(rowIndex).FindControl("lblAddress"), Label)).Text
            ElseIf e.CommandName = "DLT" Then
                Dim rowIndex As Integer = Convert.ToInt32(e.CommandArgument)
                hdnCustomerID.Value = (CType(grdCustomer.Rows(rowIndex).FindControl("hdnCustomerID"), HiddenField)).Value
                Dim obj As CustomerBAL = New CustomerBAL()
                Dim retVal As Integer = obj.DeleteCustomer(Convert.ToInt64(hdnCustomerID.Value))
                obj = Nothing
                BindGrid()
                ClearControls()
                Page.ClientScript.RegisterStartupScript(Me.[GetType](), "Deleted", "<script>alert('Deleted successfully.');</script>")
            End If
        End Sub

    Protected Sub grdCustomer_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        hdnCustomerID.Value = (CType(grdCustomer.SelectedRow.FindControl("hdnCustomerID"), HiddenField)).Value
        txtFirstName.Text = (CType(grdCustomer.SelectedRow.FindControl("lnkFirstName"), LinkButton)).Text
        txtLastName.Text = (CType(grdCustomer.SelectedRow.FindControl("hypLastName"), HyperLink)).Text
        txtBirthDate.Text = (CType(grdCustomer.SelectedRow.FindControl("lblBirthDate"), Label)).Text
        txtEmail.Text = (CType(grdCustomer.SelectedRow.FindControl("lblEmail"), Label)).Text
        txtAddress.Text = (CType(grdCustomer.SelectedRow.FindControl("lblAddress"), Label)).Text
    End Sub

    Protected Sub grdCustomer_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim name As String = (CType(e.Row.FindControl("lnkFirstName"), LinkButton)).Text & " " + (CType(e.Row.FindControl("hypLastName"), HyperLink)).Text
            ''(CType(e.Row.FindControl("lnkDelete"), LinkButton)).Attributes.Add("onclick", String.Format("javascript:return confirm('Are you sure to delete {0} ?');", name))
        End If
        End Sub

    Private Function ConvertToDateTime(ByVal v As String) As DateTime
        Dim value As DateTime = Convert.ToDateTime(v)
        Return value
        Throw New NotImplementedException()
    End Function

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs)
            If Page.IsValid Then
                Dim obj As CustomerBAL = New CustomerBAL()
                obj.CustomerID = Convert.ToInt64(hdnCustomerID.Value)
                obj.FirstName = txtFirstName.Text.Trim()
                obj.LastName = txtLastName.Text.Trim()
                obj.BirthDate = DateTime.ParseExact(Me.txtBirthDate.Text, "dd/MM/yyyy", Nothing)
                obj.Email = txtEmail.Text.Trim()
                obj.Address = txtAddress.Text.Trim()
                Dim retVal As Integer = obj.InsertUpdateCustomer(obj)
                obj = Nothing
                BindGrid()
                ClearControls()
                Page.ClientScript.RegisterStartupScript(Me.[GetType](), "Saved", "<script>alert('Saved successfully.');</script>")
            End If
        End Sub

End Class