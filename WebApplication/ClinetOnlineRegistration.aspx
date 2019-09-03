<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ClinetOnlineRegistration.aspx.vb" Inherits="WebApplication.ClinetOnlineRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Star Admin Premium Bootstrap Admin Dashboard Template</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="Temp/assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="Temp/assets/vendors/iconfonts/ionicons/css/ionicons.css"/>
<%--    <link rel="stylesheet" href="Temp/assets/vendors/iconfonts/typicons/src/font/typicons.css"/>--%>
    <link rel="stylesheet" href="Temp/assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="Temp/assets/vendors/css/vendor.bundle.base.css"/>
    <link rel="stylesheet" href="Temp/assets/vendors/css/vendor.bundle.addons.css"/>
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="Temp/assets/css/shared/style.css"/>
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="Temp/assets/css/demo_1/style.css"/>
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="Temp/assets/images/favicon.png" />
  </head>
  <body>
    <form id="frmRegistration" runat="server">
         <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth register-bg-1 theme-one">

             <div class="row w-100">
              <div class="col-lg-7 mx-auto">
              <h2 class="text-center mb-7">Customer Registeration</h2>
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Registration Details Form</h4>
                      <div class="form-group">
                        <label for="exampleInputName1">Nombre</label>
                         <asp:TextBox ID="txtName" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqLastName" runat="server" ControlToValidate="txtName" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:RequiredFieldValidator>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Nombre Factura</label>
                         <asp:TextBox ID="txtNombreFactura" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Nif</label>
                         <asp:TextBox ID="txtNif" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Direccion</label>
                         <asp:TextBox ID="txtDireccion" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">poblacion</label>
                         <asp:TextBox ID="txtpoblacion" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                      </div>                      
                      
                      <div class="form-group">
                        <label for="exampleInputName1">Direccion</label>
                         <asp:TextBox ID="TextBox2" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                      </div>   
                      
                      <div class="form-group">
                      <label for="exampleFormControlSelect1">Id provincia</label>
                          <asp:DropDownList ID="ddlprovincia" runat="server" class="form-control form-control-lg">
                              <asp:ListItem Text="1" Value="1"></asp:ListItem>
                              <asp:ListItem Text="2" Value="2"></asp:ListItem>
                          </asp:DropDownList>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Codigo Postal</label>
                         <asp:TextBox ID="txtCodigoPostal" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Pais</label>
                          <asp:DropDownList ID="ddlPais" runat="server" class="form-control form-control-lg">
                          </asp:DropDownList>                  
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Telefono</label>
                         <asp:TextBox ID="txtTelefono" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:RequiredFieldValidator>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Telefono2</label>
                         <asp:TextBox ID="txtTelefono2" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Movil</label>
                         <asp:TextBox ID="txtMovil" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Fax</label>
                         <asp:TextBox ID="txtfax" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3">Email</label>
                        <asp:TextBox ID="txtEmail" type="email" runat="server" TabIndex="1" placeholder="Email" MaxLength="50" CssClass="form-control" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:RequiredFieldValidator>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Web</label>
                         <asp:TextBox ID="txtWeb" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Password</label>
                        <asp:TextBox ID="txtPassword"  type="password" placeholder="Password" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:RequiredFieldValidator>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Confirm Password</label>
                        <asp:TextBox ID="txtConfirmPassword"  type="password" placeholder="Password" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:RequiredFieldValidator>
                         <asp:CompareValidator runat="server" ID="cmpVal" ControlToCompare="txtConfirmPassword" ValueToCompare="txtPassword" ErrorMessage="Please enter same password"  Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:CompareValidator>
                      </div>
<%--                      <button type="submit" class="btn btn-success mr-2">Submit</button>--%>
                      <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="submit" ValidationGroup="vgSave" TabIndex="7" CssClass="btn btn-success" />

<%--                      <button class="btn btn-light">Cancel</button>--%>
                  </div>
                    <div class="text-block text-center my-3">
                    <span class="text-small font-weight-semibold">Are you already a member ?</span>
                    <a href="login.aspx" class="text-black text-small">Click here to login</a>
                  </div>
                </div>  
              </div>
             </div>  
       </div>

        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
     </form>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script type="text/javascript" src="Temp/assets/vendors/js/vendor.bundle.base.js"></script>
    <script type="text/javascript" src="Temp/assets/vendors/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script type="text/javascript" src="Temp/assets/js/shared/off-canvas.js"></script>
    <script type="text/javascript" src="Temp/assets/js/shared/misc.js"></script>
    <!-- endinject -->
  </body>
</html>