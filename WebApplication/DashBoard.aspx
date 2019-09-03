<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DashBoard.aspx.vb" Inherits="WebApplication.DashBoard" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>User Management</title>
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
    <!-- Layout styles -->
    <link rel="stylesheet" href="../Temp/assets/css/demo_1/style.css">
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="../Temp/assets/images/favicon.png" />
  </head>
  <body>
     <form id="frmDashBoard" runat="server">
     <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
          <a class="navbar-brand brand-logo" href="#">
         <h3>Admin</h3>
          <a class="navbar-brand brand-logo-mini" href="#">
            <img src="../Temp/assets/images/logo-mini.svg" alt="logo" /> </a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center">
          <ul class="navbar-nav">
          </ul>
          <form class="ml-auto search-form d-none d-md-block" action="#">
            <div class="form-group">
              <input type="search" class="form-control" placeholder="Search Here">
            </div>
          </form>
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
              
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="messageDropdown">
                <a class="dropdown-item py-3">
                  <p class="mb-0 font-weight-medium float-left">You have 7 unread mails </p>
                  <span class="badge badge-pill badge-primary float-right">View all</span>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="../Temp/assets/images/faces/face10.jpg" alt="image" class="img-sm profile-pic"> </div>
                  <div class="preview-item-content flex-grow py-2">
                    <p class="preview-subject ellipsis font-weight-medium text-dark">Marian Garner </p>
                    <p class="font-weight-light small-text"> The meeting is cancelled </p>
                  </div>
                </a>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="../Temp/assets/images/faces/face12.jpg" alt="image" class="img-sm profile-pic"> </div>
                  <div class="preview-item-content flex-grow py-2">
                    <p class="preview-subject ellipsis font-weight-medium text-dark">David Grey </p>
                    <p class="font-weight-light small-text"> The meeting is cancelled </p>
                  </div>
                </a>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="../Temp/assets/images/faces/face1.jpg" alt="image" class="img-sm profile-pic"> </div>
                  <div class="preview-item-content flex-grow py-2">
                    <p class="preview-subject ellipsis font-weight-medium text-dark">Travis Jenkins </p>
                    <p class="font-weight-light small-text"> The meeting is cancelled </p>
                  </div>
                </a>
              </div>
            </li>
            <li class="nav-item dropdown d-none d-xl-inline-block user-dropdown">
              <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <img class="img-xs rounded-circle" src="../Temp/assets/images/faces/face8.jpg" alt="Profile image"> </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                <div class="dropdown-header text-center">
                  <img class="img-md rounded-circle" src="../Temp/assets/images/faces/face8.jpg" alt="Profile image">
                  <p class="mb-1 mt-3 font-weight-semibold">Admin</p>
                  <p class="font-weight-light text-muted mb-0">admin@gmail.com</p>
                </div>
                <a class="dropdown-item" href="Login.aspx">Sign Out<i class="dropdown-item-icon ti-power-off"></i></a>
              </div>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="profile-image">
                  <img class="img-xs rounded-circle" src="../Temp/assets/images/faces/face8.jpg" alt="profile image">
                  <div class="dot-indicator bg-success"></div>
                </div>
                <div class="text-wrapper">
                  <p class="profile-name">Admin</p>
                  
                </div>
              </a>
            </li>
            <li class="nav-item nav-category">Main Menu</li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                <i class="menu-icon typcn typcn-document-text"></i>
                <span class="menu-title">Dashboard</span>
              </a>
            </li>
           
           
          
            <li class="nav-item">
              <a class="nav-link" href="#">
                <i class="menu-icon typcn typcn-user-outline"></i>
                <span class="menu-title">All Users</span>
              </a>
            </li>
           
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <!-- Page Title Header Starts-->

            <div class="row">
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Personal info</h4>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">First Name</label>
                            <div class="col-sm-9">
                    <asp:HiddenField ID="hdnCustomerID" runat="server" Value="0" />
                    <asp:TextBox ID="txtFirstName" runat="server" TabIndex="1" MaxLength="50" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Last Name</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtLastName" runat="server" TabIndex="2" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Gender</label>
                            <div class="col-sm-9">
                              <select class="form-control">
                                <option>Male</option>
                                <option>Female</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Date of Birth</label>
                            <div class="col-sm-9">
                                                    <asp:TextBox ID="txtBirthDate" runat="server" TabIndex="3" MaxLength="10" CssClass="form-control" placeholder="dd/mm/yyyy"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqBirthDate" runat="server" ControlToValidate="txtBirthDate" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regBirthDate" runat="server" ControlToValidate="txtBirthDate" ErrorMessage="Not a valid date, shoud be in DD/MM/YYYY" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-/.](0[1-9]|1[012])[-/.](19|20)\d\d$" CssClass="text-danger"></asp:RegularExpressionValidator>

                           </div>
                          </div>
                        </div>
                      </div>
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Address</label>
                            <div class="col-sm-9">
                    <asp:TextBox ID="txtAddress" runat="server" TabIndex="5" MaxLength="100" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Email address</label>
                            <div class="col-sm-9">
                    <asp:TextBox ID="txtEmail" runat="server" TabIndex="4" MaxLength="320" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Not a valid email" Display="Dynamic" SetFocusOnError="true" ValidationGroup="vgSave" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" CssClass="text-danger"></asp:RegularExpressionValidator>
                            </div>
                          </div>
                        </div>
                      </div>
                      <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" ValidationGroup="vgSave" TabIndex="7" CssClass="btn btn-success" />
                            <a id="btnCancel" class="col-md-offset-2 btn btn-primary" tabindex="8">Cancel</a>

                  </div>
                </div>
              </div>
            </div>



     <div class="row">
            <div class="col-md-12">
                <div class="col-md-6">
                    <div class="form-group">
                        <div class="col-md-4">
                        </div>
                        <div class="col-md-8">
