<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Student_Clinic01.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Navbar Start -->
<div class="container-fluid sticky-top bg-white shadow-sm">
    <div class="container">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">
            <a href="Default.aspx" class="navbar-brand">
                <h1 class="m-0 text-uppercase text-primary"><i class="fa fa-clinic-medical me-2"></i>Student Clinic</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <a href="Default.aspx" class="nav-item nav-link active">Home</a>
                    <a href="About.aspx" class="nav-item nav-link">About</a>
                    <a href="Contact.aspx" class="nav-item nav-link">Contact</a>
                    <a href="Login.aspx" class="nav-item nav-link">Login</a>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Navbar End -->

    <!-- Hero Start -->
<div class="container-fluid bg-primary py-5 mb-5 hero-header">
    <div class="container py-5">
        <div class="row justify-content-start">
            <div class="col-lg-8 text-center text-lg-start">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5" style="border-color: rgba(256, 256, 256, .3) !important;">Welcome To Student Clinic App</h5>
                <h1 class="display-1 text-white mb-md-4">Best Healthcare Solution In Your Campus</h1>
                <div class="pt-2">
                    <a href="#" class="btn btn-light rounded-pill py-md-3 px-md-5 mx-2">Find Doctor</a>
                    <a href="#" class="btn btn-outline-light rounded-pill py-md-3 px-md-5 mx-2">Appointment</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Hero End -->

<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Operational Hour</h5>
                    <hr>
                    <p class="card-text"> Monday-Friday: 07:30 - 18:00 Saturday: 08:00 - 16:00 Sunday: 08:00 - 15:00 We're here to meet your healthycare needs. </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Our Services</h5>
                    <hr>
                    <p class="card-text">We offer medical consultations,urgent care,immunizations,counseling,specialist referrals.From metal well-being to physical health.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Advanced Technology</h5>
                    <hr>
                    <p class="card-text">Our clinic uses advanced technology to provide the best care to our patients, ensuring accurate diagnoses and effective treatments.</p>
                </div>
            </div>
        </div>
    </div>
</div>


</asp:Content>
