<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MedilapFinal.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Carousel -->
    <section class="hero-area">
        <div class="section__bg"></div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7">
                    <br />
                    <br />
                    <div class="hero-content">
                        <h1 class="title">Find Medicines Easily In Your City</h1>
                        <br />
                        <asp:LinkButton class="main-btn main-btn-2" ID="LinkButton" runat="server" OnClick="LinkButton_Click">Search Medicine</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Carousel -->

    <!-- About Us -->
    <section class="overview-area pb-100">
        <div class="container">
            <div class="row">

                <div class="col-lg-6">
                    <div class="overview-content">
                        <img src="assets/images/hero-line.png" alt="">
                        <span>overview</span>
                        <h3 class="title">About our company insight</h3>
                        <p>Founded in 2020, MediLap is an online medicine search web application. This application allows a visitor to search for a medicine and addresses of medical stores (wholesale and retail sales) where the medicine is available in their city.</p>
                        <asp:LinkButton class="main-btn" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">About Us</asp:LinkButton>
                        <div class="brand-item d-flex align-items-center mt-70"></div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="overview-counter-area">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="overview-counter-item mt-10">
                                    <div class="icon">
                                        <img src="assets/images/overview-1.png" alt="">
                                    </div>
                                    <h3 class="title count">45654</h3>
                                    <span>Total Searches Till Now</span>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-6">
                                <div class="overview-counter-item mt-10">
                                    <div class="icon">
                                        <img src="assets/images/overview-2.png" alt="">
                                    </div>
                                    <h3 class="title count">79</h3>
                                    <span>Medical Stores In City</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Us -->

</asp:Content>
