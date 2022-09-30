<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_Page.aspx.cs" Inherits="CGI_Practical_Exam_Tamondong.Web_Page.Register_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JNT_CGI_Exam | Registration Page</title>

    <!--- Bootstrap CDN --->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <style>
        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }
        .card-registration .select-arrow {
            top: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="h-100 bg-dark">
          <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
              <div class="col">
                <div class="card card-registration my-4">
                  <div class="row g-0">
                    <div class="col-xl-6 d-none d-xl-block">
                      <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                        alt="Sample photo" class="img-fluid"
                        style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                    </div>
                    <div class="col-xl-6">
                      <div class="card-body p-md-5 text-black">
                        <h3 class="mb-5 text-uppercase">Student registration form</h3>

                        <div class="row">
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <asp:TextBox ID="TxtBox_First_Name" runat="server" class="form-control form-control-lg"></asp:TextBox>
                              <label class="form-label" for="form3Example1m">First name</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                               <asp:TextBox ID="TxtBox_Last_Name" runat="server" class="form-control form-control-lg"></asp:TextBox>
                              <label class="form-label" for="form3Example1n">Last name</label>
                            </div>
                          </div>
                        </div>

                        <div class="form-outline mb-4">
                          <asp:TextBox ID="TxtBox_Address" runat="server" class="form-control form-control-lg"></asp:TextBox>
                          <label class="form-label" for="form3Example8">Address</label>
                        </div>

                        <div class="row">
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <asp:TextBox ID="TxtBox_Birthday" runat="server" class="form-control form-control-lg" TextMode="Date"></asp:TextBox>
                              <label class="form-label" for="form3Example1m">Birthday</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <asp:DropDownList ID="DrpDwn_Gender" runat="server" class="form-control form-control-lg">
                                  <asp:ListItem>Male</asp:ListItem>
                                  <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                              <label class="form-label" for="form3Example1n">Gender</label>
                            </div>
                          </div>
                        </div>

                        <div class="form-outline mb-4">
                          <asp:TextBox ID="TxtBox_Email" runat="server" class="form-control form-control-lg"></asp:TextBox>
                          <label class="form-label" for="form3Example99">Email</label>
                        </div>

                        <div class="form-outline mb-4">
                          <asp:TextBox ID="TxtBox_Password" runat="server" class="form-control form-control-lg"></asp:TextBox>
                          <label class="form-label" for="form3Example97">Password</label>
                        </div>

                        <div class="d-flex justify-content-end pt-3">
                          <asp:Button ID="BTN_Reset" runat="server" class="btn btn-light btn-lg" Text="Reset all" />
                          <asp:Button ID="BTN_Submit" runat="server" class="btn btn-warning btn-lg ms-2" Text="Submit form" OnClick="Register_Account" />
                        </div>

                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        <!--- Bootstrap CDN --->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
    </form>
</body>
</html>
