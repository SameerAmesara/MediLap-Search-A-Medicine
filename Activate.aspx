<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Activate.aspx.cs" Inherits="MedilapFinal.Activate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="contact-us-area contact-us-page">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-9">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="contact-us-box">
                        <div class="row no-gutters">
                            <div class="col-lg-12">
                                <center>
                                    
                                    <h3 class="title">Verify Account</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row no-gutters">
                            <div class="col-lg-12">
                                <div class="input-box mt-10">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Verfication Code" ForeColor="White"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br />
                        <div class="row no-gutters">
                            <div class="col-lg-12">
                                <div class="input-box mt-10">
                                    <asp:LinkButton class="main-btn btn-block btn-lg" ID="LinkButton3" Font-Size="X-Large" runat="server" OnClick="LinkButton3_Click">Verify</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
