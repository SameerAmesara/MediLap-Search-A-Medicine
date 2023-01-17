<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="MedilapFinal.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-title-area">
        <div class="section__bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-content text-center">
                        <h3 class="title">Contact Us</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Contact Us</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="contact-us-area contact-us-page">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <br />
                    <br />
                    <div class="contact-us-box">
                        <div class="row no-gutters">
                            <div class="col-lg-5">
                                <div class="input-box mt-10">
                                    <h3 class="title">Find Us At</h3>
                                    <p>
                                        Faculty of Technology and Engineering,<br />
                                        Maharaja Sayajirao University of Baroda<br />
                                        Kalabhavan, Rajmahal Road,<br />
                                        Nr. Kirtistambh,<br />
                                        Vadodara, Gujarat - 390001
                                    </p>
                                    <br />
                                    <h3 class="title">Contact Us At</h3>
                                    <i class="fal fa-phone"></i> Sameer Amesara : +91 81605 42972 <br />
                                    <i class="fal fa-phone"></i> Soham Patel : +91 99095 99185 <br />
                                    <br />
                                    <h3 class="title">Mail Us At</h3>
                                    <p><i class="fal fa-envelope"></i>info.medilap007@gmail.com</p>
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="input-box mt-10">
                                    <h3 class="title">Get in Touch</h3>
                                    <p>Give us a call or drop by anytime, we endeavour to
                                        <br>
                                        answer all enquiries within 24 hours.</p>
                                    <div class="row no-gutters">
                                        <div class="col-lg-6">
                                            <div class="input-box mt-10">
                                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name" ForeColor="White"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="input-box mt-10">
                                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Email Address" TextMode="Email" ForeColor="White"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <br />

                                    <div class="row no-gutters">
                                        <div class="col-lg-6">
                                            <div class="input-box mt-10">
                                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact" TextMode="Phone" ForeColor="White"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="input-box mt-10">
                                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Location" ForeColor="White"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row no-gutters">
                                        <div class="col-lg-12">
                                            <div class="input-box mt-10">
                                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Your Message" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row no-gutters">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <asp:LinkButton class="main-btn btn-block btn-xl" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Send Message</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
        </div>
    </section>

</asp:Content>
