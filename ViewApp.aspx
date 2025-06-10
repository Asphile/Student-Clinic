<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewApp.aspx.cs" Inherits="Student_Clinic01.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB;">
                <div class="card-body">
                    <h2 class="text-center">Add Worker</h2>
                    <div class="form-group">
                        <label for="txtWorkId">Work ID:</label>
                        <asp:TextBox ID="txtWorkId" runat="server" CssClass="form-control"></asp:TextBox>
                    </div><br />
                    <div class="form-group">
                        <label for="txtWorkName">Work Name:</label>
                        <asp:TextBox ID="txtWorkName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div><br />
                    <div class="form-group">
                        <label for="txtPassword">Password:</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div><br />
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary btn-block" Text="Add" OnClick="btnLogin_Click"/>
                    <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" OnClick="btnDelete_Click" />

                </div>
            </div>  
            <a href="workView.aspx"> << Admin status</a>
        </div>

    </div>
         <br /><br /><br /><br />
       <div class="row">
        <div class="col-md-6 mx-auto">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student_clinicConnectionString %>" SelectCommand="SELECT * FROM [Worker_table]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Work_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="675px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Work_id" HeaderText="Work_id" ReadOnly="True" SortExpression="Work_id" />
                <asp:BoundField DataField="work_name" HeaderText="work_name" SortExpression="work_name" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

          </div>
     </div>
</div>

</asp:Content>
