<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="workView.aspx.cs" Inherits="Student_Clinic01.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <div class="card">

                <div class="card-body">
                             <h2 class="text-center">Student Information</h2>
                                    <hr />
                    <div class="row">
                        <div class="col-md-4">
                            <label>Member ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="txtMemberID" runat="server" placeholder="Member ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Full Name</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txtFullName" runat="server" placeholder="Full Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <label>Account Status</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="txtAccountStatus" runat="server" placeholder="Account Status" ReadOnly="True"></asp:TextBox>
                                    <asp:LinkButton class="btn btn-success" ID="lnkActive" runat="server" Text="S" OnClick="lnkActive_Click"><i class="fa fa-check-circle" aria-hidden="true"></i></asp:LinkButton>
                                    <asp:LinkButton class="btn btn-warning" ID="lnkPending" runat="server" Text="W" OnClick="lnkPending_Click"><i class="fa fa-times-circle" aria-hidden="true"></i></asp:LinkButton>
                                    <asp:LinkButton class="btn btn-danger" ID="lnkInactive" runat="server" Text="D" OnClick="lnkInactive_Click"><i class="fa fa-window-close" aria-hidden="true"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>
                </div><br /><br />

    </div>
</div><br /><br />

                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">

                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student_clinicConnectionString %>" SelectCommand="SELECT * FROM [Appointments]"></asp:SqlDataSource>
                                               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Appointment_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                                   <AlternatingRowStyle BackColor="White" />
                                                   <Columns>
                                                       <asp:BoundField DataField="Appointment_id" HeaderText="Appointment_id" InsertVisible="False" ReadOnly="True" SortExpression="Appointment_id" />
                                                       <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                                       <asp:BoundField DataField="Last_name" HeaderText="Last_name" SortExpression="Last_name" />
                                                       <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                                       <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                                       <asp:BoundField DataField="Appointment_type" HeaderText="Appointment_type" SortExpression="Appointment_type" />
                                                       <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                       <asp:BoundField DataField="Doctor" HeaderText="Doctor" SortExpression="Doctor" />
                                                       <asp:BoundField DataField="Nurse" HeaderText="Nurse" SortExpression="Nurse" />
                                                       <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                                   </Columns>
                                                   <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                   <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                   <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                   <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                                   <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                                   <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                                   <SortedDescendingHeaderStyle BackColor="#820000" />
                                        </asp:GridView>
                                    
                             </div>
                    </div>
            </div>
        </div>

</asp:Content>
