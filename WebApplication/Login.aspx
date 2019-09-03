<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="WebApplication.Login" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Star Admin Premium Bootstrap Admin Dashboard Template</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../Temp/assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../Temp/assets/vendors/iconfonts/ionicons/css/ionicons.css">
    <link rel="stylesheet" href="../Temp/assets/vendors/iconfonts/typicons/src/font/typicons.css">
    <link rel="stylesheet" href="../Temp/assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="../Temp/assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="../Temp/assets/vendors/css/vendor.bundle.addons.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../Temp/assets/css/shared/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../Temp/assets/images/favicon.png" />
  </head>
  <body>
     <form id="frmlogin" method="post" runat="server">
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
          <div class="row w-100">
            <div class="col-lg-4 mx-auto">
              <div class="auto-form-wrapper">
                <form action="#">
                  <div class="form-group">
                    <label class="label">Username</label>
                    <div class="input-group">

                      <asp:textbox id="txtUserName" class ="form-control" placeholder="Username" runat="server"></asp:textbox>
                    
                     <%-- <input type="text" class="form-control" placeholder="Username">--%>
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                      <asp:requiredfieldvalidator id="RequiredFieldValidator2" forecolor="Red" errormessage="Please enter user name" controltovalidate="txtUserName" runat="server">
            </asp:requiredfieldvalidator>
                  </div>
                  <div class="form-group">
                    <label class="label">Password</label>
                    <div class="input-group">
                    <%--  <input type="password" class="form-control" placeholder="*********">--%>
                        <asp:textbox id="txtPassword" runat="server" class="form-control" placeholder="*********" textmode="Password"/>
                       
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator1" forecolor="Red" errormessage="Please enter password" controltovalidate="txtPassword" runat="server">
                     </asp:requiredfieldvalidator>
                  <div class="form-group">
                       <asp:button id="Button1" text="Login" OnClick="cmdSubmit_Click" class="btn btn-primary submit-btn btn-block" runat="server"></asp:button>
                  </div>
                  <div class="form-group d-flex justify-content-between">
                    <div class="form-check form-check-flat mt-0">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" checked> Keep me signed in </label>
                    </div>
                    <a href="#" class="text-small forgot-password text-black">Forgot Password</a>
                  </div>                 
                  <div class="text-block text-center my-3">
                    <span class="text-small font-weight-semibold">Not a member ?</span>
                    <a href="ClinetOnlineRegistration.aspx" class="text-black text-small">Create new account</a>
                  </div>
                </form>
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
    <script src="../Temp/assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../Temp/assets/vendors/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="../Temp/assets/js/shared/off-canvas.js"></script>
    <script src="../Temp/assets/js/shared/misc.js"></script>
    <!-- endinject -->
  </body>
</html>
