<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Student_Clinic01.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB;">
                <div class="card-body">
                    <h2 class="text-center">Login</h2><br />
                    <div class="form-group">
                        <label for="txtStudentNumber">Student Number:</label>
                        <asp:TextBox ID="txtStudentNumber" runat="server" CssClass="form-control"></asp:TextBox>
                    </div><br />
                    <div class="form-group">
                        <label for="txtPassword">Password:</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div><br /> <br />
                    <div class="d-flex justify-content-between">
                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="btnLogin_Click" />
                        <asp:Button ID="btnSignUp" runat="server" CssClass="btn btn-secondary" Text="Sign Up" PostBackUrl="~/SignUp.aspx" />
                    </div>
                </div>
            </div>
             <a href="Adminlogin.aspx"> << Admin LogIn</a><br /><br />
        </div>
    </div>
</div>

</asp:Content>
