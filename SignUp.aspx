<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Student_Clinic01.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB;">
                <div class="card-body">
                    <h2 class="text-center">Sign Up</h2><br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="txtStudentNumber">Student Number:</label>
                                <asp:TextBox ID="txtStudentNumber" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="txtUsername">Username:</label>
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div><br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="txtEmail">Email:</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="txtCellNumber">Cell Number:</label>
                                <asp:TextBox ID="txtCellNumber" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div><br />
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="txtPassword">Password:</label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" ReadOnly="False" ClientIDMode="Inherit"></asp:TextBox>
                            </div>
                        </div>

                    </div><br /><br />
                    <div class="d-flex justify-content-between">
                        <asp:Button ID="btnSignUp" runat="server" CssClass="btn btn-primary" Text="Sign Up" OnClick="btnSignUp_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>
