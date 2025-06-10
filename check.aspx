<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="check.aspx.cs" Inherits="Student_Clinic01.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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
