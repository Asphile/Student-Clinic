<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Student_Clinic01.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"> 
    <div class="row"> 
        <div class="col-md-8 mx-auto"> 
            <div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB;"> 
                <div class="card-body"> 
                    <h2 class="text-center">Place Appointment</h2> 
                    <div class="row"> 
                        <div class="col-md-6"> 
                            <div class="form-group"> 
                                <label for="txtUsername">Username:</label> 
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox> 
                            </div> 
                        </div> 
                        <div class="col-md-6"> 
                            <div class="form-group"> 
                                <label for="txtLastName">Last Name:</label> 
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox> 
                            </div> 
                        </div> 
                    </div><br /> 
                    <div class="row"> 
                        <div class="col-md-6"> 
                            <div class="form-group"> 
                                <label for="ddlGender">Gender:</label> 
                                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control"> 
                                    <asp:ListItem Value="">Select Gender</asp:ListItem> 
                                    <asp:ListItem Value="Male">Male</asp:ListItem> 
                                    <asp:ListItem Value="Female">Female</asp:ListItem> 
                                    <asp:ListItem Value="Other">Other</asp:ListItem> 
                                </asp:DropDownList> 
                            </div> 
                        </div> 
                        <div class="col-md-6"> 
                            <div class="form-group"> 
                                <label for="txtEmail">Email:</label> 
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox> 
                            </div> 
                        </div> 
                    </div><br /> 
                    <div class="row"> 
                        <div class="col-md-6"> 
                            <div class="form-group"> 
                                <label for="ddlAppointmentType">Appointment Type:</label> 
                                <asp:DropDownList ID="ddlAppointmentType" runat="server" CssClass="form-control"> 
                                    <asp:ListItem Value="">Select Appointment Type</asp:ListItem> 
                                    <asp:ListItem Value="Checkup">Checkup</asp:ListItem> 
                                    <asp:ListItem Value="Consultation">Consultation</asp:ListItem> 
                                    <asp:ListItem Value="Follow-up">Follow-up</asp:ListItem> 
                                </asp:DropDownList> 
                            </div> 
                        </div> 
                        <div class="col-md-6"> 
                            <div class="form-group"> 
                                <label for="txtDate">Date:</label> 
                                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox> 
                            </div> 
                        </div> 
                    </div><br /> 
                    <div class="row"> 
                       <div class="col-md-6">
    <div class="form-group">
        <label for="ddlNurse">Nurse:</label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
            <asp:ListItem Value="">Select Doctor</asp:ListItem>
            </asp:DropDownList>
        <div class="col-md-6"> 
                      <div class="form-group"> 
                         <label for="ddlNurse">Nurse:</label> 
                          <asp:DropDownList ID="ddlNurse" runat="server" CssClass="form-control"> 
                          <asp:ListItem Value="">Select Nurse</asp:ListItem> 
                              <asp:ListItem Value="Sibusiso Dlamini">Sibusiso Dlamini</asp:ListItem> 
                                 <asp:ListItem Value="Nandi Mthembu">Nandi Mthembu</asp:ListItem> 
                                      <asp:ListItem Value="Lindiwe Mkhize">Lindiwe Mkhize</asp:ListItem> 
            <asp:ListItem Value="Thembi Ngcobo">Thembi Ngcobo</asp:ListItem> 
            <asp:ListItem Value="Phindiwe Mahlangu">Phindiwe Mahlangu</asp:ListItem> 
            <asp:ListItem Value="Ntombi Msimango">Ntombi Msimango</asp:ListItem> 
        </asp:DropDownList> 
    </div> 
</div>

                            </div>
                        </div>
                    </div><br />
                    <asp:Button ID="btnPlaceAppointment" runat="server" CssClass="btn btn-primary" Text="Place Appointment" OnClick="btnPlaceAppointment_Click" />
                </div>
            </div>          
        </div>
    </div>
</div>
 <a href="check.aspx"> << check the List</a>
      
      
</asp:Content>
