<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Career_Page.aspx.cs" Inherits="CGI_Practical_Exam_Tamondong.Web_Page.Career_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        body {
            background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.5)), url(../../../Assets/Images/Career_Page/Background.jpg);
            background-size: cover;
            background-attachment: fixed;
            background-position: center center;
            -webkit-background-size: cover;
            background-repeat: no-repeat;
            width: 100%;
            height: 100vh;
        }


        /* ----- Career Page | Active ----- */
        li a:hover:not(.career_active) {
            background-color: #111;
        }

        .career_active {
            background: -webkit-linear-gradient(#FDFC47, #24FE41);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /*Accommodation Item Grid*/
        .grid{
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
            grid-gap: 2.5rem;
            padding-top: 5%
        }

        .grid-item{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .background_card{
            background: rgb(0,0,0,0.4);
        }

        @media (min-width: 1025px) {
        .h-custom {
        height: 100vh !important;
        }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row p-4">
        <div class="col-md-8 h-75">
            <div class="card background_card">
                <div class="card-header">
                    <asp:DropDownList ID="DDL_Category" runat="server" CssClass="form-control" AutoPostBack="True">
                        <asp:ListItem Value="Certifications">Licenses &amp; Certifications</asp:ListItem>
                        <asp:ListItem Value="Trainings">Trainings &amp; Seminars</asp:ListItem>
                        <asp:ListItem Value="Awards">Honor &amp; Awards</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="card-body">
                    <div class="row">
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="MyDatabase_DataSource" RepeatDirection="Horizontal" CssClass="grid" OnItemCommand="Career_ItemCommand">
                            <ItemTemplate>
                                <div class="card grid-item m-2">
                                  <div class="card-body">
                                    <div class="d-flex p-2" style="justify-content:center; align-items:center;">
                                        <i class="fa-solid fa-certificate" style="font-size: 50px;"></i>
                                    </div>
                                    <div class="p-2" style="justify-content:center; align-items:center; text-align:center;">
                                        <h5 class="card-title"><%# Eval("Name") %></h5>
                                        <h6 class="card-subtitle mb-2 text-muted"><%# Eval("Organization") %></h6>
                                        <div class="d-flex" style="text-align: center; justify-content: center;">
                                            <p><%# Eval("Target_Date", "{0:d}") %></p> -
                                            <p><%# Eval("Completed_Date", "{0:d}") %></p>
                                        </div>
                                        <p class="card-text mb-3"><%# Eval("Description") %></p>
                                    </div>
                                    <div>
                                        <asp:Button ID="BTN_Select" runat="server" CssClass="btn btn-outline-primary form-control" Text="Select" CommandArgument='<%# Eval("ID") %>' CommandName="career" />
                                    </div>
                                  </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="MyDatabase_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabase %>" SelectCommand="SELECT [ID], [Name], [Organization], [Description], [Target_Date], [Completed_Date] FROM [Careers] WHERE ([Category] = @Category)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DDL_Category" Name="Category" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 h-75">
            <div class="card background_card">
            <asp:DataList ID="DataList2" runat="server" DataKeyField="ID" DataSourceID="MyDatabase_DataSource2">
                <ItemTemplate>
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-4 d-flex" style="align-items:center; justify-content:center;">
                            <i class="fa-solid fa-certificate" style="font-size: 100px; color: #fff"></i>
                        </div>
                        <div class="col-md-8">
                            <div class="p-2">
                                <h5 class="card-title text-white"><%# Eval("Name") %></h5>
                                <h6 class="card-subtitle mb-2 text-white-50"><%# Eval("Organization") %></h6>
                                <div class="d-flex text-white-50">
                                    <p class="text-white-50"><%# Eval("Target_Date","{0:d}") %></p> -
                                    <p class="text-white-50"><%# Eval("Completed_Date","{0:d}") %></p>
                                </div>
                                <p class="card-text text-white-50 mb-3"><%# Eval("Description") %></p>
                            </div>
                        </div>
                    </div>
                </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="MyDatabase_DataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabase %>" SelectCommand="SELECT * FROM [Careers] WHERE ([ID] = @ID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
                <div class="card-body text-white">
                    <div class="form-group mb-2">
                        <label class="mb-1" for="exampleFormControlInput1">Title</label>
                        <asp:TextBox ID="TxtBox_Title" runat="server" class="form-control" placeholder="Enter Title"></asp:TextBox>
                    </div>
                    <div class="form-group mb-2">
                        <label class="mb-1" for="exampleFormControlInput1">Organization</label>
                        <asp:TextBox ID="TxtBox_Organization" runat="server" class="form-control" placeholder="Enter Organization"></asp:TextBox>
                    </div>
                    <div class="form-group mb-2">
                        <label class="mb-1" for="exampleFormControlInput1">Category</label>
                        <asp:DropDownList ID="DDL_Category2" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Certifications">Licenses &amp; Certifications</asp:ListItem>
                            <asp:ListItem Value="Trainings">Trainings &amp; Seminars</asp:ListItem>
                            <asp:ListItem Value="Awards">Honor &amp; Awards</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-6">
                            <label class="mb-1" for="exampleFormControlInput1">Start Date</label>
                            <asp:TextBox ID="TxtBox_Date1" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <label class="mb-1" for="exampleFormControlInput1">End Date</label>
                            <asp:TextBox ID="TxtBox_Date2" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group mb-5">
                        <label class="mb-1" for="exampleFormControlTextarea1">Description</label>
                        <asp:TextBox ID="TxtBox_Description" runat="server" class="form-control" rows="3" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="form-group m-3">
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Button ID="BTN_Add" runat="server" class="form-control btn btn-success" Text="Add" OnClick="Add_Career" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="BTN_Update" runat="server" class="form-control btn btn-primary" Text="Update" OnClick="Update_Career" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="BTN_Delete" runat="server" class="form-control btn btn-danger" Text="Delete" OnClick="Delete_Career"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>  