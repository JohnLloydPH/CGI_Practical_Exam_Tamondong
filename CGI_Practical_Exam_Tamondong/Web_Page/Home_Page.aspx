<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="CGI_Practical_Exam_Tamondong.Web_Page.Home_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        body {
            background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(../../../Assets/Images/Home_Page/Background.jpg);
            background-size: cover;
            background-attachment: fixed;
            background-position: center center;
            -webkit-background-size: cover;
            background-repeat: no-repeat;
            width: 100%;
            height: 100vh;
        }

        /* ----- Home Page | Active ----- */
        li a:hover:not(.home_active) {
            background-color: #111;
        }

        .home_active {
            background: -webkit-linear-gradient(#FDFC47, #24FE41);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .background {
            margin: 50px;
            background: rgba(0, 0, 0, 0.5);
        }

        /* About Me ---------------------*/
        @media (max-width: 991px) {
          .about-text {
            margin-top: 40px;
          }
        }
        .about-text h3 {
          font-size: 45px;
          font-weight: 700;
          margin: 0 0 10px;
        }
        @media (max-width: 767px) {
          .about-text h3 {
            font-size: 35px;
          }
        }
        .about-text h4 {
          font-weight: 600;
          margin-bottom: 15px;
        }
        @media (max-width: 767px) {
          .about-text h4 {
            font-size: 18px;
          }
        }
        .about-text p {
          font-size: 18px;
        }
        .about-text p mark {
          font-weight: 600;
          color: #3a3973;
        }
        .about-text .btn-bar {
          padding-top: 8px;
        }
        .about-text .btn-bar a {
          min-width: 150px;
          text-align: center;
          margin-right: 10px;
        }

        .about-list {
          padding-top: 10px;
        }
        .about-list .media {
          padding: 5px 0;
        }
        .about-list label {
          color: #3a3973;
          font-weight: 600;
          width: 88px;
          margin: 0;
          position: relative;
        }
        .about-list label:after {
          content: "";
          position: absolute;
          top: 0;
          bottom: 0;
          right: 11px;
          width: 1px;
          height: 12px;
          background: #3a3973;
          -moz-transform: rotate(15deg);
          -o-transform: rotate(15deg);
          -ms-transform: rotate(15deg);
          -webkit-transform: rotate(15deg);
          transform: rotate(15deg);
          margin: auto;
          opacity: 0.5;
        }
        .about-list p {
          margin: 0;
          font-size: 15px;
        }

        .about-img {
          box-shadow: 0 5px 14px 0 rgba(0, 0, 0, 0.06);
          padding: 10px;
          background: #ffffff;
        }
        @media (max-width: 991px) {
          .about-img {
            margin-top: 30px;
          }
        }

        .counter-section {
          padding: 40px 20px;
        }
        .counter-section .count-data {
          margin-top: 10px;
          margin-bottom: 10px;
        }
        .counter-section .count {
          font-weight: 700;
          color: #ffffff;
          margin: 0 0 10px;
        }
        .counter-section p {
          font-weight: 500;
          margin: 0;
          color: #fe4f6c;
        }
        .theme-color {
            background: -webkit-linear-gradient(#FDFC47, #24FE41);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .section {
            padding: 50px 0;
            position: relative;
        }

        .px-btn.theme {
            background: #fe4f6c;
            color: #ffffff;
            border: 2px solid #fe4f6c;
        }
        .px-btn {
            padding: 0 20px;
            line-height: 42px;
            border: 2px solid transparent;
            position: relative;
            display: inline-block;
            background: none;
            border: none;
            -moz-transition: ease all 0.35s;
            -o-transition: ease all 0.35s;
            -webkit-transition: ease all 0.35s;
            transition: ease all 0.35s;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 500;
        }

        .px-btn.theme-t {
            background: transparent;
            border: 2px solid #fe4f6c;
            color: #fe4f6c;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="section about-section background">
    <div class="container">
        <div class="row align-items-center justify-content-around flex-row-reverse">
            <div class="col-lg-6">
                <div class="about-text">
                    <h3 class="text-light">John Lloyd N. Tamondong</h3>
                    <h4 class="theme-color">Information Technology</h4>
                    <p class="text-light">I am fresh college graduate currently looking for full-time IT position. I want to perform well
                    the skills and knowledge that I have cultivated in my years of study. Moreover, I am willing
                    to learn more and educate myself to be with the company that strives to achieve success.
                    I am excited to work with other professionals and live in a corporate world.</p>
                </div>
            </div>
            <div class="col-lg-5 text-center">
                <div class="about-img">
                    <img src="../Assets/Images/Home_Page/Profile.jpg" alt="Profile" width="450px">
                </div>
            </div>
        </div>
    </div>
</section>

    <div class="card m-5 text-center text-white" style="background: rgba(0, 0, 0, 0.5);">
        <div class="row" style="text-align: left;">
          <div class="col-md-4" >
            <div class="p-3" style="height: 70%; overflow: hidden;">
              <img src="../Assets/Images/Home_Page/Education1.jpg" alt="DLSU-D" style="width:100%; object-fit:cover;">
            </div>
          </div>
          <div class="col-md-4">
            <div class="p-3" style="height: 70%; overflow: hidden;">
              <img src="../Assets/Images/Home_Page/Education2.jpg" alt="STI" style="width:100%; object-fit:cover;">
            </div>
          </div>
          <div class="col-md-4">
            <div class="pt-5 pb-5">
              <h4>Educational Background</h4>
              <div>
                <p>
                  <b>Bachelor of Science in Information and Technology (2022)</b></br>
                  De La Salle University – Dasmariñas </br>
                  Dasmariñas City, Cavite </br>
                </p>
                <p>
                  <b>Senior High School (2018)</b></br>
                  STI College – Dasmariñas </br>
                  Dasmariñas City, Cavite </br>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="card m-5 text-center text-white" style="background: rgba(0, 0, 0, 0.5);">
        <div class="row" style="text-align: left;">
          <div class="col-md-4">
            <div class="pt-5 pb-5" style="padding-left: 50px;">
              <h4>Work Experience</h4>
              <p>
                <b>IT Software Developer</b> </br>
                March 11, 2022 – June 16, 2022 </br>
                REFAMED Research Laboratory </br>
                Corporation - Internship </br>
                Carmona, Calabarzon, Philippines </br>
              </p>
  
              <p>
                <b>Encoder</b> </br>
                February 5, 2018 – February 28, 2018 </br>
                Asia Medic Family Hospital and Medical </br>
                Center - Internship </br>
                Dasmariñas City, Philippines </br>
              </p>
            </div>
          </div>
          <div class="col-md-4" >
            <div class="p-3" style="height: 70%; overflow: hidden;">
              <img src="../Assets/Images/Home_Page/Internship1.jpg" alt="STI" style="width:100%; object-fit:cover;">
            </div>
          </div>
          <div class="col-md-4" >
            <div class="p-3" style="height: 70%; overflow: hidden;">
              <img src="../Assets/Images/Home_Page/Internship2.jpg" alt="STI" style="width:100%; object-fit:cover;">
            </div>
          </div>
        </div>
      </div>

      <div class="card m-5 text-white" style="background: rgba(0, 0, 0, 0.5);">
        <div class="card-body">
          <h4 class="text-center">Technical Skills</h4>
          <div class="row">
            <div class="col-sm-3">
              <b>Hardware</b>
              <ul>
                <li>Assembly</li>
                <li>Maintenance</li>
                <li>Peripherals</li>
                <li>Drivers</li>
                <li>Troubleshooting</li>
              </ul>
            </div>
            <div class="col-sm-2">
              <b>Operating System</b>
              <ul>
                <li>Windows XP</li>
                <li>Windows 7</li>
                <li>Windows 10</li>
                <li>Linux</li>
                <li>Windows 11</li>
              </ul>
            </div>
            <div class="col-sm-2">
              <b>Programming Languages</b>
              <ul>
                <li>Java</li>
                <li>C#</li>
                <li>C++</li>
                <li>.Net</li>
                <li>SQL</li>
                <li>PHP</li>
                <li>Web Development (HTML,CSS,JavaScript)</li>
              </ul>
            </div>
            <div class="col-sm-3">
              <b>Software</b>
              <ul>
                <li>Installing</li>
                <li>Debugging</li>
                <li>Microsoft Office(Word, Powerpoint)</li>
                <li>Adobe Photoshop</li>
                <li>Filmora</li>
              </ul>
            </div>
            <div class="col-sm-2">
              <b>Framework</b>
              <ul>
                <li>CodeIgniter</li>
                <li>ASP.NET</li>
                <li>Bootstrap</li>
              </ul>
            </div>
          </div>
        </div>
      </div>

</asp:Content>
