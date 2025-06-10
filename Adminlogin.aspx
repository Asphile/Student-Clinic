<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="Student_Clinic01.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB;">
                <div class="card-body">
                    <h2 class="text-center">Admin Login</h2><br />
                    <div class="form-group">
                        <label for="txtAdminId">Admin ID:</label>
                        <asp:TextBox ID="txtAdminId" runat="server" CssClass="form-control"></asp:TextBox>
                    </div><br />
                    <div class="form-group">
                        <label for="txtAdminPassword">Password:</label>
                        <asp:TextBox ID="txtAdminPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div><br /><br />
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary btn-block" Text="Login" OnClick="btnLogin_Click" />
                </div>
            </div>

            
        </div>
    </div>
</div>


</asp:Content>