<%--                            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" ValidationGroup="vgSave" TabIndex="7" CssClass="btn btn-success" />
                            <a id="btnCancel" class="col-md-offset-2 btn btn-primary" tabindex="8">Cancel</a>--%>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                </div>
            </div>
        </div>
    <div id="divGrid" runat="server" class="table-responsive">
        <asp:GridView ID="grdCustomer" runat="server" AutoGenerateColumns="False" OnRowCommand="grdCustomer_RowCommand" OnRowDataBound="grdCustomer_RowDataBound" OnSelectedIndexChanged="grdCustomer_SelectedIndexChanged" CssClass="table table-bordered" HeaderStyle-CssClass="bg-primary">
            <Columns>
                <asp:TemplateField HeaderText="First Name">
                    <AlternatingItemTemplate>
                        <asp:HiddenField ID="hdnCustomerID" runat="server" Value='<%# Bind("CustomerID") %>' />
                        <asp:LinkButton ID="lnkFirstName" runat="server" Text='<%# Bind("FirstName") %>' CommandName="SELECT"></asp:LinkButton>
                    </AlternatingItemTemplate>
                    <ItemTemplate>
                        <asp:HiddenField ID="hdnCustomerID" runat="server" Value='<%# Bind("CustomerID") %>' />
                        <asp:LinkButton ID="lnkFirstName" runat="server" Text='<%# Bind("FirstName") %>' CommandName="SELECT"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name">
                    <AlternatingItemTemplate>
                        <asp:HyperLink ID="hypLastName" runat="server" Text='<%#Bind("LastName") %>' NavigateUrl='<%#String.Format("~/CustomerDetails.aspx?Id={0}",Eval("CustomerID")) %>'></asp:HyperLink>
                    </AlternatingItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="hypLastName" runat="server" Text='<%#Bind("LastName") %>' NavigateUrl='<%#String.Format("~/CustomerDetails.aspx?Id={0}",Eval("CustomerID")) %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Birth Date">
                    <AlternatingItemTemplate>
                        <asp:Label ID="lblBirthDate" runat="server" Text='<%# Bind("BirthDate","{0:dd/MM/yyyy}") %>'></asp:Label>
                    </AlternatingItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblBirthDate" runat="server" Text='<%# Bind("BirthDate","{0:dd/MM/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <AlternatingItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </AlternatingItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <AlternatingItemTemplate>
                        <asp:Label ID="lblAddress" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </AlternatingItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblAddress" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit | Delete">
                    <AlternatingItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%# Container.DataItemIndex %>' CommandName="EDT" Text="Edit"></asp:LinkButton>
                        |
                        <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%# Container.DataItemIndex %>' CommandName="DLT" Text="Delete"></asp:LinkButton>
                    </AlternatingItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%# Container.DataItemIndex %>' CommandName="EDT" Text="Edit"></asp:LinkButton>
                        | 
                        <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%# Container.DataItemIndex %>' CommandName="DLT" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

            <HeaderStyle CssClass="bg-primary"></HeaderStyle>
        </asp:GridView>
    </div>
    <div id="divNoRecords" runat="server" class="show alert alert-danger fade in">
        <strong>Sorry! </strong>No Record(s) found.
    </div>

<%--    <script type="text/javascript">
        $(document).ready(function () {
            $('#aCustomer').parent().addClass('active');

            $('#<%=txtFirstName.ClientID%>').focus();
            $('#btnCancel').click(function () {
                $('#<%=txtFirstName.ClientID%>').focus();
                $('#<%=hdnCustomerID.ClientID%>').val('0');
                $('#<%=txtFirstName.ClientID%>').val('');
                $('#<%=txtLastName.ClientID%>').val('');
                $('#<%=txtBirthDate.ClientID%>').val('');
                $('#<%=txtEmail.ClientID%>').val('');
                $('#<%=txtAddress.ClientID%>').val('');
            });
        });
    </script>--%>
            <!-- Page Title Header Ends-->
            
           
            
            
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="container-fluid clearfix">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019. All rights reserved.</span>
          
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
     </form>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../Temp/assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../Temp/assets/vendors/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../Temp/assets/js/shared/off-canvas.js"></script>
    <script src="../Temp/assets/js/shared/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../Temp/assets/js/demo_1/dashboard.js"></script>
    <!-- End custom js for this page-->
  </body>
</html>