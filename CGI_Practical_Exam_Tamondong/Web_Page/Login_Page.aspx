<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="CGI_Practical_Exam_Tamondong.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JNT_CGI_Exam | Login Page</title>
    <link rel="icon" type="image/png" href="..\Assets\Icons\MyIcon.png">

    <!--- Bootstrap CDN --->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <style>
        .gradient-custom-2 {
        /* fallback for old browsers */
        background: #FDFC47;

        /* Chrome 10-25, Safari 5.1-6 */
        background: -webkit-linear-gradient(to right, #00FF77, #053D00);

        /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        background: linear-gradient(to right, #00FF77, #053D00);
        }

        @media (min-width: 768px) {
        .gradient-form {
        height: 100vh !important;
        }
        }
        @media (min-width: 769px) {
        .gradient-custom-2 {
        border-top-right-radius: .3rem;
        border-bottom-right-radius: .3rem;
        }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100" style="background-color: #9A616D;">
          <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
              <div class="col col-xl-10">
                <div class="card" style="border-radius: 1rem;">
                  <div class="row g-0">
                    <div class="col-md-6 col-lg-5 d-none d-md-block">
                      <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                        alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                    </div>
                    <div class="col-md-6 col-lg-7 d-flex align-items-center">
                      <div class="card-body p-4 p-lg-5 text-black">

                        <form>

                          <div class="d-flex align-items-center mb-3 pb-1">
                            <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                            <span class="h1 fw-bold mb-0">Logo</span>
                          </div>

                          <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                          <div class="form-outline mb-4">
                            <asp:TextBox ID="TxtBox_Username" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                            <label class="form-label" for="form2Example17">Email address</label>
                          </div>

                          <div class="form-outline mb-4">
                            <asp:TextBox ID="TxtBox_Password" runat="server" class="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                            <label class="form-label" for="form2Example27">Password</label>
                          </div>

                          <div class="pt-1 mb-4">
                            <asp:Button ID="BTN_Login" runat="server" class="btn btn-dark btn-lg btn-block" Text="Login" OnClick="Login_Account"/>
                          </div>

                          <a class="small text-muted" href="#!">Forgot password?</a>
                          <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <asp:LinkButton ID="LinkButton1" runat="server" style="color: #393f81;" PostBackUrl="~/Web_Page/Register_Page.aspx">HyperLink</asp:LinkButton></p>
                          <a href="#!" class="small text-muted">Terms of use.</a>
                          <a href="#!" class="small text-muted">Privacy policy</a>
                        </form>

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
