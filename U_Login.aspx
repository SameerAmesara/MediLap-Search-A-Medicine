<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="U_Login.aspx.cs" Inherits="MedilapFinal.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="contact-us-area contact-us-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-5">
                    <br />
                    <br />
                    <br />
                    <div class="contact-us-box">
                        <div class="row no-gutters">
                            <div class="col-lg-12">
                                <center>
                                    <img width="125px" src="assets/images/user.png" />
                                    <h3 class="title">User Login</h3>
                                </center>
                            </div>
                        </div>

                        <br />

                        <div class="row no-gutters">
                            <div class="col-lg-12">
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" placeholder="Account Type">
                                    <asp:ListItem Text="Account Type" Value="select" />
                                    <asp:ListItem Text="User" Value="User" />
                                    <asp:ListItem Text="Medical Store" Value="Medical Store" />
                                </asp:DropDownList>
                            </div>
                        </div>

                        <br />

                        <div class="row no-gutters">
                            <div class="col-lg-12">
                                <div class="input-box mt-10">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User ID" ForeColor="White"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br />

                        <div class="row no-gutters">
                            <div class="col-lg-12">
                                <div class="input-box mt-10">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br />

                        <div class="row no-gutters">
                            <div class="col-lg-12">
                                <div class="input-box mt-10">
                                    <center><asp:LinkButton ID="LinkButton2" runat="server" BackColor="Black" BorderColor="Black" ForeColor="White" OnClick="LinkButton2_Click" >Forgot Password ?</asp:LinkButton></center>
                                </div>
                            </div>
                        </div>

                        <br />

                        <div class="row no-gutters">
                            <div class="col-lg-12">
                                <div class="input-box mt-10">
                                    <asp:LinkButton class="main-btn btn-block" ID="LinkButton3" Font-Size="X-Large" runat="server" OnClick="LinkButton3_Click">Login</asp:LinkButton>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-lg-7">
                    <br />
                    <br />
                    <br />
                    <div class="contact-us-box">

                        <div class="row no-gutters">
                            <br />
                            <div class="col-lg-12">
                                <br />
                                <center>
                                <h1>User Registration</h1>
                                <p>
                                    Want to Have Medicines on the tip of your fingers ?<br />
                                    Pre-book your Medicines and avail great Discounts.<br />
                                    Register to get all these facilities.
                                </p>
                                </center>
                            </div>
                            <div class="col-lg-12">
                                <asp:LinkButton class="main-btn btn-lg btn-block" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign Up</asp:LinkButton>
                            </div>
                        </div>

                        <div class="row no-gutters">
                            <hr />
                        </div>
                        <div class="row no-gutters">
                            <hr />
                        </div>
                        <div class="row no-gutters">
                            <hr />
                        </div>

                        <div class="row no-gutters">
                            <div class="col-lg-12">
                                <center>
                                <h1>Medical Store Registration</h1>
                                <p>
                                    Do you have a Medical Store and want to take it online?<br />
                                    Handle your Database and Business remotely with MediLap.<br />
                                    Register to get all these facilities.
                                </p>
                                </center>
                            </div>
                            <div class="col-lg-12">
                                <asp:LinkButton class="main-btn btn-lg btn-block" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Sign Up</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
