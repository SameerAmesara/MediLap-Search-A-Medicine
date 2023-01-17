<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="MedilapFinal.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- BREADCRUMB AREA -->
    <div class="page-title-area2">
        <div class="section__bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-content2 text-center">
                        <h3 class="title">About Us</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">About Us</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA -->

    <!-- ABOUT US AREA -->
    <section class="about-2-area about-5-area">
        <div class="container">

            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="about-2-thumb mt-30">
                        <div class="thumb">
                            <img src="assets/images/doca.png" alt="">
                        </div>
                        <div class="thumb-2 ml-80">
                            <img src="assets/images/doca2.png" alt="">
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-9">
                    <div class="about-5-content">
                        <br />
                        <h3 class="title">About us</h3>
                        <div class="text">
                            <p>Emergency medical services for chronic health problems are depending on the availability of medicines. Most of the times, unavailability of medicines affect the lives of deceased persons. Addresses of medical shops that are providing 24 hours service should be made available to all. </p>
                        </div>
                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active " id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                <div class="text">
                                    <p><span>MediLap</span> is an online medicine search web application. This application allows a visitor to search for a medicine and addresses of medical stores (wholesale and retail sales) where the medicine is available.</p>
                                </div>
                                <h4>Features </h4>
                                <div class="list d-sm-flex d-block">
                                    <ul class="item-1">
                                        <li><a href="#">Fast Search</a></li>
                                        <li><a href="#">Intuitive</a></li>
                                        <li><a href="#">Reliable</a></li>
                                    </ul>
                                    <ul>
                                        <li><a href="#">Exact Location</a></li>
                                        <li><a href="#">Responsive</a></li>
                                        <li><a href="#">Google Maps enabled</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ABOUT US AREA -->

    <!-- SERVICES AREA -->
    <section class="services-5-area about-service-3-area">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="services-title text-center">
                        <h3 class="title">Our Services</h3>
                        <img src="assets/images/hero-line.png" alt="">
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">

                <div class="col-lg-4 col-md-4 col-sm-8">
                    <div class="services-5-item">
                        <div class="sercices-content mt-30">
                            <h4 class="title">Features</h4>
                            <ul>
                                <li>Fast Search</li>
                                <li>Intuitive</li>
                                <li>Reliable</li>
                                <li>Exact Location</li>
                                <li>Responsive</li>
                                <li>Google Maps enabled</li>
                                <li>Easy to use</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-8">
                    <div class="services-5-item">
                        <div class="sercices-thumb mt-30">
                            <img src="assets/images/services-item-2.png" alt="">
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-8">
                    <div class="services-5-item item-3">
                        <div class="sercices-content mt-30">
                            <h4 class="title">Modules</h4>
                            <ul>
                                <li>User</li>
                                <li>Admin</li>
                                <li>Medical Store</li>
                            </ul>
                            <h5 class="title">Technologies</h5>
                            <ul>
                                <li>C# .NET</li>
                                <li>HTML & CSS</li>
                                <li>Javascript</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- SERVICES AREA -->
</asp:Content>
